import 'package:my_pick/feature/game/data/firebase/data_sources/game_firebase_data_source.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/feature/game/domain/entities/game_form_entity.dart';
import 'package:my_pick/feature/game/domain/repositories/game_repository.dart';

class GameRepositoryImpl implements GameRepository {
  final GameFirebaseDataSource firebaseDataSource;

  GameRepositoryImpl({required this.firebaseDataSource});

  @override
  Future<void> createGame(GameFormEntity gameForm) async {
    await firebaseDataSource.createGame(gameForm);
  }

  @override
  Future<List<GameEntity>> getGames({int? limit, String? pageKey}) async {
    final gamesData = await firebaseDataSource.getGames();
    final games = gamesData.map((e) => e.toEntity()).toList();

    for (int i = 0; i < games.length; i++) {
      final items = await firebaseDataSource.getGameItems(games[i].id);

      games[i] = games[i].copyWith(
        items: items.map((e) => e.toEntity()).toList(),
      );
    }

    return games;
  }

  @override
  Future<List<GameEntity>> getGamesByKeyword(String keyword) {
    // TODO: implement getGamesByKeyword
    throw UnimplementedError();
  }

  @override
  Future<GameEntity?> getGameById(String id) async {
    // TODO: implement getGamesByKeyword
    throw UnimplementedError();
    // try {
    //   final game = await remoteDataSource.getGameById(id);
    //   return Right(game);
    // } on ServerException catch (e) {
    //   return Left(ServerFailure(e.message));
    // } on CacheException catch (e) {
    //   return Left(CacheFailure(e.message));
    // }
  }

  @override
  Future<void> updateGame(GameEntity game) async {
    // TODO: implement getGamesByKeyword
    throw UnimplementedError();
    // try {
    //   await remoteDataSource.updateGame(game);
    //   return const Right(null);
    // } on ServerException catch (e) {
    //   return Left(ServerFailure(e.message));
    // } on CacheException catch (e) {
    //   return Left(CacheFailure(e.message));
    // }
  }

  @override
  Future<void> deleteGame(String id) async {
    // TODO: implement getGamesByKeyword
    throw UnimplementedError();
    // try {
    //   await remoteDataSource.deleteGame(id);
    //   return const Right(null);
    // } on ServerException catch (e) {
    //   return Left(ServerFailure(e.message));
    // } on CacheException catch (e) {
    //   return Left(CacheFailure(e.message));
    // }
  }
}
