
(module
  (func (export "i8x16_replace_lane-first") (param v128 i32) (result v128)
    (i8x16.replace_lane 0 (local.get 0) (local.get 1)))
  (func (export "i8x16_replace_lane-last") (param v128 i32) (result v128)
    (i8x16.replace_lane 15 (local.get 0) (local.get 1)))
  (func (export "i16x8_replace_lane-first") (param v128 i32) (result v128)
    (i16x8.replace_lane 0 (local.get 0) (local.get 1)))
  (func (export "i16x8_replace_lane-last") (param v128 i32) (result v128)
    (i16x8.replace_lane 7 (local.get 0) (local.get 1)))
  (func (export "i32x4_replace_lane-first") (param v128 i32) (result v128)
    (i32x4.replace_lane 0 (local.get 0) (local.get 1)))
  (func (export "i32x4_replace_lane-last") (param v128 i32) (result v128)
    (i32x4.replace_lane 3 (local.get 0) (local.get 1)))
  (func (export "f32x4_replace_lane-first") (param v128 f32) (result v128)
    (f32x4.replace_lane 0 (local.get 0) (local.get 1)))
  (func (export "f32x4_replace_lane-last") (param v128 f32) (result v128)
    (f32x4.replace_lane 3 (local.get 0) (local.get 1)))
  (func (export "i64x2_replace_lane-first") (param v128 i64) (result v128)
    (i64x2.replace_lane 0 (local.get 0) (local.get 1)))
  (func (export "i64x2_replace_lane-last") (param v128 i64) (result v128)
    (i64x2.replace_lane 1 (local.get 0) (local.get 1)))
  (func (export "f64x2_replace_lane-first") (param v128 f64) (result v128)
    (f64x2.replace_lane 0 (local.get 0) (local.get 1)))
  (func (export "f64x2_replace_lane-last") (param v128 f64) (result v128)
    (f64x2.replace_lane 1 (local.get 0) (local.get 1)))
)

(assert_return (invoke "i8x16_replace_lane-first" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 127)) (v128.const i8x16 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
(assert_return (invoke "i8x16_replace_lane-first" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 128)) (v128.const i8x16 -128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
(assert_return (invoke "i8x16_replace_lane-first" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 255)) (v128.const i8x16 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
(assert_return (invoke "i8x16_replace_lane-first" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 256)) (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
(assert_return (invoke "i8x16_replace_lane-last" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const -128)) (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -128))
(assert_return (invoke "i8x16_replace_lane-last" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const -129)) (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127))
(assert_return (invoke "i8x16_replace_lane-last" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 32767)) (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0xff))
(assert_return (invoke "i8x16_replace_lane-last" (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const -32768)) (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))


(assert_return (invoke "i16x8_replace_lane-first" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 32767)) (v128.const i16x8 32767 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8_replace_lane-first" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 32768)) (v128.const i16x8 -32768 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8_replace_lane-first" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 65535)) (v128.const i16x8 -1 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8_replace_lane-first" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 65536)) (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8_replace_lane-first" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 012345)) (v128.const i16x8 012_345 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8_replace_lane-first" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const -0x01234)) (v128.const i16x8 -0x0_1234 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8_replace_lane-last" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const -32768)) (v128.const i16x8 0 0 0 0 0 0 0 -32768))
(assert_return (invoke "i16x8_replace_lane-last" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const -32769)) (v128.const i16x8 0 0 0 0 0 0 0 32767))
(assert_return (invoke "i16x8_replace_lane-last" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 0x7fffffff)) (v128.const i16x8 0 0 0 0 0 0 0 0xffff))
(assert_return (invoke "i16x8_replace_lane-last" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 0x80000000)) (v128.const i16x8 0 0 0 0 0 0 0 0))
(assert_return (invoke "i16x8_replace_lane-last" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 054321)) (v128.const i16x8 0 0 0 0 0 0 0 054_321))
(assert_return (invoke "i16x8_replace_lane-last" (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const -0x04321)) (v128.const i16x8 0 0 0 0 0 0 0 -0x0_4321))


