// generated by diplomat-tool
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";


/** An ICU4X Measurement Unit object which represents a single unit of measurement
*such as `meter`, `second`, `kilometer-per-hour`, `square-meter`, etc.
*
*You can create an instance of this object using [`MeasureUnitParser`] by calling the `parse_measure_unit` method.
*
*See the [Rust documentation for `MeasureUnit`](https://docs.rs/icu/latest/icu/experimental/measure/measureunit/struct.MeasureUnit.html) for more information.
*/
export class MeasureUnit {
    

    get ffiValue(): pointer;
}