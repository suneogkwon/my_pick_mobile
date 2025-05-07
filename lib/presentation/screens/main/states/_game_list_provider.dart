part of '../main_screen.dart';

@riverpod
Future<List<GameEntity>> _gameList(Ref ref) async {
  return ref.read(getGamesUseCaseProvider.future);
}

@riverpod
class _GameListViewMode extends _$GameListViewMode {
  @override
  ListViewMode build() {
    return ListViewMode.normal;
  }

  void change() => state = state.change();
}
