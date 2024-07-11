#ifndef TimeZoneIdMapperWithFastCanonicalization_D_HPP
#define TimeZoneIdMapperWithFastCanonicalization_D_HPP

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <memory>
#include <optional>
#include "diplomat_runtime.hpp"
#include "DataError.d.hpp"
#include "TimeZoneInvalidIdError.d.hpp"

class DataProvider;
class DataError;
class TimeZoneInvalidIdError;


namespace capi {
    typedef struct TimeZoneIdMapperWithFastCanonicalization TimeZoneIdMapperWithFastCanonicalization;
}

class TimeZoneIdMapperWithFastCanonicalization {
public:

  inline static diplomat::result<std::unique_ptr<TimeZoneIdMapperWithFastCanonicalization>, DataError> create(const DataProvider& provider);

  inline diplomat::result<diplomat::result<std::string, TimeZoneInvalidIdError>, diplomat::Utf8Error> canonicalize_iana(std::string_view value) const;

  inline diplomat::result<std::string, TimeZoneInvalidIdError> canonical_iana_from_bcp47(std::string_view value) const;

  inline const capi::TimeZoneIdMapperWithFastCanonicalization* AsFFI() const;
  inline capi::TimeZoneIdMapperWithFastCanonicalization* AsFFI();
  inline static const TimeZoneIdMapperWithFastCanonicalization* FromFFI(const capi::TimeZoneIdMapperWithFastCanonicalization* ptr);
  inline static TimeZoneIdMapperWithFastCanonicalization* FromFFI(capi::TimeZoneIdMapperWithFastCanonicalization* ptr);
  inline static void operator delete(void* ptr);
private:
  TimeZoneIdMapperWithFastCanonicalization() = delete;
  TimeZoneIdMapperWithFastCanonicalization(const TimeZoneIdMapperWithFastCanonicalization&) = delete;
  TimeZoneIdMapperWithFastCanonicalization(TimeZoneIdMapperWithFastCanonicalization&&) noexcept = delete;
  TimeZoneIdMapperWithFastCanonicalization operator=(const TimeZoneIdMapperWithFastCanonicalization&) = delete;
  TimeZoneIdMapperWithFastCanonicalization operator=(TimeZoneIdMapperWithFastCanonicalization&&) noexcept = delete;
  static void operator delete[](void*, size_t) = delete;
};


#endif // TimeZoneIdMapperWithFastCanonicalization_D_HPP
