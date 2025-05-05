import 'package:my_pick/feature/game/domain/entities/create_game_form_entity.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';

abstract class GameRepository {
  Future<void> createGame(CreateGameFormEntity gameForm);
  Future<void> updateGame(GameEntity game);
  Future<void> deleteGame(String id);
  Future<List<GameEntity>> getGames();
  Future<List<GameEntity>> getGamesByKeyword(String keyword);
  Future<GameEntity?> getGameById(String id);
}
