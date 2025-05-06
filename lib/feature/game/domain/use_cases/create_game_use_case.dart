import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_pick/feature/game/domain/entities/game_form_entity.dart';
import 'package:my_pick/feature/game/domain/repositories/game_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_game_use_case.g.dart';

@riverpod
Future<void> createGameUseCase(Ref ref, GameFormEntity formData) async {
  return ref.watch(gameRepositoryProvider).createGame(formData);
}
