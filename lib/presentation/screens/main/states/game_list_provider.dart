part of '../main_screen.dart';

@riverpod
Future<List<GameEntity>> gameList(Ref ref) async {
  return ref.read(getGamesUseCaseProvider.future);
}
