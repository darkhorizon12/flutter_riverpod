// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$GStateNotifierHash() => r'f5d3562260bad49518ffe5b82e60b7cc1b8655f2';

/// See also [GStateNotifier].
final gStateNotifierProvider = AutoDisposeNotifierProvider<GStateNotifier, int>(
  GStateNotifier.new,
  name: r'gStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$GStateNotifierHash,
);
typedef GStateNotifierRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$GStateNotifier extends AutoDisposeNotifier<int> {
  @override
  int build();
}

String _$gStateHash() => r'7ccdacb016fab2894413745b936f82987f9f72cf';

/// See also [gState].
final gStateProvider = AutoDisposeProvider<String>(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateHash,
);
typedef GStateRef = AutoDisposeProviderRef<String>;
String _$gStateFutureHash() => r'6fdc12fc073cddf0fffbed76825d7e1e2b83a577';

/// See also [gStateFuture].
final gStateFutureProvider = AutoDisposeFutureProvider<int>(
  gStateFuture,
  name: r'gStateFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateFutureHash,
);
typedef GStateFutureRef = AutoDisposeFutureProviderRef<int>;
String _$gStateFuture2Hash() => r'7e87666430f62746072d9bc5073c3a11f60ad45c';

/// See also [gStateFuture2].
final gStateFuture2Provider = FutureProvider<int>(
  gStateFuture2,
  name: r'gStateFuture2Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateFuture2Hash,
);
typedef GStateFuture2Ref = FutureProviderRef<int>;
String _$gStateMultiplyHash() => r'bbc21241248993abe0d9cc031eeec98f42db127e';

/// See also [gStateMultiply].
class GStateMultiplyProvider extends AutoDisposeProvider<int> {
  GStateMultiplyProvider({
    required this.num1,
    required this.num2,
  }) : super(
          (ref) => gStateMultiply(
            ref,
            num1: num1,
            num2: num2,
          ),
          from: gStateMultiplyProvider,
          name: r'gStateMultiplyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gStateMultiplyHash,
        );

  final int num1;
  final int num2;

  @override
  bool operator ==(Object other) {
    return other is GStateMultiplyProvider &&
        other.num1 == num1 &&
        other.num2 == num2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num1.hashCode);
    hash = _SystemHash.combine(hash, num2.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GStateMultiplyRef = AutoDisposeProviderRef<int>;

/// See also [gStateMultiply].
final gStateMultiplyProvider = GStateMultiplyFamily();

class GStateMultiplyFamily extends Family<int> {
  GStateMultiplyFamily();

  GStateMultiplyProvider call({
    required int num1,
    required int num2,
  }) {
    return GStateMultiplyProvider(
      num1: num1,
      num2: num2,
    );
  }

  @override
  AutoDisposeProvider<int> getProviderOverride(
    covariant GStateMultiplyProvider provider,
  ) {
    return call(
      num1: provider.num1,
      num2: provider.num2,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'gStateMultiplyProvider';
}
