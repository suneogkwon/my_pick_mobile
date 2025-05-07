import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_pick/app/theme/extensions.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/presentation/util/padding_util.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
    required this.index,
    required this.game,
    required this.onTapStart,
    required this.onTapRank,
    required this.onTapShare,
  });

  final int index;
  final GameEntity game;
  final VoidCallback onTapStart;
  final VoidCallback onTapRank;
  final VoidCallback onTapShare;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          _buildImage(),
          _buildGameInfo(context),
          _buildActions(context),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return LayoutBuilder(
      builder:
          (context, constraints) => SizedBox(
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
          ),
    );
  }

  Widget _buildGameInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            game.title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
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
    );
  }

  Widget _buildActions(BuildContext context) {
    Widget action(
      Color backgroundColor,
      Color color,
      IconData icon,
      String text,
      VoidCallback onTap,
    ) => Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Container(
          color: backgroundColor,
          padding: paddingV8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color),
              Gap(4),
              Text(text, style: TextStyle(color: color)),
            ],
          ),
        ),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        action(
          AppColors.of(context).primary30,
          AppColors.of(context).primary90,
          Icons.play_arrow,
          '시작하기',
          onTapStart,
        ),
        action(
          Colors.green.shade50,
          Colors.green.shade800,
          Icons.leaderboard_rounded,
          '랭킹보기',
          onTapRank,
        ),
        action(
          Colors.amber.shade50,
          Colors.amber.shade800,
          Icons.share_rounded,
          '공유하기',
          onTapShare,
        ),
      ],
    );
  }
}

class MiniGameCard extends StatelessWidget {
  const MiniGameCard({
    super.key,
    required this.index,
    required this.game,
    required this.onTapStart,
    required this.onTapRank,
    required this.onTapShare,
  });

  final int index;
  final GameEntity game;
  final VoidCallback onTapStart;
  final VoidCallback onTapRank;
  final VoidCallback onTapShare;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildImage(), _buildGameInfo(context)],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return SizedBox(
      width: 130,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(game.items[0].imageUrl, fit: BoxFit.cover),
          ),
          Expanded(
            child: Image.network(game.items[1].imageUrl, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }

  Widget _buildGameInfo(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              game.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Gap(4),
            Text(
              game.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            Gap(4),
            Row(
              spacing: 8,
              children: [
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: AppColors.of(context).primary90,
                  ),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.leaderboard_rounded,
                    color: Colors.green.shade800,
                  ),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(Icons.share_rounded, color: Colors.amber.shade800),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
