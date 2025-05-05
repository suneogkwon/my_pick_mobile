import 'dart:developer';

import 'package:flutter/material.dart';

class RouteLogger extends NavigatorObserver {
  RouteLogger();

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('go router[didPush]: $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('go router[didPop]: $route');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('go router[didRemove]: $route');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    log('go router[didReplace]: $newRoute');
  }
}