(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 53.0)) (v128.const f32x4 53.0 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const i32x4 0 0 0 0 ) (f32.const 53.0)) (v128.const f32x4 53.0 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const nan)) (v128.const f32x4 nan 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const inf)) (v128.const f32x4 inf 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 nan 0.0 0.0 0.0) (f32.const 3.14)) (v128.const f32x4 3.14 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 inf 0.0 0.0 0.0) (f32.const 1e38)) (v128.const f32x4 1e38 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 inf 0.0 0.0 0.0) (f32.const 0x1.fffffep127)) (v128.const f32x4 0x1.fffffep127 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 inf 0.0 0.0 0.0) (f32.const 0x1p127)) (v128.const f32x4 0x1p127 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0123456789)) (v128.const f32x4 0123456789 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0123456789.)) (v128.const f32x4 0123456789. 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0x0123456789ABCDEF)) (v128.const f32x4 0x0123456789ABCDEF 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-first" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0x0123456789ABCDEF.)) (v128.const f32x4 0x0123456789ABCDEF. 0.0 0.0 0.0))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const -53.0)) (v128.const f32x4 0.0 0.0 0.0 -53.0))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const i32x4 0 0 0 0) (f32.const -53.0)) (v128.const f32x4 0.0 0.0 0.0 -53.0))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const nan)) (v128.const f32x4 0.0 0.0 0.0 nan))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const -inf)) (v128.const f32x4 0.0 0.0 0.0 -inf))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 nan) (f32.const 3.14)) (v128.const f32x4 0.0 0.0 0.0 3.14))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 -inf) (f32.const -1e38)) (v128.const f32x4 0.0 0.0 0.0 -1e38))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 -inf) (f32.const -0x1.fffffep127)) (v128.const f32x4 0.0 0.0 0.0 -0x1.fffffep127))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 -inf) (f32.const -0x1p127)) (v128.const f32x4 0.0 0.0 0.0 -0x1p127))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0123456789e019)) (v128.const f32x4 0.0 0.0 0.0 0123456789e019))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0123456789.e+019)) (v128.const f32x4 0.0 0.0 0.0 0123456789.e+019))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0x0123456789ABCDEFp019)) (v128.const f32x4 0.0 0.0 0.0 0x0123456789ABCDEFp019))
(assert_return (invoke "f32x4_replace_lane-last" (v128.const f32x4 0.0 0.0 0.0 0.0) (f32.const 0x0123456789ABCDEF.p-019)) (v128.const f32x4 0.0 0.0 0.0 0x0123456789ABCDEF.p-019))

(assert_return (invoke "i64x2_replace_lane-first" (v128.const i64x2 0 0) (i64.const 9223372036854775807)) (v128.const i64x2 9223372036854775807 0))
(assert_return (invoke "i64x2_replace_lane-first" (v128.const i64x2 0 0) (i64.const 18446744073709551615)) (v128.const i64x2 -1 0))
(assert_return (invoke "i64x2_replace_lane-first" (v128.const i64x2 0 0) (i64.const 01234567890123456789)) (v128.const i64x2 01_234_567_890_123_456_789 0))
(assert_return (invoke "i64x2_replace_lane-first" (v128.const i64x2 0 0) (i64.const 0x01234567890abcdef)) (v128.const i64x2 0x0_1234_5678_90AB_cdef 0))
(assert_return (invoke "i64x2_replace_lane-last" (v128.const i64x2 0 0) (i64.const 9223372036854775808)) (v128.const i64x2 0 9223372036854775808))
(assert_return (invoke "i64x2_replace_lane-last" (v128.const i64x2 0 0) (i64.const 9223372036854775808)) (v128.const i64x2 0 -9223372036854775808))
(assert_return (invoke "i64x2_replace_lane-last" (v128.const i64x2 0 0) (i64.const 01234567890123456789)) (v128.const i64x2 0 01_234_567_890_123_456_789))
(assert_return (invoke "i64x2_replace_lane-last" (v128.const i64x2 0 0) (i64.const 0x01234567890abcdef)) (v128.const i64x2 0 0x0_1234_5678_90AB_cdef))

(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 1.0 1.0) (f64.const 0x0p+0)) (v128.const f64x2 0.0 1.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 -1.0 -1.0) (f64.const -0x0p-0)) (v128.const f64x2 -0.0 -1.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const 1.25)) (v128.const f64x2 1.25 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const -1.25)) (v128.const f64x2 -1.25 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 -nan 0.0) (f64.const -1.7976931348623157e+308)) (v128.const f64x2 -1.7976931348623157e+308 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 nan 0.0) (f64.const 1.7976931348623157e+308)) (v128.const f64x2 1.7976931348623157e+308 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 -inf 0.0) (f64.const -0x1.fffffffffffffp-1023)) (v128.const f64x2 -0x1.fffffffffffffp-1023 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 inf 0.0) (f64.const 0x1.fffffffffffffp-1023)) (v128.const f64x2 0x1.fffffffffffffp-1023 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const -nan)) (v128.const f64x2 -nan 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const nan)) (v128.const f64x2 nan 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const -inf)) (v128.const f64x2 -inf 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const inf)) (v128.const f64x2 inf 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const 0123456789)) (v128.const f64x2 0123456789 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const 0123456789.)) (v128.const f64x2 0123456789. 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const 0x0123456789ABCDEFabcdef)) (v128.const f64x2 0x0123456789ABCDEFabcdef 0.0))
(assert_return (invoke "f64x2_replace_lane-first" (v128.const f64x2 0.0 0.0) (f64.const 0x0123456789ABCDEFabcdef.)) (v128.const f64x2 0x0123456789ABCDEFabcdef. 0.0))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 2.0 2.0) (f64.const 0.0)) (v128.const f64x2 2.0 0.0))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 -2.0 -2.0) (f64.const -0.0)) (v128.const f64x2 -2.0 -0.0))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const 2.25)) (v128.const f64x2 0.0 2.25))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const -2.25)) (v128.const f64x2 0.0 -2.25))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 -nan) (f64.const -1.7976931348623157e+308)) (v128.const f64x2 0.0 -1.7976931348623157e+308))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 nan) (f64.const 1.7976931348623157e+308)) (v128.const f64x2 0.0 1.7976931348623157e+308))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 -inf) (f64.const -0x1.fffffffffffffp-1023)) (v128.const f64x2 0.0 -0x1.fffffffffffffp-1023))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 inf) (f64.const 0x1.fffffffffffffp-1023)) (v128.const f64x2 0.0 0x1.fffffffffffffp-1023))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const -nan)) (v128.const f64x2 0.0 -nan))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const nan)) (v128.const f64x2 0.0 nan))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const -inf)) (v128.const f64x2 0.0 -inf))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const inf)) (v128.const f64x2 0.0 inf))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const 0123456789e019)) (v128.const f64x2 0.0 0123456789e019))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const 0123456789e+019)) (v128.const f64x2 0.0 0123456789e+019))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const 0123456789.e019)) (v128.const f64x2 0.0 0123456789.e019))
(assert_return (invoke "f64x2_replace_lane-last" (v128.const f64x2 0.0 0.0) (f64.const 0123456789.e-019)) (v128.const f64x2 0.0 0123456789.e-019))

