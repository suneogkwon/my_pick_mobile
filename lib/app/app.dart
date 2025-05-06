import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_pick/app/theme/theme.dart';
import 'package:my_pick/presentation/screens/create_game/create_game_screen.dart';
import 'package:my_pick/presentation/screens/main/main_screen.dart';

class MyPickApp extends StatelessWidget {
  const MyPickApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      title: '최애픽',
      theme: appTheme,
      darkTheme: appDarkTheme,
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => MainScreen(),
            routes: [
              GoRoute(
                path: 'create',
                builder: (context, state) => CreateGameScreen(),
              ),
            ],
          ),
        ],
      ),
      builder: (context, child) {
        return MediaQuery.withNoTextScaling(child: child!);
      },
    );
  }
}
