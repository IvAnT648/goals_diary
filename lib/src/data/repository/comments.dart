
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models/feed.dart';
import 'profile.dart';

abstract class CommentsRepository {
  Stream<List<PostCommentDto>> byPostId(String postId);
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

  CommentsRepositoryImpl(this._profileRepository);

  Stream<List<PostCommentDto>> byPostId(String postId) async* {
    if (postId.isEmpty) return;

    final stream = convertedCollection
        .where(PostCommentRaw.postIdKey, isEqualTo: postId)
        .snapshots().map((s) => s.docs.map((doc) {
          return doc.data();
        }).toList());

    await for (final rawList in stream) {
      final list = <PostCommentDto>[];
      for (var raw in rawList) {
        if (raw == null) continue;
        final domain = await _toDomain(raw);
        if (domain == null) continue;
        list.add(domain);
      }
      yield list;
    }
  }

  Future<PostCommentDto?> _toDomain(PostCommentRaw raw) async {
    final author = await _profileRepository.getSingle(raw.authorId);
    if (author == null) {
      return null;
    }
    return PostCommentDto(
      date: raw.createdAt,
      text: raw.text,
      author: author,
    );
  }
}