;; Syntax errors for negative values

(assert_malformed (module quote "(func (result v128) (i8x16.replace_lane  -1 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (i16x8.replace_lane  -1 (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (i32x4.replace_lane  -1 (v128.const i32x4 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (f32x4.replace_lane  -1 (v128.const f32x4 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (i64x2.replace_lane  -1 (v128.const i64x2 0 0) (i64.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (f64x2.replace_lane  -1 (v128.const f64x2 0 0) (f64.const 1)))") "unexpected token")

;; Malformed lane index value

(assert_malformed (module quote "(func (result v128) (i8x16.replace_lane 256 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))") "malformed lane index")
(assert_malformed (module quote "(func (result v128) (i16x8.replace_lane 256 (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1)))") "malformed lane index")
(assert_malformed (module quote "(func (result v128) (i32x4.replace_lane 256 (v128.const i32x4 0 0 0 0) (i32.const 1)))") "malformed lane index")
(assert_malformed (module quote "(func (result v128) (f32x4.replace_lane 256 (v128.const f32x4 0 0 0 0) (i32.const 1)))") "malformed lane index")
(assert_malformed (module quote "(func (result v128) (i64x2.replace_lane 256 (v128.const i64x2 0 0) (i64.const 1)))") "malformed lane index")
(assert_malformed (module quote "(func (result v128) (f64x2.replace_lane 256 (v128.const f64x2 0 0) (f64.const 1)))") "malformed lane index")

