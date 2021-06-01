import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'goals.dart';
import 'profile.dart';
import 'subscriptions.dart';

abstract class PostsRepository {
  Stream<List<PostDto>> get posts;

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

  PostsRepositoryFirestore(
      this._subscriptions,
      this._auth,
      this._profile,
      this._goals,
  );

  @override
  Stream<List<PostDto>> get posts async* {
    if (_auth.currentUser == null) {
      yield [];
      return;
    }

    final subIdsStream = _subscriptions.getSubsIds(_auth.currentUser!.uid);

    await for (var subIds in subIdsStream) {
      final postDocsStream = convertedCollection
          .where(PostRaw.authorIdKey, whereIn: [
            ...subIds, _auth.currentUser!.uid])
          //.orderBy(PostRaw.dateKey)
          .snapshots()
          .map((s) => s.docs);


      await for (var postDocs in postDocsStream) {
        if (postDocs.isEmpty) {
          yield [];
          continue;
        }
        final posts = <PostDto>[];
        for (var postDoc in postDocs) {
          if (postDoc.data() == null) continue;
          final domain = await _toDomain(postDoc.id, postDoc.data()!);
          if (domain == null) continue;
          posts.add(domain);
        }
        posts.sort(_sortComparator);
        yield posts;
      }
    }
  }

  Future<PostDto?> _toDomain(String id, PostRaw data) async {
    final author = await _profile.getSingle(data.authorId);
    if (author == null) {
      print('Author not found. Id was: ${data.authorId}.');
      return null;
    }
    final goal = await _goals.get(data.goalId);
    if (goal == null) {
      print('Goal not found by id: ${data.goalId}');
      return null;
    }
    final like = data.likedIt.contains(author.id);
    return PostDto(
      id: id,
      date: data.createdAt,
      author: author,
      goal: goal,
      text: data.text,
      likeQty: data.likedIt.length,
      like: like,
      // Comments will be loaded later
      comments: [],
    );
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
        ).toMap()
    );
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
          await collection.doc(doc.id).delete();
        }));
  }

  int _sortComparator(PostDto a, PostDto b) {
    return b.date.compareTo(a.date);
  }
}
