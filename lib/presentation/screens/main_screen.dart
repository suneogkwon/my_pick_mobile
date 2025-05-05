import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_pick/app/theme/extensions.dart';
import 'package:my_pick/presentation/util/padding_util.dart';

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
              Expanded(
                child: ListView.separated(
                  itemCount: 100,
                  itemBuilder: (context, index) => GameCard(index: index),
                  separatorBuilder: (context, index) => Gap(16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.index});

  final int index;

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
                        'https://picsum.photos/200/300?random=$index',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        'https://picsum.photos/200/300?random=${index + 1}',
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
                  '게임 제목 $index',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(4),
                Text(
                  '게임 설명 $index',
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
