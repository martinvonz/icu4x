// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// An object capable of mapping from a BCP-47 time zone ID to an IANA ID.
///
/// See the [Rust documentation for `IanaBcp47RoundTripMapper`](https://docs.rs/icu/latest/icu/timezone/struct.IanaBcp47RoundTripMapper.html) for more information.
final class Bcp47ToIanaMapper implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  Bcp47ToIanaMapper._(this._underlying, bool isOwned) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XBcp47ToIanaMapper_destroy));

  /// See the [Rust documentation for `new`](https://docs.rs/icu/latest/icu/timezone/struct.IanaBcp47RoundTripMapper.html#method.new) for more information.
  ///
  /// Throws [Error] on failure.
  factory Bcp47ToIanaMapper(DataProvider provider) {
    final result = _ICU4XBcp47ToIanaMapper_create(provider._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return Bcp47ToIanaMapper._(result.union.ok, true);
  }

  /// Writes out the canonical IANA time zone ID corresponding to the given BCP-47 ID.
  ///
  /// See the [Rust documentation for `bcp47_to_iana`](https://docs.rs/icu/latest/icu/datetime/time_zone/struct.IanaBcp47RoundTripMapper.html#method.bcp47_to_iana) for more information.
  ///
  /// Throws [Error] on failure.
  String operator [](String value) {
    final temp = ffi2.Arena();
    final valueView = value.utf8View;
    final writeable = _Writeable();
    final result = _ICU4XBcp47ToIanaMapper_get(_underlying, valueView.pointer(temp), valueView.length, writeable._underlying);
    temp.releaseAll();
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return writeable.finalize();
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XBcp47ToIanaMapper_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XBcp47ToIanaMapper_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XBcp47ToIanaMapper_create')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XBcp47ToIanaMapper_create(ffi.Pointer<ffi.Opaque> provider);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XBcp47ToIanaMapper_get')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XBcp47ToIanaMapper_get(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> valueData, int valueLength, ffi.Pointer<ffi.Opaque> writeable);
