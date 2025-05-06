import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_pick/feature/game/data/firebase/data_sources/game_firebase_data_source.dart';
import 'package:my_pick/feature/game/data/repositories/game_repository_impl.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/feature/game/domain/entities/game_form_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_repository.g.dart';

@Riverpod(keepAlive: true)
GameRepository gameRepository(Ref ref) {
  return GameRepositoryImpl(firebaseDataSource: GameFirebaseDataSource());
}

abstract class GameRepository {
  Future<void> createGame(GameFormEntity gameForm);
  Future<void> updateGame(GameEntity game);
  Future<void> deleteGame(String id);
  Future<List<GameEntity>> getGames({int? limit, String? pageKey});
  Future<List<GameEntity>> getGamesByKeyword(String keyword);
  Future<GameEntity?> getGameById(String id);
}
