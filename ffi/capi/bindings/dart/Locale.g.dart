// generated by diplomat-tool

part of 'lib.g.dart';

/// An ICU4X Locale, capable of representing strings like `"en-US"`.
///
/// See the [Rust documentation for `Locale`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html) for more information.
final class Locale implements ffi.Finalizable, core.Comparable<Locale> {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  Locale._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XLocale_destroy));

  /// Construct an [`Locale`] from an locale identifier.
  ///
  /// This will run the complete locale parsing algorithm. If code size and
  /// performance are critical and the locale is of a known shape (such as
  /// `aa-BB`) use `create_und`, `set_language`, `set_script`, and `set_region`.
  ///
  /// See the [Rust documentation for `try_from_str`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.try_from_str) for more information.
  ///
  /// Throws [LocaleParseError] on failure.
  factory Locale.fromString(String name) {
    final temp = ffi2.Arena();
    final nameView = name.utf8View;
    final result = _ICU4XLocale_create_from_string(nameView.allocIn(temp), nameView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw LocaleParseError.values[result.union.err];
    }
    return Locale._fromFfi(result.union.ok, []);
  }

  /// Construct a default undefined [`Locale`] "und".
  ///
  /// See the [Rust documentation for `UND`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#associatedconstant.UND) for more information.
  factory Locale.und() {
    final result = _ICU4XLocale_create_und();
    return Locale._fromFfi(result, []);
  }

  /// Clones the [`Locale`].
  ///
  /// See the [Rust documentation for `Locale`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html) for more information.
  Locale clone() {
    final result = _ICU4XLocale_clone(_ffi);
    return Locale._fromFfi(result, []);
  }

  /// Returns a string representation of the `LanguageIdentifier` part of
  /// [`Locale`].
  ///
  /// See the [Rust documentation for `id`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#structfield.id) for more information.
  String get basename {
    final write = _Write();
    _ICU4XLocale_basename(_ffi, write._ffi);
    return write.finalize();
  }

  /// Returns a string representation of the unicode extension.
  ///
  /// See the [Rust documentation for `extensions`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#structfield.extensions) for more information.
  String? getUnicodeExtension(String s) {
    final temp = ffi2.Arena();
    final sView = s.utf8View;
    final write = _Write();
    final result = _ICU4XLocale_get_unicode_extension(_ffi, sView.allocIn(temp), sView.length, write._ffi);
    temp.releaseAll();
    if (!result.isOk) {
      return null;
    }
    return write.finalize();
  }

  /// Returns a string representation of [`Locale`] language.
  ///
  /// See the [Rust documentation for `id`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#structfield.id) for more information.
  String get language {
    final write = _Write();
    _ICU4XLocale_language(_ffi, write._ffi);
    return write.finalize();
  }

  /// Set the language part of the [`Locale`].
  ///
  /// See the [Rust documentation for `try_from_str`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.try_from_str) for more information.
  ///
  /// Throws [LocaleParseError] on failure.
  set language(String s) {
    final temp = ffi2.Arena();
    final sView = s.utf8View;
    final result = _ICU4XLocale_set_language(_ffi, sView.allocIn(temp), sView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw LocaleParseError.values[result.union.err];
    }
    
  }

  /// Returns a string representation of [`Locale`] region.
  ///
  /// See the [Rust documentation for `id`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#structfield.id) for more information.
  String? get region {
    final write = _Write();
    final result = _ICU4XLocale_region(_ffi, write._ffi);
    if (!result.isOk) {
      return null;
    }
    return write.finalize();
  }

  /// Set the region part of the [`Locale`].
  ///
  /// See the [Rust documentation for `try_from_str`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.try_from_str) for more information.
  ///
  /// Throws [LocaleParseError] on failure.
  void setRegion(String s) {
    final temp = ffi2.Arena();
    final sView = s.utf8View;
    final result = _ICU4XLocale_set_region(_ffi, sView.allocIn(temp), sView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw LocaleParseError.values[result.union.err];
    }
    
  }

  /// Returns a string representation of [`Locale`] script.
  ///
  /// See the [Rust documentation for `id`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#structfield.id) for more information.
  String? get script {
    final write = _Write();
    final result = _ICU4XLocale_script(_ffi, write._ffi);
    if (!result.isOk) {
      return null;
    }
    return write.finalize();
  }

  /// Set the script part of the [`Locale`]. Pass an empty string to remove the script.
  ///
  /// See the [Rust documentation for `try_from_str`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.try_from_str) for more information.
  ///
  /// Throws [LocaleParseError] on failure.
  void setScript(String s) {
    final temp = ffi2.Arena();
    final sView = s.utf8View;
    final result = _ICU4XLocale_set_script(_ffi, sView.allocIn(temp), sView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw LocaleParseError.values[result.union.err];
    }
    
  }

  /// Best effort locale canonicalizer that doesn't need any data
  ///
  /// Use LocaleCanonicalizer for better control and functionality
  ///
  /// See the [Rust documentation for `canonicalize`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.canonicalize) for more information.
  ///
  /// Throws [LocaleParseError] on failure.
  static String canonicalize(String s) {
    final temp = ffi2.Arena();
    final sView = s.utf8View;
    final write = _Write();
    final result = _ICU4XLocale_canonicalize(sView.allocIn(temp), sView.length, write._ffi);
    temp.releaseAll();
    if (!result.isOk) {
      throw LocaleParseError.values[result.union.err];
    }
    return write.finalize();
  }

  /// Returns a string representation of [`Locale`].
  ///
  /// See the [Rust documentation for `write_to`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.write_to) for more information.
  @override
  String toString() {
    final write = _Write();
    _ICU4XLocale_to_string(_ffi, write._ffi);
    return write.finalize();
  }

  /// See the [Rust documentation for `normalizing_eq`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.normalizing_eq) for more information.
  bool normalizingEq(String other) {
    final temp = ffi2.Arena();
    final otherView = other.utf8View;
    final result = _ICU4XLocale_normalizing_eq(_ffi, otherView.allocIn(temp), otherView.length);
    temp.releaseAll();
    return result;
  }

  /// See the [Rust documentation for `strict_cmp`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.strict_cmp) for more information.
  int compareToString(String other) {
    final temp = ffi2.Arena();
    final otherView = other.utf8View;
    final result = _ICU4XLocale_strict_cmp_(_ffi, otherView.allocIn(temp), otherView.length);
    temp.releaseAll();
    return result;
  }

  /// See the [Rust documentation for `total_cmp`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html#method.total_cmp) for more information.
  int compareTo(Locale other) {
    final result = _ICU4XLocale_total_cmp_(_ffi, other._ffi);
    return result;
  }

  @override
  bool operator ==(Object other) => other is Locale && compareTo(other) == 0;
  @override
  int get hashCode => 42; // Cannot get hash from Rust, so a constant is the only correct impl
}

