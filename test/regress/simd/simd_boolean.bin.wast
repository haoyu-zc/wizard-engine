(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7f\03\84\80\80\80\00\03\00\00\00\07\b4"
  "\80\80\80\00\03\0e\69\38\78\31\36\2e\61\6e\79\5f"
  "\74\72\75\65\00\00\0e\69\31\36\78\38\2e\61\6e\79"
  "\5f\74\72\75\65\00\01\0e\69\33\32\78\34\2e\61\6e"
  "\79\5f\74\72\75\65\00\02\0a\a2\80\80\80\00\03\86"
  "\80\80\80\00\00\20\00\fd\53\0b\86\80\80\80\00\00"
  "\20\00\fd\53\0b\86\80\80\80\00\00\20\00\fd\53\0b"
)
(assert_return
  (invoke "i8x16.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.any_true" (v128.const i32x4 0x0 0x0 0x0 0x1_0000))
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x100_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x201_00ff 0x605_0403 0xa09_0807 0xf0d_0c0b)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0xabab_abab 0xabab_abab 0xabab_abab 0xabab_abab)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i8x16.any_true"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0x0 0x0 0x0 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0000)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0xffff 0x2_0001 0xc_000b 0xf_000d))
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0xab_00ab 0xab_00ab 0xab_00ab 0xab_00ab)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x55_0055 0x55_0055 0x55_0055 0x55_0055)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x3039_3039 0x3039_3039 0x3039_3039 0x3039_3039)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i16x8.any_true"
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x1 0x1 0x0 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0xffff_ffff 0x0 0x1 0xf))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0xff 0xff 0xff 0xff))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0xab 0xab 0xab 0xab))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true" (v128.const i32x4 0x55 0x55 0x55 0x55))
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "i32x4.any_true"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
  )
  (i32.const 0x1)
)
