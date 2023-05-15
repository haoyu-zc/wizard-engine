(module binary
  "\00\61\73\6d\01\00\00\00\01\90\80\80\80\00\03\60"
  "\02\7b\7b\01\7b\60\00\01\7b\60\01\7b\01\7b\03\8a"
  "\80\80\80\00\09\00\01\01\01\01\02\02\02\02\07\d5"
  "\81\80\80\00\09\09\66\33\32\78\34\2e\6d\69\6e\00"
  "\00\16\66\33\32\78\34\2e\6d\69\6e\5f\77\69\74\68"
  "\5f\63\6f\6e\73\74\5f\30\00\01\16\66\33\32\78\34"
  "\2e\6d\69\6e\5f\77\69\74\68\5f\63\6f\6e\73\74\5f"
  "\31\00\02\16\66\33\32\78\34\2e\6d\69\6e\5f\77\69"
  "\74\68\5f\63\6f\6e\73\74\5f\32\00\03\16\66\33\32"
  "\78\34\2e\6d\69\6e\5f\77\69\74\68\5f\63\6f\6e\73"
  "\74\5f\33\00\04\16\66\33\32\78\34\2e\6d\69\6e\5f"
  "\77\69\74\68\5f\63\6f\6e\73\74\5f\35\00\05\16\66"
  "\33\32\78\34\2e\6d\69\6e\5f\77\69\74\68\5f\63\6f"
  "\6e\73\74\5f\36\00\06\16\66\33\32\78\34\2e\6d\69"
  "\6e\5f\77\69\74\68\5f\63\6f\6e\73\74\5f\37\00\07"
  "\16\66\33\32\78\34\2e\6d\69\6e\5f\77\69\74\68\5f"
  "\63\6f\6e\73\74\5f\38\00\08\0a\bf\82\80\80\00\09"
  "\89\80\80\80\00\00\20\00\20\01\fd\e8\01\0b\a9\80"
  "\80\80\00\00\fd\0c\00\00\00\00\00\00\80\3f\00\00"
  "\00\40\00\00\40\c0\fd\0c\00\00\00\00\00\00\00\40"
  "\00\00\80\3f\00\00\40\40\fd\e8\01\0b\a9\80\80\80"
  "\00\00\fd\0c\00\00\00\00\00\00\80\3f\00\00\00\40"
  "\00\00\40\40\fd\0c\00\00\00\00\00\00\80\3f\00\00"
  "\00\40\00\00\40\40\fd\e8\01\0b\a9\80\80\80\00\00"
  "\fd\0c\00\00\00\00\00\00\80\3f\00\00\00\40\00\00"
  "\00\4f\fd\0c\00\00\00\00\00\00\00\40\00\00\80\3f"
  "\00\00\00\4f\fd\e8\01\0b\a9\80\80\80\00\00\fd\0c"
  "\00\00\00\00\00\00\80\3f\00\00\00\40\00\00\00\4f"
  "\fd\0c\00\00\00\00\00\00\80\3f\00\00\00\40\00\00"
  "\00\4f\fd\e8\01\0b\99\80\80\80\00\00\20\00\fd\0c"
  "\00\00\00\00\00\00\80\3f\00\00\00\40\00\00\40\c0"
  "\fd\e8\01\0b\99\80\80\80\00\00\fd\0c\00\00\00\00"
  "\00\00\80\3f\00\00\00\40\00\00\40\40\20\00\fd\e8"
  "\01\0b\99\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
  "\80\3f\00\00\00\40\00\00\00\4f\20\00\fd\e8\01\0b"
  "\99\80\80\80\00\00\20\00\fd\0c\00\00\00\00\00\00"
  "\80\3f\00\00\00\40\00\00\00\4f\fd\e8\01\0b"
)
(assert_return
  (invoke "f32x4.min_with_const_0")
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+0 -0x1.8p+1)
)
(assert_return
  (invoke "f32x4.min_with_const_1")
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+1 0x1.8p+1)
)
(assert_return
  (invoke "f32x4.min_with_const_2")
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+0 0x1p+31)
)
(assert_return
  (invoke "f32x4.min_with_const_3")
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+1 0x1p+31)
)
(assert_return
  (invoke "f32x4.min_with_const_5"
    (v128.const i32x4 0x0 0x4000_0000 0x3f80_0000 0x4040_0000)
  )
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+0 -0x1.8p+1)
)
(assert_return
  (invoke "f32x4.min_with_const_6"
    (v128.const i32x4 0x0 0x3f80_0000 0x4000_0000 0x4040_0000)
  )
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+1 0x1.8p+1)
)
(assert_return
  (invoke "f32x4.min_with_const_7"
    (v128.const i32x4 0x0 0x4000_0000 0x3f80_0000 0x4f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+0 0x1p+31)
)
(assert_return
  (invoke "f32x4.min_with_const_8"
    (v128.const i32x4 0x0 0x3f80_0000 0x4000_0000 0x4f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x1p+0 0x1p+1 0x1p+31)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x0 0x0 0x3f80_0000)
    (v128.const i32x4 0x0 0xffc0_0000 0x3f80_0000 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xffc0_0000 0x3f80_0000 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -0x0p+0 -0x0p+0 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 0x1p-149 0x1p-149 0x1p-149 0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -0x1p-149 -0x1p-149 -0x1p-149 -0x1p-149)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 0x1p-126 0x1p-126 0x1p-126 0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -0x1p-126 -0x1p-126 -0x1p-126 -0x1p-126)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 0x1p-1 0x1p-1 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -0x1p-1 -0x1p-1 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 0x1p+0 0x1p+0 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -0x1p+0 -0x1p+0 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2 0x1.921f_b6p+2)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
    -0x1.921f_b6p+2
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
    0x1.b25f_fep-37
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
    (v128.const i32x4 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff 0x2d59_2fff)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
    (v128.const i32x4 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b 0x6c7f_4d7b)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
    (v128.const i32x4 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3 0xcceb_79a3)
  )
  (v128.const f32x4
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
    -0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:canonical nan:canonical nan:canonical nan:canonical)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000 0x7fa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f32x4.min"
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
    (v128.const i32x4 0xffa0_0000 0xffa0_0000 0xffa0_0000 0xffa0_0000)
  )
  (v128.const f32x4 nan:arithmetic nan:arithmetic nan:arithmetic nan:arithmetic)
)