@meta.ResourceIdentifier('ICU4XLocale_destroy')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XLocale_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XLocale_destroy(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('ICU4XLocale_create_from_string')
@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XLocale_create_from_string')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XLocale_create_from_string(ffi.Pointer<ffi.Uint8> nameData, int nameLength);

@meta.ResourceIdentifier('ICU4XLocale_create_und')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'ICU4XLocale_create_und')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XLocale_create_und();

@meta.ResourceIdentifier('ICU4XLocale_clone')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_clone')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XLocale_clone(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XLocale_basename')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_basename')
// ignore: non_constant_identifier_names
external void _ICU4XLocale_basename(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('ICU4XLocale_get_unicode_extension')
@ffi.Native<_ResultVoidVoid Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_get_unicode_extension')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _ICU4XLocale_get_unicode_extension(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> sData, int sLength, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('ICU4XLocale_language')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_language')
// ignore: non_constant_identifier_names
external void _ICU4XLocale_language(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('ICU4XLocale_set_language')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XLocale_set_language')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XLocale_set_language(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> sData, int sLength);

@meta.ResourceIdentifier('ICU4XLocale_region')
@ffi.Native<_ResultVoidVoid Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_region')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _ICU4XLocale_region(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('ICU4XLocale_set_region')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XLocale_set_region')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XLocale_set_region(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> sData, int sLength);

@meta.ResourceIdentifier('ICU4XLocale_script')
@ffi.Native<_ResultVoidVoid Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_script')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _ICU4XLocale_script(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('ICU4XLocale_set_script')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XLocale_set_script')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XLocale_set_script(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> sData, int sLength);

@meta.ResourceIdentifier('ICU4XLocale_canonicalize')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Uint8>, ffi.Size, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_canonicalize')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XLocale_canonicalize(ffi.Pointer<ffi.Uint8> sData, int sLength, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('ICU4XLocale_to_string')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_to_string')
// ignore: non_constant_identifier_names
external void _ICU4XLocale_to_string(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('ICU4XLocale_normalizing_eq')
@ffi.Native<ffi.Bool Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XLocale_normalizing_eq')
// ignore: non_constant_identifier_names
external bool _ICU4XLocale_normalizing_eq(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> otherData, int otherLength);

@meta.ResourceIdentifier('ICU4XLocale_strict_cmp_')
@ffi.Native<ffi.Int8 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XLocale_strict_cmp_')
// ignore: non_constant_identifier_names
external int _ICU4XLocale_strict_cmp_(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> otherData, int otherLength);

@meta.ResourceIdentifier('ICU4XLocale_total_cmp_')
@ffi.Native<ffi.Int8 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XLocale_total_cmp_')
// ignore: non_constant_identifier_names
external int _ICU4XLocale_total_cmp_(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> other);
