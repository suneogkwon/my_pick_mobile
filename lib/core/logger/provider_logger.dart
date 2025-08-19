import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didDisposeProvider(ProviderObserverContext context) {
    log('${context.provider.name ?? context.provider.runtimeType} dispose');
  }

  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    log('${context.provider.name ?? context.provider.runtimeType} add');
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    log(''' 
{
  "provider": "${context.provider.name ?? context.provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}
