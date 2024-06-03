#ifndef ICU4XGregorianDateFormatter_H
#define ICU4XGregorianDateFormatter_H

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "diplomat_runtime.h"
#include "ICU4XDataProvider.d.h"
#include "ICU4XDataProvider.h"
#include "ICU4XDateLength.d.h"
#include "ICU4XDateLength.h"
#include "ICU4XIsoDate.d.h"
#include "ICU4XIsoDate.h"
#include "ICU4XIsoDateTime.d.h"
#include "ICU4XIsoDateTime.h"
#include "ICU4XLocale.d.h"
#include "ICU4XLocale.h"
#include "diplomat_result_box_ICU4XGregorianDateFormatter_ICU4XError.d.h"

#include "ICU4XGregorianDateFormatter.d.h"

#ifdef __cplusplus
namespace capi {
extern "C" {
#endif // __cplusplus


diplomat_result_box_ICU4XGregorianDateFormatter_ICU4XError ICU4XGregorianDateFormatter_create_with_length(const ICU4XDataProvider* provider, const ICU4XLocale* locale, ICU4XDateLength length);

void ICU4XGregorianDateFormatter_format_iso_date(const ICU4XGregorianDateFormatter* self, const ICU4XIsoDate* value, DiplomatWrite* write);

void ICU4XGregorianDateFormatter_format_iso_datetime(const ICU4XGregorianDateFormatter* self, const ICU4XIsoDateTime* value, DiplomatWrite* write);

void ICU4XGregorianDateFormatter_destroy(ICU4XGregorianDateFormatter* self);


#ifdef __cplusplus
} // extern "C"
} // namespace capi
#endif // __cplusplus

#endif // ICU4XGregorianDateFormatter_H
