import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'comments.dart';
import 'goals.dart';
import 'profile.dart';
import 'subscriptions.dart';

abstract class PostsRepository {
  Stream<List<PostDto>> posts();

  Stream<PostDto?> byId(String id);

  Future<bool> like(PostDto post);

  Future<bool> unlike(PostDto post);

  Future<void> create({
    required String activityId,
    required String authorId,
    required String goalId,
    String? text,
  });

  Future<void> delete({
    required String activityId,
    required String authorId,
  });
}

@Injectable(as: PostsRepository)
class PostsRepositoryFirestore implements PostsRepository {
  static const String collectionName = 'posts';

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(collectionName);

  late final convertedCollection = collection.withConverter<PostRaw?>(
    fromFirestore: (snapshot, _) =>
        snapshot.data() != null ? PostRaw.fromMap(snapshot.data()!) : null,
    toFirestore: (post, _) => post?.toMap() ?? {},
  );

  final SubscriptionsRepository _subscriptions;
  final AuthRepository _auth;
  final ProfileRepository _profile;
  final GoalsRepository _goals;
  final CommentsRepository _comments;

  PostsRepositoryFirestore(
    this._subscriptions,
    this._auth,
    this._profile,
    this._goals,
    this._comments,
  );

  @override
  Stream<List<PostDto>> posts() async* {
    if (_auth.currentUser == null) {
      yield [];
      return;
    }

    final subIdsStream = _subscriptions.getSubsIds(_auth.currentUser!.uid);

    await for (var subIds in subIdsStream) {
      final postDocsStream = convertedCollection
          .where(PostRaw.authorIdKey,
              whereIn: [...subIds, _auth.currentUser!.uid])
          .snapshots()
          .handleError((e) => print('Error when listening feed posts:\n$e'))
          .map((s) => s.docs);

      await for (var postDocs in postDocsStream) {
        final posts = <PostDto>[];

        for (var postDoc in postDocs) {
          if (postDoc.data() == null) continue;
          var domain = await _toDomain(postDoc.id, postDoc.data()!);
          if (domain == null) continue;
          posts.add(domain);
        }
        posts.sort(_sortComparator);
        yield posts;
      }
    }
  }

  @override
  Stream<PostDto?> byId(String id) async* {
    if (id.isEmpty) yield null;

    yield* convertedCollection
        .doc(id)
        .snapshots()
        .handleError(
            (e) => print('Error when listening feed post by id $id:\n$e'))
        .asyncMap((doc) async {
      final data = doc.data();
      return data == null ? null : await _toDomain(id, data);
    });
  }

  @override
  Future<void> create({
    required String activityId,
    required String authorId,
    required String goalId,
    String? text,
  }) async {
    await collection.add(
        PostRaw(
          activityId: activityId,
          authorId: authorId,
          goalId: goalId,
          text: text,
          likedIt: [],
          createdAt: DateTime.now(),
        ).toMap())
        .catchError((e) {
          print('Error when creating post for the activity $activityId:\n$e');
        });
  }

  @override
  Future<void> delete({
    required String activityId,
    required String authorId,
  }) async {
    await collection
        .where(PostRaw.activityIdKey, isEqualTo: activityId)
        .where(PostRaw.authorIdKey, isEqualTo: authorId)
        .get()
        .then((data) => data.docs.forEach((doc) async {
          await _comments.deleteAll(doc.id);
          await collection.doc(doc.id).delete();
        }))
        .catchError((e) {
          print('Error when deleting post for the activity $activityId:\n$e');
        });
  }

  int _sortComparator(PostDto a, PostDto b) {
    return b.date.compareTo(a.date);
  }

  @override
  Future<bool> like(PostDto post) async {
    if (_auth.currentUser == null) return false;
    try {
      await collection.doc(post.id).update({
        PostRaw.likedItKey: FieldValue.arrayUnion([_auth.currentUser!.uid])
      });
      return true;
    } catch (e) {
      print('Error when like the post ${post.id}.\n$e');
      return false;
    }
  }

  @override
  Future<bool> unlike(PostDto post) async {
    if (_auth.currentUser == null) return false;
    try {
      await collection.doc(post.id).update({
        PostRaw.likedItKey: FieldValue.arrayRemove([_auth.currentUser!.uid])
      });
      return true;
    } catch (e) {
      print('Error when unlike the post ${post.id}.\n$e');
      return false;
    }
  }

  Future<PostDto?> _toDomain(String id, PostRaw data) async {
    final author =
        await _profile.getSingle(id: data.authorId, publicFilter: true);
    if (author == null) {
      return null;
    }
    final goal = await _goals.load(data.goalId);
    if (goal == null) {
      return null;
    }
    final like = _auth.currentUser != null
        ? data.likedIt.contains(_auth.currentUser!.uid)
        : false;

    final comments = await _comments.loadByPostId(id);

    return PostDto(
      id: id,
      date: data.createdAt,
      author: author,
      goal: goal,
      text: data.text,
      likeQty: data.likedIt.length,
      like: like,
      comments: comments,
    );
  }
}
