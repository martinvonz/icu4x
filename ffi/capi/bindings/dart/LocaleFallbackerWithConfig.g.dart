// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// An object that runs the ICU4X locale fallback algorithm with specific configurations.
///
/// See the [Rust documentation for `LocaleFallbacker`](https://docs.rs/icu/latest/icu/locid_transform/fallback/struct.LocaleFallbacker.html) for more information.
///
/// See the [Rust documentation for `LocaleFallbackerWithConfig`](https://docs.rs/icu/latest/icu/locid_transform/fallback/struct.LocaleFallbackerWithConfig.html) for more information.
final class LocaleFallbackerWithConfig implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  LocaleFallbackerWithConfig._(this._underlying, bool isOwned) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XLocaleFallbackerWithConfig_destroy));

  /// Creates an iterator from a locale with each step of fallback.
  ///
  /// See the [Rust documentation for `fallback_for`](https://docs.rs/icu/latest/icu/locid_transform/fallback/struct.LocaleFallbacker.html#method.fallback_for) for more information.
  LocaleFallbackIterator fallbackForLocale(Locale locale) {
    final result = _ICU4XLocaleFallbackerWithConfig_fallback_for_locale(_underlying, locale._underlying);
    return LocaleFallbackIterator._(result, true);
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XLocaleFallbackerWithConfig_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XLocaleFallbackerWithConfig_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocaleFallbackerWithConfig_fallback_for_locale')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XLocaleFallbackerWithConfig_fallback_for_locale(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> locale);
