// This file is part of ICU4X. For terms of use, please see the file
// called LICENSE at the top level of the ICU4X source tree
// (online at: https://github.com/unicode-org/icu4x/blob/main/LICENSE ).

#include "DataProvider.h"
#include "Locale.h"
#include "FixedDecimal.h"
#include "FixedDecimalFormatter.h"
#include "Logger.h"
#include <string.h>
#include <stdio.h>

int main() {
    ICU4XLogger_init_simple_logger();
    ICU4XLocale_create_from_string_result locale_result = ICU4XLocale_create_from_string("bn", 2);
    if (!locale_result.is_ok) {
        return 1;
    }
    Locale* locale = locale_result.ok;
    DataProvider* provider = ICU4XDataProvider_create_compiled();

    FixedDecimal* decimal = ICU4XFixedDecimal_create_from_u64(1000007);

    ICU4XFixedDecimalFormatter_create_with_grouping_strategy_result fdf_result =
        ICU4XFixedDecimalFormatter_create_with_grouping_strategy(provider, locale, FixedDecimalGroupingStrategy_Auto);
    if (!fdf_result.is_ok)  {
        printf("Failed to create FixedDecimalFormatter\n");
        return 1;
    }
    FixedDecimalFormatter* fdf = fdf_result.ok;
    char output[40];

    DiplomatWrite write = diplomat_simple_write(output, 40);

    ICU4XFixedDecimalFormatter_format(fdf, decimal, &write);
    if (write.grow_failed) {
        printf("format overflowed the string.\n");
        return 1;
    }
    printf("Output is %s\n", output);

    const char* expected = u8"১০,০০,০০৭";
    if (strcmp(output, expected) != 0) {
        printf("Output does not match expected output!\n");
        return 1;
    }

    ICU4XFixedDecimal_multiply_pow10(decimal, 2);

    ICU4XFixedDecimal_set_sign(decimal, FixedDecimalSign_Negative);

    write = diplomat_simple_write(output, 40);

    ICU4XFixedDecimalFormatter_format(fdf, decimal, &write);
    if (write.grow_failed) {
        printf("format overflowed the string.\n");
        return 1;
    }
    printf("Output x100 and negated is %s\n", output);

    expected = u8"-১০,০০,০০,৭০০";
    if (strcmp(output, expected) != 0) {
        printf("Output does not match expected output!\n");
        return 1;
    }

    ICU4XFixedDecimal_destroy(decimal);

    ICU4XFixedDecimal_create_from_string_result fd_result = ICU4XFixedDecimal_create_from_string("1000007.070", 11);
    if (!fd_result.is_ok) {
        printf("Failed to create FixedDecimal from string.\n");
        return 1;
    }
    decimal = fd_result.ok;

    write = diplomat_simple_write(output, 40);

    ICU4XFixedDecimalFormatter_format(fdf, decimal, &write);
    if (write.grow_failed) {
        printf("format overflowed the string.\n");
        return 1;
    }
    printf("Output is %s\n", output);

    expected = u8"১০,০০,০০৭.০৭০";
    if (strcmp(output, expected) != 0) {
        printf("Output does not match expected output!\n");
        return 1;
    }

    ICU4XFixedDecimal_destroy(decimal);
    ICU4XFixedDecimalFormatter_destroy(fdf);
    ICU4XLocale_destroy(locale);
    ICU4XDataProvider_destroy(provider);

    return 0;
}
