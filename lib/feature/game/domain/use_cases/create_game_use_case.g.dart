// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_game_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(createGameUseCase)
const createGameUseCaseProvider = CreateGameUseCaseFamily._();

final class CreateGameUseCaseProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const CreateGameUseCaseProvider._({
    required CreateGameUseCaseFamily super.from,
    required GameFormEntity super.argument,
  }) : super(
         retry: null,
         name: r'createGameUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$createGameUseCaseHash();

  @override
  String toString() {
    return r'createGameUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as GameFormEntity;
    return createGameUseCase(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateGameUseCaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$createGameUseCaseHash() => r'5c4b1a72f3fabfe4d1418a2acbb217fbb940f2ab';

final class CreateGameUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, GameFormEntity> {
  const CreateGameUseCaseFamily._()
    : super(
        retry: null,
        name: r'createGameUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CreateGameUseCaseProvider call(GameFormEntity formData) =>
      CreateGameUseCaseProvider._(argument: formData, from: this);

  @override
  String toString() => r'createGameUseCaseProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
