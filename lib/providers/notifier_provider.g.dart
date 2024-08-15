// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalAmountHash() => r'0904524f2c56cd0e780368c44531cc7e5e7364dc';

/// See also [totalAmount].
@ProviderFor(totalAmount)
final totalAmountProvider = AutoDisposeProvider<int>.internal(
  totalAmount,
  name: r'totalAmountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$totalAmountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TotalAmountRef = AutoDisposeProviderRef<int>;
String _$cartNotifierHash() => r'a39068d95378cf0ed220729931f1f246307d4f4d';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, List<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
