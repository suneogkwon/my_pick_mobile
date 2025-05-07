part of '../main_screen.dart';

class _GameListView extends ConsumerWidget {
  const _GameListView({super.key});

  Future<void> _onTapGameStart(GameEntity game) async {}
  Future<void> _onTapGameRank(GameEntity game) async {}
  Future<void> _onTapGameShare(GameEntity game) async {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameListAsync = ref.watch(_gameListProvider);

    return Expanded(
      child: switch (gameListAsync) {
        AsyncData(value: final games) => Column(
          children: [_buildFilter(ref), Gap(12), _buildGameListView(games)],
        ),
        AsyncError(:final error, :final stackTrace) => Center(
          child: Text('Error: $error'),
        ),
        _ => Center(child: CircularProgressIndicator()),
      },
    );
  }

  Widget _buildFilter(WidgetRef ref) {
    return Row(
      children: [
        Text('총 100건'),
        Spacer(),
        ActionChip(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
          label: Text('인기순'),
          onPressed: () {},
        ),
        IconButton(
          onPressed: ref.read(_gameListViewModeProvider.notifier).change,
          icon: Icon(Icons.list_rounded),
        ),
      ],
    );
  }

  Widget _buildGameListView(List<GameEntity> games) {
    return Expanded(
      child: HookConsumer(
        builder: (context, ref, _) {
          final listViewMode = ref.watch(_gameListViewModeProvider);

          return switch (listViewMode) {
            ListViewMode.normal => ListView.separated(
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];

                return GameCard(
                  key: ValueKey(game.id),
                  index: index,
                  game: game,
                  onTapStart: () => _onTapGameStart(game),
                  onTapRank: () => _onTapGameRank(game),
                  onTapShare: () => _onTapGameShare(game),
                );
              },
              separatorBuilder: (context, index) => Gap(16),
            ),

            ListViewMode.mini => ListView.separated(
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];

                return MiniGameCard(
                  key: ValueKey(game.id),
                  index: index,
                  game: game,
                  onTapStart: () => _onTapGameStart(game),
                  onTapRank: () => _onTapGameRank(game),
                  onTapShare: () => _onTapGameShare(game),
                );
              },
              separatorBuilder: (context, index) => Gap(8),
            ),
          };
        },
      ),
    );
  }
}
