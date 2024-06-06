#ifndef ICU4XDate_H
#define ICU4XDate_H

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "diplomat_runtime.h"
#include "ICU4XCalendar.d.h"
#include "ICU4XCalendar.h"
#include "ICU4XIsoDate.d.h"
#include "ICU4XIsoDate.h"
#include "ICU4XIsoWeekday.d.h"
#include "ICU4XIsoWeekday.h"
#include "ICU4XWeekCalculator.d.h"
#include "ICU4XWeekCalculator.h"
#include "ICU4XWeekOf.d.h"
#include "ICU4XWeekOf.h"
#include "diplomat_result_box_ICU4XDate_ICU4XError.d.h"

#include "ICU4XDate.d.h"

#ifdef __cplusplus
namespace capi {
extern "C" {
#endif // __cplusplus


diplomat_result_box_ICU4XDate_ICU4XError ICU4XDate_create_from_iso_in_calendar(int32_t year, uint8_t month, uint8_t day, const ICU4XCalendar* calendar);

diplomat_result_box_ICU4XDate_ICU4XError ICU4XDate_create_from_codes_in_calendar(const char* era_code_data, size_t era_code_len, int32_t year, const char* month_code_data, size_t month_code_len, uint8_t day, const ICU4XCalendar* calendar);

ICU4XDate* ICU4XDate_to_calendar(const ICU4XDate* self, const ICU4XCalendar* calendar);

ICU4XIsoDate* ICU4XDate_to_iso(const ICU4XDate* self);

uint16_t ICU4XDate_day_of_year(const ICU4XDate* self);

uint32_t ICU4XDate_day_of_month(const ICU4XDate* self);

ICU4XIsoWeekday ICU4XDate_day_of_week(const ICU4XDate* self);

uint32_t ICU4XDate_week_of_month(const ICU4XDate* self, ICU4XIsoWeekday first_weekday);

ICU4XWeekOf ICU4XDate_week_of_year(const ICU4XDate* self, const ICU4XWeekCalculator* calculator);

uint32_t ICU4XDate_ordinal_month(const ICU4XDate* self);

void ICU4XDate_month_code(const ICU4XDate* self, DiplomatWrite* write);

int32_t ICU4XDate_year_in_era(const ICU4XDate* self);

void ICU4XDate_era(const ICU4XDate* self, DiplomatWrite* write);

uint8_t ICU4XDate_months_in_year(const ICU4XDate* self);

uint8_t ICU4XDate_days_in_month(const ICU4XDate* self);

uint16_t ICU4XDate_days_in_year(const ICU4XDate* self);

ICU4XCalendar* ICU4XDate_calendar(const ICU4XDate* self);

void ICU4XDate_destroy(ICU4XDate* self);


#ifdef __cplusplus
} // extern "C"
} // namespace capi
#endif // __cplusplus

#endif // ICU4XDate_H
