import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_pick/feature/game/data/firebase/models/game_firebase_model.dart';
import 'package:my_pick/feature/game/domain/entities/game_form_entity.dart';

class GameFirebaseDataSource {
  final _firestore = FirebaseFirestore.instance;
  CollectionReference<GameFirebaseModel> _getGamesCollection() => _firestore
      .collection('games')
      .withConverter(
        fromFirestore: GameFirebaseModel.fromFirestore,
        toFirestore: (value, options) => value.toFirestore(),
      );

  CollectionReference<GameItemFirebaseModel> _getGameItemsCollection(
    String gameId,
  ) => _firestore
      .collection('games')
      .doc(gameId)
      .collection('items')
      .withConverter(
        fromFirestore: GameItemFirebaseModel.fromFirestore,
        toFirestore: (value, options) => value.toFirestore(),
      );

  /// 게임 폼 데이터를 기반으로 새로운 게임을 생성하고, 생성된 게임의 ID를 반환합니다.
  Future<String> createGame(GameFormEntity gameForm) async {
    final gameDocument = _getGamesCollection().doc();
    final itemsCollection = _getGameItemsCollection(gameDocument.id);

    await _firestore.runTransaction((transaction) async {
      final gameData = GameFirebaseModel.fromFormEntity(gameForm).copyWith(
        id: gameDocument.id,
        createdAt: Timestamp.now(),
        updatedAt: Timestamp.now(),
      );

      transaction.set(gameDocument, gameData);

      if (gameForm.items != null) {
        for (final item in gameForm.items!) {
          final itemDocument = itemsCollection.doc();
          transaction.set(
            itemDocument,
            GameItemFirebaseModel.fromFormEntity(item).copyWith(
              id: itemDocument.id,
              createdAt: Timestamp.now(),
              updatedAt: Timestamp.now(),
            ),
          );
        }
      }
    });

    return gameDocument.id;
  }

  Future<List<GameFirebaseModel>> getGames({
    int limit = 10,
    String? pageKey,
  }) async {
    final snapshot = await _getGamesCollection().get();

    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<List<GameFirebaseModel>> getGamesByKeyword(String keyword) async {
    final keywordArray = keyword.split('');
    Query<GameFirebaseModel> query = _getGamesCollection().where(
      'titleArray',
      arrayContains: keywordArray.first,
    );
    if (keywordArray.length > 1) {
      for (final keyword in keywordArray.skip(1)) {
        query = query.where('titleArray', arrayContains: keyword);
      }
    }

    final snapshot = await query.get();

    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<GameFirebaseModel?> getGameById(String gameId) async {
    final doc = await _getGamesCollection().doc(gameId).get();

    return doc.data();
  }

  Future<List<GameItemFirebaseModel>> getGameItems(String gameId) async {
    final snapshot = await _getGameItemsCollection(gameId).get();

    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<void> updateGame(GameFormEntity gameForm) async {
    if (gameForm.id == null) {
      throw Exception('Game ID is null');
    }

    final gameDocument = _getGamesCollection().doc(gameForm.id);
    final itemsCollection = _getGameItemsCollection(gameForm.id!);

    _firestore.runTransaction((transaction) async {
      final gameData = GameFirebaseModel.fromFormEntity(
        gameForm,
      ).copyWith(updatedAt: Timestamp.now());
      transaction.update(gameDocument, gameData.toFirestore());

      if (gameForm.items != null) {
        for (final item in gameForm.items!) {
          final itemDocument = itemsCollection.doc(item.id);
          final itemData = GameItemFirebaseModel.fromFormEntity(
            item,
          ).copyWith(updatedAt: Timestamp.now());

          transaction.update(itemDocument, itemData.toFirestore());
        }
      }
    });
  }

  Future<void> deleteGame(String gameId) async {
    await _getGamesCollection().doc(gameId).delete();
  }
}