;; Invalid lane index value
(assert_invalid (module (func (result v128) (i8x16.replace_lane 16 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i8x16.replace_lane 255 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i16x8.replace_lane 16 (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i16x8.replace_lane 255 (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i32x4.replace_lane 4 (v128.const i32x4 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i32x4.replace_lane 255 (v128.const i32x4 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (f32x4.replace_lane 4 (v128.const f32x4 0 0 0 0) (f32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (f32x4.replace_lane 255 (v128.const f32x4 0 0 0 0) (f32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i64x2.replace_lane 2 (v128.const i64x2 0 0) (i64.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i64x2.replace_lane 255 (v128.const i64x2 0 0) (i64.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (f64x2.replace_lane 2 (v128.const f64x2 0 0) (f64.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (f64x2.replace_lane 255 (v128.const f64x2 0 0) (f64.const 1.0)))) "invalid lane index")


;; Lane index is determined by the instruction's interpretation only.

(assert_invalid (module (func (result v128) (i16x8.replace_lane 8 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (i32x4.replace_lane 4 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (f32x4.replace_lane 4 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (f32.const 1)))) "invalid lane index")
(assert_invalid (module (func (result v128) (f64x2.replace_lane 2 (v128.const f64x2 0 0) (f64.const 1.0)))) "invalid lane index")

;; Invalid parameters: required v128 but pass other types

(assert_invalid (module (func (result v128) (i16x8.replace_lane 0 (i64.const 0) (i32.const 1)))) "type mismatch")
(assert_invalid (module (func (result v128) (i32x4.replace_lane 0 (i32.const 0) (i32.const 1)))) "type mismatch")
(assert_invalid (module (func (result v128) (f32x4.replace_lane 0 (f32.const 0.0) (i32.const 1)))) "type mismatch")
(assert_invalid (module (func (result v128) (f32x4.replace_lane 0 (f32.const 0.0) (i32.const 1)))) "type mismatch")

;; Invalid types for the replaced value

(assert_invalid (module (func (result v128) (i8x16.replace_lane 0 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (f32.const 1.0)))) "type mismatch")
(assert_invalid (module (func (result v128) (i16x8.replace_lane 0 (v128.const i16x8 0 0 0 0 0 0 0 0) (f64.const 1.0)))) "type mismatch")
(assert_invalid (module (func (result v128) (i32x4.replace_lane 0 (v128.const i32x4 0 0 0 0) (f32.const 1.0)))) "type mismatch")
(assert_invalid (module (func (result v128) (f32x4.replace_lane 0 (v128.const f32x4 0 0 0 0) (i32.const 1)))) "type mismatch")
(assert_invalid (module (func (result v128) (i64x2.replace_lane 0 (v128.const i64x2 0 0) (f64.const 1.0)))) "type mismatch")
(assert_invalid (module (func (result v128) (f64x2.replace_lane 0 (v128.const f64x2 0 0) (i64.const 1)))) "type mismatch")



;; Malformed lane index

;; Pass params as the lane index

(assert_malformed (module quote "(func (param i32) (result v128) (i8x16.replace_lane (local.get 0) (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (param i32) (result v128) (i16x8.replace_lane (local.get 0) (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (param i32) (result v128) (i32x4.replace_lane (local.get 0) (v128.const i32x4 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (param i32) (result v128) (f32x4.replace_lane (local.get 0) (v128.const f32x4 0 0 0 0) (f32.const 1.0)))") "unexpected token")

(assert_malformed (module quote "(func (param i32) (result v128) (i64x2.replace_lane (local.get 0) (v128.const i64x2 0 0) (i64.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (param i32) (result v128) (f64x2.replace_lane (local.get 0) (v128.const f64x2 0 0) (f64.const 1.0)))") "unexpected token")

;; Pass non-literal as the lane index

(assert_malformed (module quote "(func (result v128) (i8x16.replace_lane -2.5 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (i16x8.replace_lane nan (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (i32x4.replace_lane inf (v128.const i32x4 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (f32x4.replace_lane -inf (v128.const f32x4 0 0 0 0) (f32.const 1.1)))") "unexpected token")


;; Non-nat lane index

(assert_malformed (module quote "(func (result v128) (i8x16.replace_lane +015 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (i16x8.replace_lane +0x7 (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (i32x4.replace_lane +3 (v128.const i32x4 0 0 0 0) (i32.const 1)))") "unexpected token")
(assert_malformed (module quote "(func (result v128) (f64x2.replace_lane +0x01 (v128.const f64x2 0 0) (f64.const 1.0)))") "unexpected token")


;; Lane index literal

(module (func (result v128) (f32x4.replace_lane 0x3 (v128.const f32x4 0 0 0 0) (f32.const 1.0))))
(module (func (result v128) (i64x2.replace_lane 01 (v128.const i64x2 0 0) (i64.const 1))))


(assert_malformed
  (module quote
    "(func $i8x16.replace_lane-1st-arg-empty (result v128)"
    "  (i8x16.replace_lane (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (i32.const 1))"
    ")"
  )
  "unexpected token"
)
(assert_invalid
  (module
    (func $i8x16.replace_lane-2nd-arg-empty (result v128)
      (i8x16.replace_lane 0 (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i8x16.replace_lane-3rd-arg-empty (result v128)
      (i8x16.replace_lane 0 (v128.const i8x16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_malformed
  (module quote
    "(func $i8x16.replace_lane-arg-empty (result v128)"
    "  (i8x16.replace_lane)"
    ")"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(func $i16x8.replace_lane-1st-arg-empty (result v128)"
    "  (i16x8.replace_lane (v128.const i16x8 0 0 0 0 0 0 0 0) (i32.const 1))"
    ")"
  )
  "unexpected token"
)
(assert_invalid
  (module
    (func $i16x8.replace_lane-2nd-arg-empty (result v128)
      (i16x8.replace_lane 0 (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i16x8.replace_lane-3rd-arg-empty (result v128)
      (i16x8.replace_lane 0 (v128.const i16x8 0 0 0 0 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_malformed
  (module quote
    "(func $i16x8.replace_lane-arg-empty (result v128)"
    "  (i16x8.replace_lane)"
    ")"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(func $i32x4.replace_lane-1st-arg-empty (result v128)"
    "  (i32x4.replace_lane (v128.const i32x4 0 0 0 0) (i32.const 1))"
    ")"
  )
  "unexpected token"
)
(assert_invalid
  (module
    (func $i32x4.replace_lane-2nd-arg-empty (result v128)
      (i32x4.replace_lane 0 (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i32x4.replace_lane-3rd-arg-empty (result v128)
      (i32x4.replace_lane 0 (v128.const i32x4 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_malformed
  (module quote
    "(func $i32x4.replace_lane-arg-empty (result v128)"
    "  (i32x4.replace_lane)"
    ")"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(func $f32x4.replace_lane-1st-arg-empty (result v128)"
    "  (f32x4.replace_lane (v128.const f32x4 0 0 0 0) (f32.const 1.0))"
    ")"
  )
  "unexpected token"
)
(assert_invalid
  (module
    (func $f32x4.replace_lane-2nd-arg-empty (result v128)
      (f32x4.replace_lane 0 (f32.const 1.0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $f32x4.replace_lane-3rd-arg-empty (result v128)
      (f32x4.replace_lane 0 (v128.const f32x4 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_malformed
  (module quote
    "(func $f32x4.replace_lane-arg-empty (result v128)"
    "  (f32x4.replace_lane)"
    ")"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(func $i64x2.replace_lane-1st-arg-empty (result v128)"
    "  (i64x2.replace_lane (v128.const i64x2 0 0) (i64.const 1))"
    ")"
  )
  "unexpected token"
)
(assert_invalid
  (module
    (func $i64x2.replace_lane-2nd-arg-empty (result v128)
      (i64x2.replace_lane 0 (i64.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $i64x2.replace_lane-3rd-arg-empty (result v128)
      (i64x2.replace_lane 0 (v128.const i64x2 0 0))
    )
  )
  "type mismatch"
)
(assert_malformed
  (module quote
    "(func $i64x2.replace_lane-arg-empty (result v128)"
    "  (i64x2.replace_lane)"
    ")"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(func $f64x2.replace_lane-1st-arg-empty (result v128)"
    "  (f64x2.replace_lane (v128.const f64x2 0 0) (f64.const 1.0))"
    ")"
  )
  "unexpected token"
)
(assert_invalid
  (module
    (func $f64x2.replace_lane-2nd-arg-empty (result v128)
      (f64x2.replace_lane 0 (f64.const 1.0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $f64x2.replace_lane-3rd-arg-empty (result v128)
      (f64x2.replace_lane 0 (v128.const f64x2 0 0))
    )
  )
  "type mismatch"
)
(assert_malformed
  (module quote
    "(func $f64x2.replace_lane-arg-empty (result v128)"
    "  (f64x2.replace_lane)"
    ")"
  )
  "unexpected token"
)
