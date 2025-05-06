// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_game_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createGameUseCaseHash() => r'5c4b1a72f3fabfe4d1418a2acbb217fbb940f2ab';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [createGameUseCase].
@ProviderFor(createGameUseCase)
const createGameUseCaseProvider = CreateGameUseCaseFamily();

/// See also [createGameUseCase].
class CreateGameUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [createGameUseCase].
  const CreateGameUseCaseFamily();

  /// See also [createGameUseCase].
  CreateGameUseCaseProvider call(GameFormEntity formData) {
    return CreateGameUseCaseProvider(formData);
  }

  @override
  CreateGameUseCaseProvider getProviderOverride(
    covariant CreateGameUseCaseProvider provider,
  ) {
    return call(provider.formData);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createGameUseCaseProvider';
}

/// See also [createGameUseCase].
class CreateGameUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createGameUseCase].
  CreateGameUseCaseProvider(GameFormEntity formData)
    : this._internal(
        (ref) => createGameUseCase(ref as CreateGameUseCaseRef, formData),
        from: createGameUseCaseProvider,
        name: r'createGameUseCaseProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$createGameUseCaseHash,
        dependencies: CreateGameUseCaseFamily._dependencies,
        allTransitiveDependencies:
            CreateGameUseCaseFamily._allTransitiveDependencies,
        formData: formData,
      );

  CreateGameUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.formData,
  }) : super.internal();

  final GameFormEntity formData;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateGameUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateGameUseCaseProvider._internal(
        (ref) => create(ref as CreateGameUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        formData: formData,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateGameUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateGameUseCaseProvider && other.formData == formData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, formData.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateGameUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `formData` of this provider.
  GameFormEntity get formData;
}

class _CreateGameUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with CreateGameUseCaseRef {
  _CreateGameUseCaseProviderElement(super.provider);

  @override
  GameFormEntity get formData => (origin as CreateGameUseCaseProvider).formData;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
