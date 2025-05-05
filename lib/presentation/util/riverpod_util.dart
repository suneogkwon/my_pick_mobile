import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RiverpodRefExt on Ref {
  /// 프로바이더가 삭제될 때 [notifier]도 함께 삭제되도록 자동화한다.
  T autoDispose<T extends ChangeNotifier>(T notifier) {
    onDispose(notifier.dispose);

    return notifier;
  }

  /// 프로바이더가 삭제될 때 [notifier]도 함께 삭제되도록 자동화하고
  /// [notifier]의 변화를 감지하여 전파한다.
  T disposeAndListenChangeNotifier<T extends ChangeNotifier>(T notifier) {
    onDispose(notifier.dispose);
    notifier.addListener(notifyListeners);
    // We return the notifier to ease the usage a bit
    return notifier;
  }

  /// [Dio]의 [cancelToken]을 생성하고 프로바이더가 삭제될 때 함께 삭제되도록 자동화한다.
  CancelToken createCancelToken() {
    final token = CancelToken();

    onDispose(token.cancel);

    return token;
  }

  /// [duration] (defaults to 500ms)동안 대기 후, 프로바이더가 삭제되지 않았으면 다음 로직을
  /// 실행하도록 자동화한다.
  Future<void> debounced(
      [Duration duration = const Duration(milliseconds: 500)]) async {
    // First, we handle debouncing.
    var didDispose = false;
    onDispose(() => didDispose = true);

    // We delay the request by 500ms, to wait for the user to stop refreshing.
    await Future.delayed(duration);

    // If the provider was disposed during the delay, it means that the user
    // refreshed again. We throw an exception to cancel the request.
    // It is safe to use an exception here, as it will be caught by Riverpod.
    if (didDispose) {
      throw Exception('Cancelled');
    }
  }

  /// [duration](기본 10분)동안 프로바이더를 캐시한다.
  void cacheFor([
    Duration duration = const Duration(minutes: 10),
  ]) {
    // Immediately prevent the state from getting destroyed.
    final link = keepAlive();
    // After duration has elapsed, we re-enable automatic disposal.
    final timer = Timer(duration, link.close);

    // Optional: when the provider is recomputed (such as with ref.watch),
    // we cancel the pending timer.
    onDispose(timer.cancel);
  }

  /// [duration]동안 대기 후, [callback]을 실행하는 타이머를 생성한다.
  /// [periodic]이 true면 위 로직을 반복한다.
  void timer(
    Duration duration,
    void Function() callback, [
    bool periodic = true,
  ]) {
    final timer = periodic
        ? Timer.periodic(
            duration,
            (timer) => callback(),
          )
        : Timer(duration, callback);

    onDispose(timer.cancel);
  }
}