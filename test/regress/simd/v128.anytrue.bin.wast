(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7f\03\82\80\80\80\00\01\00\07\92\80\80"
  "\80\00\01\0e\69\38\78\31\36\2e\61\6e\79\5f\74\72"
  "\75\65\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00"
  "\00\20\00\fd\53\0b"
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
