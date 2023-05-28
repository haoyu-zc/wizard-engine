(module
    (func (export "v8x16_shuffle-1") (param v128 v128) (result v128)
        (i8x16.shuffle  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 (local.get 0) (local.get 1)))
    (func (export "v8x16_shuffle-2") (param v128 v128) (result v128)
        (i8x16.shuffle 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 (local.get 0) (local.get 1)))
    (func (export "v8x16_shuffle-3") (param v128 v128) (result v128)
        (i8x16.shuffle 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 (local.get 0) (local.get 1)))
    (func (export "v8x16_shuffle-4") (param v128 v128) (result v128)
        (i8x16.shuffle 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0 (local.get 0) (local.get 1)))
    (func (export "v8x16_shuffle-5") (param v128 v128) (result v128)
        (i8x16.shuffle  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 (local.get 0) (local.get 1)))
    (func (export "v8x16_shuffle-6") (param v128 v128) (result v128)
        (i8x16.shuffle 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 (local.get 0) (local.get 1)))
    (func (export "v8x16_shuffle-7") (param v128 v128) (result v128)
        (i8x16.shuffle  0  0  0  0  0  0  0  0 16 16 16 16 16 16 16 16 (local.get 0) (local.get 1)))
)


(assert_return (invoke "v8x16_shuffle-1"
  (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
  (v128.const i8x16 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31))
  (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))
(assert_return (invoke "v8x16_shuffle-2"
  (v128.const i8x16   0   1   2   3   4   5   6  7  8  9 10 11 12 13 14 15)
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1))
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1))
(assert_return (invoke "v8x16_shuffle-3"
  (v128.const i8x16   0   1   2   3   4   5   6  7  8   9  10  11  12  13  14  15)
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10 -9 -8  -7  -6  -5  -4  -3  -2  -1))
  (v128.const i8x16  -1  -2  -3  -4  -5  -6  -7 -8 -9 -10 -11 -12 -13 -14 -15 -16))
(assert_return (invoke "v8x16_shuffle-4"
  (v128.const i8x16   0   1   2   3   4   5   6  7  8  9 10 11 12 13 14 15)
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1))
  (v128.const i8x16  15  14  13  12  11  10   9  8  7  6  5  4  3  2  1  0))
(assert_return (invoke "v8x16_shuffle-5"
  (v128.const i8x16   0   1   2   3   4   5   6  7  8  9 10 11 12 13 14 15)
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1))
  (v128.const i8x16   0   0   0   0   0   0   0  0  0  0  0  0  0  0  0  0))
(assert_return (invoke "v8x16_shuffle-6"
  (v128.const i8x16   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15)
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10  -9  -8  -7  -6  -5  -4  -3  -2  -1))
  (v128.const i8x16 -16 -16 -16 -16 -16 -16 -16 -16 -16 -16 -16 -16 -16 -16 -16 -16))
(assert_return (invoke "v8x16_shuffle-7"
  (v128.const i8x16   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15)
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10  -9  -8  -7  -6  -5  -4  -3  -2  -1))
  (v128.const i8x16   0   0   0   0   0   0   0   0 -16 -16 -16 -16 -16 -16 -16 -16))
(assert_return (invoke "v8x16_shuffle-1"
  (v128.const i8x16 0x64 0x65 0x66 0x67 0x68 0x69 0x6a 0x6b 0x6c 0x6d 0x6e 0x6f 0x70 0x71 0x72 0x73)
  (v128.const i8x16 0xf0 0xf1 0xf2 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff))
  (v128.const i8x16 0x64 0x65 0x66 0x67 0x68 0x69 0x6a 0x6b 0x6c 0x6d 0x6e 0x6f 0x70 0x71 0x72 0x73))
(assert_return (invoke "v8x16_shuffle-1"
  (v128.const i16x8 0x0100 0x0302 0x0504 0x0706 0x0908 0x0b0a 0x0d0c 0x0f0e)
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10  -9  -8  -7  -6  -5  -4  -3  -2  -1))
  (v128.const i16x8 0x0100 0x0302 0x0504 0x0706 0x0908 0x0b0a 0x0d0c 0x0f0e))
(assert_return (invoke "v8x16_shuffle-2"
  (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
  (v128.const i32x4 0xf3f2f1f0 0xf7f6f5f4 0xfbfaf9f8 0xfffefdfc))
  (v128.const i32x4 0xf3f2f1f0 0xf7f6f5f4 0xfbfaf9f8 0xfffefdfc))
(assert_return (invoke "v8x16_shuffle-1"
  (v128.const i32x4 0x10203 0x4050607 0x8090a0b 0xc0d0e0f)
  (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))
  (v128.const i32x4 0x10203 0x4050607 0x8090a0b 0xc0d0e0f))
(assert_return (invoke "v8x16_shuffle-1"
  (v128.const f32x4 1.0 nan inf -inf)
  (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))
  (v128.const i32x4 0x3f800000 0x7fc00000 0x7f800000 0xff800000))
(assert_return (invoke "v8x16_shuffle-1"
  (v128.const i32x4 0x10203 0x4050607 0x8090a0b 0xc0d0e0f)
  (v128.const f32x4 -0.0 nan inf -inf))
  (v128.const i32x4 0x10203 0x4050607 0x8090a0b 0xc0d0e0f))