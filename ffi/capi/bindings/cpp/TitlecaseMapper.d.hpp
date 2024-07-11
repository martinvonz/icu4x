#ifndef TitlecaseMapper_D_HPP
#define TitlecaseMapper_D_HPP

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <memory>
#include <optional>
#include "diplomat_runtime.hpp"
#include "DataError.d.hpp"
#include "TitlecaseOptionsV1.d.hpp"

class DataProvider;
class Locale;
struct TitlecaseOptionsV1;
class DataError;


namespace capi {
    typedef struct TitlecaseMapper TitlecaseMapper;
}

class TitlecaseMapper {
public:

  inline static diplomat::result<std::unique_ptr<TitlecaseMapper>, DataError> create(const DataProvider& provider);

  inline diplomat::result<std::string, diplomat::Utf8Error> titlecase_segment_v1(std::string_view s, const Locale& locale, TitlecaseOptionsV1 options) const;

  inline const capi::TitlecaseMapper* AsFFI() const;
  inline capi::TitlecaseMapper* AsFFI();
  inline static const TitlecaseMapper* FromFFI(const capi::TitlecaseMapper* ptr);
  inline static TitlecaseMapper* FromFFI(capi::TitlecaseMapper* ptr);
  inline static void operator delete(void* ptr);
private:
  TitlecaseMapper() = delete;
  TitlecaseMapper(const TitlecaseMapper&) = delete;
  TitlecaseMapper(TitlecaseMapper&&) noexcept = delete;
  TitlecaseMapper operator=(const TitlecaseMapper&) = delete;
  TitlecaseMapper operator=(TitlecaseMapper&&) noexcept = delete;
  static void operator delete[](void*, size_t) = delete;
};


#endif // TitlecaseMapper_D_HPP
