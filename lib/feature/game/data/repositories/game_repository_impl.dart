import 'package:my_pick/feature/game/domain/entities/create_game_form_entity.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/feature/game/domain/repositories/game_repository.dart';

class GameRepositoryImpl implements GameRepository {
  final GameRemoteDataSource remoteDataSource;
  final GameLocalDataSource localDataSource;

  GameRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<void> createGame(CreateGameFormEntity gameForm) async {
    try {
      await remoteDataSource.createGame(gameForm);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<List<GameEntity>> getGames() async {
    try {
      final games = await remoteDataSource.getGames();
      return Right(games);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<List<GameEntity>> getGamesByKeyword(String keyword) {
    // TODO: implement getGamesByKeyword
    throw UnimplementedError();
  }

  @override
  Future<GameEntity?> getGameById(String id) async {
    try {
      final game = await remoteDataSource.getGameById(id);
      return Right(game);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<void> updateGame(GameEntity game) async {
    try {
      await remoteDataSource.updateGame(game);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<void> deleteGame(String id) async {
    try {
      await remoteDataSource.deleteGame(id);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
