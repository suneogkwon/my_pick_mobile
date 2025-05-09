import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_pick/app/theme/extensions.dart';
import 'package:my_pick/core/constants/assets.dart';
import 'package:my_pick/core/constants/list_view_mode.dart';
import 'package:my_pick/feature/game/domain/entities/game_entity.dart';
import 'package:my_pick/feature/game/domain/use_cases/get_games_use_case.dart';
import 'package:my_pick/presentation/util/padding_util.dart';
import 'package:my_pick/presentation/widgets/game_card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_screen.g.dart';
part 'states/_game_list_provider.dart';
part 'widgets/_game_list_view.dart';

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
              _GameListView(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            GoRouter.of(context).push('/create');
          },
          child: SvgPicture.asset(
            Assets.iconsFileEdit,
            colorFilter: ColorFilter.mode(
              AppColors.of(context).primary100,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
