// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// An object capable of computing the metazone from a timezone.
///
/// This can be used via `maybe_calculate_metazone()` on [`CustomTimeZone`].
///
/// [`CustomTimeZone`]: crate::timezone::ffi::ICU4XCustomTimeZone
///
/// See the [Rust documentation for `MetazoneCalculator`](https://docs.rs/icu/latest/icu/timezone/struct.MetazoneCalculator.html) for more information.
final class MetazoneCalculator implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  MetazoneCalculator._(this._underlying, bool isOwned) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XMetazoneCalculator_destroy));

  /// See the [Rust documentation for `new`](https://docs.rs/icu/latest/icu/timezone/struct.MetazoneCalculator.html#method.new) for more information.
  ///
  /// Throws [Error] on failure.
  factory MetazoneCalculator(DataProvider provider) {
    final result = _ICU4XMetazoneCalculator_create(provider._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return MetazoneCalculator._(result.union.ok, true);
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XMetazoneCalculator_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XMetazoneCalculator_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XMetazoneCalculator_create')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XMetazoneCalculator_create(ffi.Pointer<ffi.Opaque> provider);
