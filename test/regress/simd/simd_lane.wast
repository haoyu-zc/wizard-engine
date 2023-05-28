;; Tests for the extract_lane, replace_lane, swizzle and shuffle group instructions


(module
  (func (export "i32x4_extract_lane-first") (param v128) (result i32)
    (i32x4.extract_lane 0 (local.get 0)))
  (func (export "i32x4_extract_lane-last") (param v128) (result i32)
    (i32x4.extract_lane 3 (local.get 0)))
)

(assert_return (invoke "i32x4_extract_lane-first" (v128.const i32x4 2147483647 0 0 0)) (i32.const 2147483647))
(assert_return (invoke "i32x4_extract_lane-first" (v128.const i32x4 0x7fffffff 0 0 0)) (i32.const 2147483647))
(assert_return (invoke "i32x4_extract_lane-first" (v128.const i32x4 4294967295 0 0 0)) (i32.const -1))
(assert_return (invoke "i32x4_extract_lane-first" (v128.const i32x4 0xffffffff 0 0 0)) (i32.const -1))
(assert_return (invoke "i32x4_extract_lane-first" (v128.const i32x4 01_234_567_890 0 0 0)) (i32.const 1234567890))
(assert_return (invoke "i32x4_extract_lane-first" (v128.const i32x4 -0x0_1234_5678 0 0 0)) (i32.const -0x12345678))
(assert_return (invoke "i32x4_extract_lane-last" (v128.const i32x4 0 0 0 -2147483648)) (i32.const -2147483648))
(assert_return (invoke "i32x4_extract_lane-last" (v128.const i32x4 0 0 0 0x80000000)) (i32.const -2147483648))
(assert_return (invoke "i32x4_extract_lane-last" (v128.const i32x4 0 0 0 -1)) (i32.const -1))
(assert_return (invoke "i32x4_extract_lane-last" (v128.const i32x4 0 0 0 0xffffffff)) (i32.const -1))
(assert_return (invoke "i32x4_extract_lane-last" (v128.const i32x4 0 0 0 0_987_654_321)) (i32.const 987654321))
(assert_return (invoke "i32x4_extract_lane-last" (v128.const i32x4 0 0 0 -0x0_1234_5678)) (i32.const -0x12345678))
