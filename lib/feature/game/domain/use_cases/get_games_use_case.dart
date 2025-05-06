import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/feature/game/domain/repositories/game_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_games_use_case.g.dart';

@riverpod
Future<List<GameEntity>> getGamesUseCase(Ref ref) async {
  return ref.watch(gameRepositoryProvider).getGames();
}
