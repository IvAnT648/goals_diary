import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'utils.dart';

abstract class GoalsRepository {
  Future<SaveGoalResult> saveGoal(GoalDto goal);
  Future<void> deleteGoal(GoalDto goal);
  Future<GoalDto?> load(String id);
  Stream<List<GoalDto>> get myGoals;
  Stream<List<GoalDto>> goalsForDay(int weekdayIndex);
  Future<List<GoalDto>> loadByAuthorId({
    required String authorId,
    bool? publicFilter,
  });
  Stream<List<GoalDto>> byAuthorId({
    required String authorId,
    bool? publicFilter,
    int? weekdayFilter,
  });
}

@Injectable(as: GoalsRepository)
class GoalsRepositoryImpl implements GoalsRepository {
  static const String _goalsCollectionName = 'goals';

  CollectionReference collection =
      FirebaseFirestore.instance.collection(_goalsCollectionName);

  late CollectionReference<GoalData?> convertedCollection =
      collection.withConverter<GoalData?>(
        fromFirestore: (snapshot, _) => snapshot.data() != null
            ? GoalData.fromFirestore(snapshot.data()!)
            : null,
        toFirestore: (goal, _) => goal?.toMap() ?? {},
  );

  final AuthRepository _auth;

  GoalsRepositoryImpl(this._auth);

  @override
  Future<SaveGoalResult> saveGoal(GoalDto goal) async {
    if (_auth.currentUser == null) {
      return SaveGoalResult.internalError();
    }
    try {
      final data = goal.toData(authorId: _auth.currentUser!.uid).toMap();
      await collection.doc(goal.id).set(data);
      return SaveGoalResult.success();
    } catch (e) {
      print('Error when the goal ${goal.id} saving:\n$e');
      return SaveGoalResult.internalError();
    }
  }

  @override
  Stream<List<GoalDto>> get myGoals async* {
    final user = _auth.currentUser;
    if (user == null) {
      yield [];
      return;
    }
    yield* byAuthorId(authorId: user.uid);
  }

  @override
  Stream<List<GoalDto>> goalsForDay(int weekdayIndex) async* {
    final user = _auth.currentUser;
    if (user == null) {
      yield [];
      return;
    }
    yield* byAuthorId(authorId: user.uid, weekdayFilter: weekdayIndex);
  }

  @override
  Future<void> deleteGoal(GoalDto goal) {
    return collection
        .doc(goal.id)
        .delete()
        .catchError((e) {
          print('Error when the goal ${goal.id} deleting:\n$e');
        });
  }

  @override
  Future<GoalDto?> load(String id) async {
    if (id.isEmpty) {
      return null;
    }
    final doc = await convertedCollection
        .doc(id)
        .get()
        .catchError((e) {
          print('Error when load the goal $id:\n$e');
        });
    return doc.data()?.toDomain(id: doc.id);
  }

  @override
  Future<List<GoalDto>> loadByAuthorId({
    required String authorId,
    bool? publicFilter,
  }) async {
    if (authorId.isEmpty) return [];

    late final Query<GoalData?> query;
    if (publicFilter != null) {
      query = convertedCollection
          .where(GoalData.authorIdKey, isEqualTo: authorId)
          .where(GoalData.isPublicKey, isEqualTo: publicFilter);
    } else {
      query = convertedCollection
          .where(GoalData.authorIdKey, isEqualTo: authorId);
    }
    final snapshot = await query.get()
        .catchError((e) {
          print('Error when goals loading by author ID $authorId:\n$e');
        });

    final list = <GoalDto>[];
    for (var doc in snapshot.docs) {
      if (doc.data() == null) continue;
      list.add(doc.data()!.toDomain(id: doc.id));
    }
    return list;
  }

  @override
  Stream<List<GoalDto>> byAuthorId({
    required String authorId,
    bool? publicFilter,
    int? weekdayFilter,
  }) async* {
    if (authorId.isEmpty) return;

    Query<GoalData?>? query = convertedCollection
        .where(GoalData.authorIdKey, isEqualTo: authorId);

    if (publicFilter != null) {
      query = query.where(GoalData.isPublicKey, isEqualTo: publicFilter);
    }

    if (weekdayFilter != null) {
      query = query
          .where(GoalData.periodicityKey, arrayContains: weekdayFilter);
    }

    final docsStream = query
        .snapshots()
        .handleError((e) {
          print('Error when listening goals by author ID $authorId.\n$e');
        })
        .map((snapshot) => snapshot.docs);

    await for (var docs in docsStream) {
      final list = <GoalDto>[];
      for (var doc in docs) {
        if (doc.data() != null) {
          list.add(doc.data()!.toDomain(id: doc.id));
        }
      }
      yield list;
    }
  }
}
