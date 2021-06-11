
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models/feed.dart';
import 'auth.dart';
import 'profile.dart';

abstract class CommentsRepository {
  Stream<List<PostCommentDto>> byPostId(String postId);
  Future<List<PostCommentDto>> loadByPostId(String postId);
  Future<bool> addComment(String postId, String text);
  Future<bool> deleteAll(String postId);
}

@Injectable(as: CommentsRepository)
class CommentsRepositoryImpl implements CommentsRepository {
  static const String collectionName = 'comments';

  final CollectionReference collection =
    FirebaseFirestore.instance.collection(collectionName);

  late final convertedCollection =
    collection.withConverter<PostCommentRaw?>(
      fromFirestore: (snapshot, _) => snapshot.data() != null
          ? PostCommentRaw.fromMap(snapshot.data()!)
          : null,
      toFirestore: (comment, _) => comment?.toMap() ?? {},
  );

  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;

  CommentsRepositoryImpl(this._profileRepository, this._authRepository);

  Stream<List<PostCommentDto>> byPostId(String postId) async* {
    if (postId.isEmpty) {
      yield [];
      return;
    }

    try {
      final stream = convertedCollection
          .where(PostCommentRaw.postIdKey, isEqualTo: postId)
          .snapshots()
          .handleError((e) {
            print('Error when listening comments for the post $postId.\n$e');
          })
          .map((s) => s.docs);
      await for (final rawDocList in stream) {
        final list = <PostCommentDto>[];
        for (var rawDoc in rawDocList) {
          if (rawDoc.data() == null) continue;
          final domain = await _toDomain(rawDoc.data()!);
          if (domain == null) continue;
          list.add(domain);
        }
        list.sort(_sortComparator);
        yield list;
      }
    } catch (e) {
      print(e);
    }
  }

  Future<PostCommentDto?> _toDomain(PostCommentRaw raw) async {
    final author = await _profileRepository.getSingle(id: raw.authorId);
    if (author == null) {
      return null;
    }
    return PostCommentDto(
      date: raw.createdAt,
      text: raw.text,
      author: author,
      postId: raw.postId,
    );
  }

  @override
  Future<bool> addComment(String postId, String text) async {
    if (postId.isEmpty
        || text.isEmpty
        || _authRepository.currentUserId == null
    ) {
      return false;
    }
    try {
      await convertedCollection.add(
        PostCommentRaw(
          postId: postId,
          authorId: _authRepository.currentUserId!,
          text: text,
          createdAt: DateTime.now(),
        ),
      );
      return true;
    } catch (e) {
      print('Error when add comment to the post $postId:\n$e');
      return false;
    }
  }

  Future<List<PostCommentDto>> loadByPostId(String postId) async {
    try {
      final snapshot = await convertedCollection
          .where(PostCommentRaw.postIdKey, isEqualTo: postId)
          .get();
      final comments = <PostCommentDto>[];
      for (var doc in snapshot.docs) {
        final data = doc.data();
        if (data == null) continue;
        final domain = await _toDomain(data);
        if (domain == null) continue;
        comments.add(domain);
      }
      return comments;
    } catch (e) {
      print('Error when loading comments for the post $postId.\n$e');
      return [];
    }    
  }

  int _sortComparator(PostCommentDto a, PostCommentDto b) {
    // by date desc
    return b.date.compareTo(a.date);
  }

  @override
  Future<bool> deleteAll(String postId) async {
    try {
      final comments = await collection
          .where(PostCommentRaw.postIdKey, isEqualTo: postId)
          .get();
      for (var doc in comments.docs) {
        await collection.doc(doc.id).delete();
      }
      return true;
    } catch (e) {
      print('Error when deleting comments for the post $postId.\n$e');
      return false;
    }
  }
}
