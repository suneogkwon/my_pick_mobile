import 'package:flutter/widgets.dart';

extension PageControllerExt on PageController {
  static Duration _defaultDuration = Duration(milliseconds: 300);
  static Curve _defaultCurve = Curves.fastLinearToSlowEaseIn;

  /// 페이지 이동 애니메이션([next,animate,previous])에 사용할 기본값을 설정한다.
  ///
  /// 기본값은 [Duration(milliseconds: 300)], [Curves.fastLinearToSlowEaseIn]이다.
  static void setAnimateValue({Duration? duration, Curve? curve}) {
    if (duration != null) {
      _defaultDuration = duration;
    }
    if (curve != null) {
      _defaultCurve = curve;
    }
  }

  /// 디폴트 Duration과 Curve를 적용해 다음 페이지로 이동한다.
  Future<void> next({Duration? duration, Curve? curve}) async {
    return nextPage(
      duration: duration ?? _defaultDuration,
      curve: curve ?? _defaultCurve,
    );
  }

  /// 디폴트 Duration과 Curve를 적용해 [page]로 이동한다.
  Future<void> animate(int page, {Duration? duration, Curve? curve}) async {
    return animateToPage(
      page,
      duration: duration ?? _defaultDuration,
      curve: curve ?? _defaultCurve,
    );
  }

  /// 디폴트 Duration과 Curve를 적용해 이전 페이지로 이동한다.
  Future<void> previous({Duration? duration, Curve? curve}) async {
    return previousPage(
      duration: duration ?? _defaultDuration,
      curve: curve ?? _defaultCurve,
    );
  }

  /// 현재 페이지 값을 [double]로 반환한다.
  /// 위젯에 연결되어 있지 않거나 페이지 값을 불러올 수 없을때는 [initialPage]을 반환한다.
  double get safePage =>
      hasClients ? page ?? initialPage.toDouble() : initialPage.toDouble();

  /// 현재 페이지 값을 반올림하여 반환한다.
  /// 위젯에 연결되어 있지 않거나 페이지 값을 불러올 수 없을때는 [initialPage]을 반환한다.
  int get roundSafePage => safePage.round();
}
