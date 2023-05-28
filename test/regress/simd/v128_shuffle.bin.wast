(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\88\80\80\80\00\07\00\00\00\00"
  "\00\00\00\07\ff\80\80\80\00\07\0f\76\38\78\31\36"
  "\5f\73\68\75\66\66\6c\65\2d\31\00\00\0f\76\38\78"
  "\31\36\5f\73\68\75\66\66\6c\65\2d\32\00\01\0f\76"
  "\38\78\31\36\5f\73\68\75\66\66\6c\65\2d\33\00\02"
  "\0f\76\38\78\31\36\5f\73\68\75\66\66\6c\65\2d\34"
  "\00\03\0f\76\38\78\31\36\5f\73\68\75\66\66\6c\65"
  "\2d\35\00\04\0f\76\38\78\31\36\5f\73\68\75\66\66"
  "\6c\65\2d\36\00\05\0f\76\38\78\31\36\5f\73\68\75"
  "\66\66\6c\65\2d\37\00\06\0a\cc\81\80\80\00\07\98"
  "\80\80\80\00\00\20\00\20\01\fd\0d\00\01\02\03\04"
  "\05\06\07\08\09\0a\0b\0c\0d\0e\0f\0b\98\80\80\80"
  "\00\00\20\00\20\01\fd\0d\10\11\12\13\14\15\16\17"
  "\18\19\1a\1b\1c\1d\1e\1f\0b\98\80\80\80\00\00\20"
  "\00\20\01\fd\0d\1f\1e\1d\1c\1b\1a\19\18\17\16\15"
  "\14\13\12\11\10\0b\98\80\80\80\00\00\20\00\20\01"
  "\fd\0d\0f\0e\0d\0c\0b\0a\09\08\07\06\05\04\03\02"
  "\01\00\0b\98\80\80\80\00\00\20\00\20\01\fd\0d\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0b"
  "\98\80\80\80\00\00\20\00\20\01\fd\0d\10\10\10\10"
  "\10\10\10\10\10\10\10\10\10\10\10\10\0b\98\80\80"
  "\80\00\00\20\00\20\01\fd\0d\00\00\00\00\00\00\00"
  "\00\10\10\10\10\10\10\10\10\0b"
)
(assert_return
  (invoke "v8x16_shuffle-1"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x1312_1110 0x1716_1514 0x1b1a_1918 0x1f1e_1d1c)
  )
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
(assert_return
  (invoke "v8x16_shuffle-2"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i8x16
    0xf0
    0xf1
    0xf2
    0xf3
    0xf4
    0xf5
    0xf6
    0xf7
    0xf8
    0xf9
    0xfa
    0xfb
    0xfc
    0xfd
    0xfe
    0xff
  )
)
(assert_return
  (invoke "v8x16_shuffle-3"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i8x16
    0xff
    0xfe
    0xfd
    0xfc
    0xfb
    0xfa
    0xf9
    0xf8
    0xf7
    0xf6
    0xf5
    0xf4
    0xf3
    0xf2
    0xf1
    0xf0
  )
)
(assert_return
  (invoke "v8x16_shuffle-4"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i8x16
    0xf
    0xe
    0xd
    0xc
    0xb
    0xa
    0x9
    0x8
    0x7
    0x6
    0x5
    0x4
    0x3
    0x2
    0x1
    0x0
  )
)
(assert_return
  (invoke "v8x16_shuffle-5"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "v8x16_shuffle-6"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i8x16
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
  )
)
(assert_return
  (invoke "v8x16_shuffle-7"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
    0xf0
  )
)
(assert_return
  (invoke "v8x16_shuffle-1"
    (v128.const i32x4 0x6766_6564 0x6b6a_6968 0x6f6e_6d6c 0x7372_7170)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i8x16
    0x64
    0x65
    0x66
    0x67
    0x68
    0x69
    0x6a
    0x6b
    0x6c
    0x6d
    0x6e
    0x6f
    0x70
    0x71
    0x72
    0x73
  )
)
(assert_return
  (invoke "v8x16_shuffle-1"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i16x8 0x100 0x302 0x504 0x706 0x908 0xb0a 0xd0c 0xf0e)
)
(assert_return
  (invoke "v8x16_shuffle-2"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
  )
  (v128.const i32x4 0xf3f2_f1f0 0xf7f6_f5f4 0xfbfa_f9f8 0xfffe_fdfc)
)
(assert_return
  (invoke "v8x16_shuffle-1"
    (v128.const i32x4 0x1_0203 0x405_0607 0x809_0a0b 0xc0d_0e0f)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x1_0203 0x405_0607 0x809_0a0b 0xc0d_0e0f)
)
(assert_return
  (invoke "v8x16_shuffle-1"
    (v128.const i32x4 0x3f80_0000 0x7fc0_0000 0x7f80_0000 0xff80_0000)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
  )
  (v128.const i32x4 0x3f80_0000 0x7fc0_0000 0x7f80_0000 0xff80_0000)
)
(assert_return
  (invoke "v8x16_shuffle-1"
    (v128.const i32x4 0x1_0203 0x405_0607 0x809_0a0b 0xc0d_0e0f)
    (v128.const i32x4 0x8000_0000 0x7fc0_0000 0x7f80_0000 0xff80_0000)
  )
  (v128.const i32x4 0x1_0203 0x405_0607 0x809_0a0b 0xc0d_0e0f)
)
