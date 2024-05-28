// generated by diplomat-tool

part of 'lib.g.dart';

/// A common enum for errors that ICU4X may return, organized by API
///
/// The error names are stable and can be checked against as strings in the JS API
///
/// Additional information: [1](https://docs.rs/fixed_decimal/latest/fixed_decimal/enum.FixedDecimalError.html), [2](https://docs.rs/icu/latest/icu/calendar/enum.CalendarError.html), [3](https://docs.rs/icu/latest/icu/collator/enum.CollatorError.html), [4](https://docs.rs/icu/latest/icu/datetime/enum.DateTimeError.html), [5](https://docs.rs/icu/latest/icu/decimal/enum.DecimalError.html), [6](https://docs.rs/icu/latest/icu/list/enum.ListError.html), [7](https://docs.rs/icu/latest/icu/locid/enum.ParserError.html), [8](https://docs.rs/icu/latest/icu/locid_transform/enum.LocaleTransformError.html), [9](https://docs.rs/icu/latest/icu/normalizer/enum.NormalizerError.html), [10](https://docs.rs/icu/latest/icu/plurals/enum.PluralsError.html), [11](https://docs.rs/icu/latest/icu/properties/enum.PropertiesError.html), [12](https://docs.rs/icu/latest/icu/provider/struct.DataError.html), [13](https://docs.rs/icu/latest/icu/provider/enum.DataErrorKind.html), [14](https://docs.rs/icu/latest/icu/segmenter/enum.SegmenterError.html), [15](https://docs.rs/icu/latest/icu/timezone/enum.TimeZoneError.html), [16](https://docs.rs/icu_experimental/latest/icu_experimental/units/enum.ConversionError.html)
enum Error {
  /// The error is not currently categorized as ICU4XError.
  /// Please file a bug
  unknownError,

  /// An error arising from writing to a string
  /// Typically found when not enough space is allocated
  /// Most APIs that return a string may return this error
  writeableError,

  /// Some input was out of bounds
  outOfBoundsError,

  dataMissingDataKeyError,

  dataMissingVariantError,

  dataMissingLocaleError,

  dataNeedsVariantError,

  dataNeedsLocaleError,

  dataExtraneousLocaleError,

  dataFilteredResourceError,

  dataMismatchedTypeError,

  dataMissingPayloadError,

  dataInvalidStateError,

  dataCustomError,

  dataIoError,

  dataUnavailableBufferFormatError,

  dataMismatchedAnyBufferError,

  /// The subtag being requested was not set
  localeUndefinedSubtagError,

  /// The locale or subtag string failed to parse
  localeParserLanguageError,

  localeParserSubtagError,

  localeParserExtensionError,

  /// Attempted to construct an invalid data struct
  dataStructValidityError,

  propertyUnknownScriptIdError,

  propertyUnknownGeneralCategoryGroupError,

  propertyUnexpectedPropertyNameError,

  fixedDecimalLimitError,

  fixedDecimalSyntaxError,

  pluralsParserError,

  calendarParseError,

  calendarOverflowError,

  calendarUnderflowError,

  calendarOutOfRangeError,

  calendarUnknownEraError,

  calendarUnknownMonthCodeError,

  calendarMissingInputError,

  calendarUnknownKindError,

  calendarMissingError,

  dateTimePatternError,

  dateTimeMissingInputFieldError,

  dateTimeSkeletonError,

  dateTimeUnsupportedFieldError,

  dateTimeUnsupportedOptionsError,

  dateTimeMissingWeekdaySymbolError,

  dateTimeMissingMonthSymbolError,

  dateTimeFixedDecimalError,

  dateTimeMismatchedCalendarError,

  tinyStrTooLargeError,

  tinyStrContainsNullError,

  tinyStrNonAsciiError,

  timeZoneOffsetOutOfBoundsError,

  timeZoneInvalidOffsetError,

  timeZoneMissingInputError,

  timeZoneInvalidIdError,

  normalizerFutureExtensionError,

  normalizerValidationError,

  invalidCldrUnitIdentifierError;

  int get _ffi {
    switch (this) {
      case unknownError:
        return 0;
      case writeableError:
        return 1;
      case outOfBoundsError:
        return 2;
      case dataMissingDataKeyError:
        return 256;
      case dataMissingVariantError:
        return 257;
      case dataMissingLocaleError:
        return 258;
      case dataNeedsVariantError:
        return 259;
      case dataNeedsLocaleError:
        return 260;
      case dataExtraneousLocaleError:
        return 261;
      case dataFilteredResourceError:
        return 262;
      case dataMismatchedTypeError:
        return 263;
      case dataMissingPayloadError:
        return 264;
      case dataInvalidStateError:
        return 265;
      case dataCustomError:
        return 266;
      case dataIoError:
        return 267;
      case dataUnavailableBufferFormatError:
        return 268;
      case dataMismatchedAnyBufferError:
        return 269;
      case localeUndefinedSubtagError:
        return 512;
      case localeParserLanguageError:
        return 513;
      case localeParserSubtagError:
        return 514;
      case localeParserExtensionError:
        return 515;
      case dataStructValidityError:
        return 768;
      case propertyUnknownScriptIdError:
        return 1024;
      case propertyUnknownGeneralCategoryGroupError:
        return 1025;
      case propertyUnexpectedPropertyNameError:
        return 1026;
      case fixedDecimalLimitError:
        return 1280;
      case fixedDecimalSyntaxError:
        return 1281;
      case pluralsParserError:
        return 1536;
      case calendarParseError:
        return 1792;
      case calendarOverflowError:
        return 1793;
      case calendarUnderflowError:
        return 1794;
      case calendarOutOfRangeError:
        return 1795;
      case calendarUnknownEraError:
        return 1796;
      case calendarUnknownMonthCodeError:
        return 1797;
      case calendarMissingInputError:
        return 1798;
      case calendarUnknownKindError:
        return 1799;
      case calendarMissingError:
        return 1800;
      case dateTimePatternError:
        return 2048;
      case dateTimeMissingInputFieldError:
        return 2049;
      case dateTimeSkeletonError:
        return 2050;
      case dateTimeUnsupportedFieldError:
        return 2051;
      case dateTimeUnsupportedOptionsError:
        return 2052;
      case dateTimeMissingWeekdaySymbolError:
        return 2053;
      case dateTimeMissingMonthSymbolError:
        return 2054;
      case dateTimeFixedDecimalError:
        return 2055;
      case dateTimeMismatchedCalendarError:
        return 2056;
      case tinyStrTooLargeError:
        return 2304;
      case tinyStrContainsNullError:
        return 2305;
      case tinyStrNonAsciiError:
        return 2306;
      case timeZoneOffsetOutOfBoundsError:
        return 2560;
      case timeZoneInvalidOffsetError:
        return 2561;
      case timeZoneMissingInputError:
        return 2562;
      case timeZoneInvalidIdError:
        return 2563;
      case normalizerFutureExtensionError:
        return 2816;
      case normalizerValidationError:
        return 2817;
      case invalidCldrUnitIdentifierError:
        return 3072;
    }
  }
}
