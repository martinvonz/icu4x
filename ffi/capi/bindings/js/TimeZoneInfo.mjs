// generated by diplomat-tool
import { IsoDateTime } from "./IsoDateTime.mjs"
import { TimeZoneIdMapper } from "./TimeZoneIdMapper.mjs"
import { TimeZoneInvalidOffsetError } from "./TimeZoneInvalidOffsetError.mjs"
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";


/** See the [Rust documentation for `TimeZoneInfo`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html) for more information.
*/
const TimeZoneInfo_box_destroy_registry = new FinalizationRegistry((ptr) => {
    wasm.icu4x_TimeZoneInfo_destroy_mv1(ptr);
});

export class TimeZoneInfo {
    // Internal ptr reference:
    #ptr = null;

    // Lifetimes are only to keep dependencies alive.
    // Since JS won't garbage collect until there are no incoming edges.
    #selfEdge = [];
    
    constructor(symbol, ptr, selfEdge) {
        if (symbol !== diplomatRuntime.internalConstructor) {
            console.error("TimeZoneInfo is an Opaque type. You cannot call its constructor.");
            return;
        }
        
        this.#ptr = ptr;
        this.#selfEdge = selfEdge;
        
        // Are we being borrowed? If not, we can register.
        if (this.#selfEdge.length === 0) {
            TimeZoneInfo_box_destroy_registry.register(this, this.#ptr);
        }
    }

    get ffiValue() {
        return this.#ptr;
    }

    static unknown() {
        const result = wasm.icu4x_TimeZoneInfo_unknown_mv1();
    
        try {
            return new TimeZoneInfo(diplomatRuntime.internalConstructor, result, []);
        }
        
        finally {}
    }

    static utc() {
        const result = wasm.icu4x_TimeZoneInfo_utc_mv1();
    
        try {
            return new TimeZoneInfo(diplomatRuntime.internalConstructor, result, []);
        }
        
        finally {}
    }

    trySetOffsetSeconds(offsetSeconds) {
        const result = wasm.icu4x_TimeZoneInfo_try_set_offset_seconds_mv1(this.ffiValue, offsetSeconds);
    
        try {
            if (result !== 1) {
                const cause = new TimeZoneInvalidOffsetError(diplomatRuntime.internalConstructor);
                throw new globalThis.Error('TimeZoneInvalidOffsetError', { cause });
            }
    
        }
        
        finally {}
    }

    setOffsetEighthsOfHour(offsetEighthsOfHour) {wasm.icu4x_TimeZoneInfo_set_offset_eighths_of_hour_mv1(this.ffiValue, offsetEighthsOfHour);
    
        try {}
        
        finally {}
    }

    trySetOffsetStr(offset) {
        let functionCleanupArena = new diplomatRuntime.CleanupArena();
        
        const offsetSlice = functionCleanupArena.alloc(diplomatRuntime.DiplomatBuf.str8(wasm, offset));
        
        const result = wasm.icu4x_TimeZoneInfo_try_set_offset_str_mv1(this.ffiValue, ...offsetSlice.splat());
    
        try {
            if (result !== 1) {
                const cause = new TimeZoneInvalidOffsetError(diplomatRuntime.internalConstructor);
                throw new globalThis.Error('TimeZoneInvalidOffsetError', { cause });
            }
    
        }
        
        finally {
            functionCleanupArena.free();
        }
    }

    offsetEighthsOfHour() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 2, 1, true);
        
