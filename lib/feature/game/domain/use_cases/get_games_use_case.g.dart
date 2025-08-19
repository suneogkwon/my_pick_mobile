// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_games_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getGamesUseCase)
const getGamesUseCaseProvider = GetGamesUseCaseProvider._();

final class GetGamesUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<GameEntity>>,
          List<GameEntity>,
          FutureOr<List<GameEntity>>
        >
    with $FutureModifier<List<GameEntity>>, $FutureProvider<List<GameEntity>> {
  const GetGamesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getGamesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getGamesUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<List<GameEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<GameEntity>> create(Ref ref) {
    return getGamesUseCase(ref);
  }
}

String _$getGamesUseCaseHash() => r'797a9e8eb9c1bf15831ab1818c8a9b850a1c08f2';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
