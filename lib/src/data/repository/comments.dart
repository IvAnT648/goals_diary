
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models/feed.dart';
import 'auth.dart';
import 'profile.dart';

abstract class CommentsRepository {
  Stream<List<PostCommentDto>> byPostIds(List<String> postIds);
  Future<bool> addComment(String postId, String text);
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

  Stream<List<PostCommentDto>> byPostIds(List<String> postIds) async* {
    if (postIds.isEmpty) {
      yield [];
      return;
    }

    try {
      final stream = convertedCollection
          .where(PostCommentRaw.postIdKey, whereIn: postIds)
          .snapshots().map((s) => s.docs);
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
      await collection.add(
          PostCommentRaw(
            postId: postId,
            authorId: _authRepository.currentUserId!,
            text: text,
            createdAt: DateTime.now(),
          ).toMap(),
      );
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  int _sortComparator(PostCommentDto a, PostCommentDto b) {
    // by desc
    return a.date.compareTo(b.date);
  }
}
