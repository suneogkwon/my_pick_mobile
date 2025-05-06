import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_pick/app/theme/extensions.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/feature/game/domain/use_cases/get_games_use_case.dart';
import 'package:my_pick/presentation/util/padding_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_screen.g.dart';
part 'states/game_list_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('최애픽'),
          centerTitle: false,
          actionsPadding: EdgeInsets.only(right: 8),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        body: Padding(
          padding: paddingA16,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: '검색어를 입력하세요',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              Gap(12),
              Row(
                children: [
                  Text('총 100건'),
                  Spacer(),
                  ActionChip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                    label: Text('인기순'),
                    onPressed: () {},
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.list_rounded)),
                ],
              ),
              Gap(12),
              Expanded(child: _buildGameListView()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          foregroundColor: AppColors.of(context).primary100,
          shape: CircleBorder(),
          onPressed: () {
            GoRouter.of(context).push('/create');
          },
          child: Icon(Icons.create_rounded),
        ),
      ),
    );
  }

  Widget _buildGameListView() {
    return Consumer(
      builder: (context, ref, child) {
        final gameListAsync = ref.watch(gameListProvider);

        return switch (gameListAsync) {
          AsyncError(:final error, :final stackTrace) => Center(
            child: Text('Error: $error'),
          ),
          AsyncData(value: final games) => ListView.separated(
            itemCount: games.length,
            itemBuilder: (context, index) {
              final game = games[index];
              return GameCard(index: index, game: game);
            },
            separatorBuilder: (context, index) => Gap(16),
          ),
          _ => Center(child: CircularProgressIndicator()),
        };
      },
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.index, required this.game});

  final int index;
  final GameEntity game;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                height: constraints.maxWidth * 0.5,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.network(
                        game.items[0].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        game.items[1].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(4),
                Text(
                  game.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
          Gap(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {},
                  child: Container(
                    color: AppColors.of(context).primary30,
                    padding: paddingV8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: AppColors.of(context).primary90,
                        ),
                        Text(
                          '시작하기',
                          style: TextStyle(
                            color: AppColors.of(context).primary90,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {},
                  child: Container(
                    color: Colors.green.shade50,
                    padding: paddingV8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.leaderboard_rounded,
                          color: Colors.green.shade800,
                        ),
                        Text(
                          '랭킹보기',
                          style: TextStyle(color: Colors.green.shade800),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {},
                  child: Container(
                    color: Colors.amber.shade50,
                    padding: paddingV8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.share_rounded, color: Colors.amber.shade800),
                        Text(
                          '공유하기',
                          style: TextStyle(color: Colors.amber.shade800),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