        const result = wasm.icu4x_TimeZoneInfo_offset_eighths_of_hour_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Int8Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0];
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    clearOffset() {wasm.icu4x_TimeZoneInfo_clear_offset_mv1(this.ffiValue);
    
        try {}
        
        finally {}
    }

    get offsetSeconds() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 5, 4, true);
        
        const result = wasm.icu4x_TimeZoneInfo_offset_seconds_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Int32Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0];
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    get isOffsetPositive() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 2, 1, true);
        
        const result = wasm.icu4x_TimeZoneInfo_is_offset_positive_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Uint8Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0] === 1;
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    get isOffsetZero() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 2, 1, true);
        
        const result = wasm.icu4x_TimeZoneInfo_is_offset_zero_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Uint8Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0] === 1;
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    get offsetHoursPart() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 5, 4, true);
        
        const result = wasm.icu4x_TimeZoneInfo_offset_hours_part_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Int32Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0];
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    get offsetMinutesPart() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 5, 4, true);
        
        const result = wasm.icu4x_TimeZoneInfo_offset_minutes_part_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Uint32Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0];
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    get offsetSecondsPart() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 5, 4, true);
        
        const result = wasm.icu4x_TimeZoneInfo_offset_seconds_part_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Uint32Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0];
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    setTimeZoneId(id) {
        let functionCleanupArena = new diplomatRuntime.CleanupArena();
        
        const idSlice = functionCleanupArena.alloc(diplomatRuntime.DiplomatBuf.str8(wasm, id));
        wasm.icu4x_TimeZoneInfo_set_time_zone_id_mv1(this.ffiValue, ...idSlice.splat());
    
        try {}
        
        finally {
            functionCleanupArena.free();
        }
    }

    setIanaTimeZoneId(mapper, id) {
        let functionCleanupArena = new diplomatRuntime.CleanupArena();
        
        const idSlice = functionCleanupArena.alloc(diplomatRuntime.DiplomatBuf.str8(wasm, id));
        wasm.icu4x_TimeZoneInfo_set_iana_time_zone_id_mv1(this.ffiValue, mapper.ffiValue, ...idSlice.splat());
    
        try {}
        
        finally {
            functionCleanupArena.free();
        }
    }

    get timeZoneId() {
        const write = new diplomatRuntime.DiplomatWriteBuf(wasm);
        wasm.icu4x_TimeZoneInfo_time_zone_id_mv1(this.ffiValue, write.buffer);
    
        try {
            return write.readString8();
        }
        
        finally {
            write.free();
        }
    }

    trySetZoneVariant(id) {
        let functionCleanupArena = new diplomatRuntime.CleanupArena();
        
        const idSlice = functionCleanupArena.alloc(diplomatRuntime.DiplomatBuf.str8(wasm, id));
        
        const result = wasm.icu4x_TimeZoneInfo_try_set_zone_variant_mv1(this.ffiValue, ...idSlice.splat());
    
        try {
            return result === 1;
        }
        
        finally {
            functionCleanupArena.free();
        }
    }

    clearZoneVariant() {wasm.icu4x_TimeZoneInfo_clear_zone_variant_mv1(this.ffiValue);
    
        try {}
        
        finally {}
    }

    get zoneVariant() {
        const write = new diplomatRuntime.DiplomatWriteBuf(wasm);
        
        const result = wasm.icu4x_TimeZoneInfo_zone_variant_mv1(this.ffiValue, write.buffer);
    
        try {
            return result === 0 ? null : write.readString8();
        }
        
        finally {
            write.free();
        }
    }

    setStandardTime() {wasm.icu4x_TimeZoneInfo_set_standard_time_mv1(this.ffiValue);
    
        try {}
        
        finally {}
    }

    setDaylightTime() {wasm.icu4x_TimeZoneInfo_set_daylight_time_mv1(this.ffiValue);
    
        try {}
        
        finally {}
    }

    get isStandardTime() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 2, 1, true);
        
        const result = wasm.icu4x_TimeZoneInfo_is_standard_time_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Uint8Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0] === 1;
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    get isDaylightTime() {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 2, 1, true);
        
        const result = wasm.icu4x_TimeZoneInfo_is_daylight_time_mv1(diplomatReceive.buffer, this.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                return null;
            }
            return (new Uint8Array(wasm.memory.buffer, diplomatReceive.buffer, 1))[0] === 1;
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    setLocalTime(datetime) {wasm.icu4x_TimeZoneInfo_set_local_time_mv1(this.ffiValue, datetime.ffiValue);
    
        try {}
        
        finally {}
    }

    clearLocalTime() {wasm.icu4x_TimeZoneInfo_clear_local_time_mv1(this.ffiValue);
    
        try {}
        
        finally {}
    }

    getLocalTime() {
        const result = wasm.icu4x_TimeZoneInfo_get_local_time_mv1(this.ffiValue);
    
        try {
            return result === 0 ? null : new IsoDateTime(diplomatRuntime.internalConstructor, result, []);
        }
        
        finally {}
    }
}