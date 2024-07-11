#ifndef TimeZoneInvalidIdError_D_HPP
#define TimeZoneInvalidIdError_D_HPP

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <memory>
#include <optional>
#include "diplomat_runtime.hpp"


namespace capi {
    typedef enum TimeZoneInvalidIdError {
      TimeZoneInvalidIdError_TodoZst = 0,
    } TimeZoneInvalidIdError;
}

class TimeZoneInvalidIdError {
public:
  enum Value {
    TodoZst = 0,
  };

  TimeZoneInvalidIdError() = default;
  // Implicit conversions between enum and ::Value
  constexpr TimeZoneInvalidIdError(Value v) : value(v) {}
  constexpr operator Value() const { return value; }
  // Prevent usage as boolean value
  explicit operator bool() const = delete;

  inline capi::TimeZoneInvalidIdError AsFFI() const;
  inline static TimeZoneInvalidIdError FromFFI(capi::TimeZoneInvalidIdError c_enum);
private:
    Value value;
};


#endif // TimeZoneInvalidIdError_D_HPP
