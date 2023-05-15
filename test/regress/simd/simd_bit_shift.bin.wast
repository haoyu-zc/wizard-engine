(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7f\01\7b\03\82\80\80\80\00\01\00\07\8d\80"
  "\80\80\00\01\09\69\38\78\31\36\2e\73\68\6c\00\00"
  "\0a\8e\80\80\80\00\01\88\80\80\80\00\00\20\00\20"
  "\01\fd\6b\0b"
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x1)
  )
  (v128.const i8x16
    0x0
    0x80
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0xddcc_bbaa 0xb0a0_ffee 0xf0e0_d0c0 0xd0c_0b0a)
    (i32.const 0x4)
  )
  (v128.const i8x16
    0xa0
    0xb0
    0xc0
    0xd0
    0xe0
    0xf0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xa0
    0xb0
    0xc0
    0xd0
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x8)
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
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x20)
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
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x80)
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
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x100)
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
  (invoke "i8x16.shl"
    (v128.const i32x4 0x100_c080 0x504_0302 0x908_0706 0xd0c_0b0a)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0x0
    0x80
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x9)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x11)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x21)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x81)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x101)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x201)
  )
  (v128.const i8x16
    0x0
    0x2
    0x4
    0x6
    0x8
    0xa
    0xc
    0xe
    0x10
    0x12
    0x14
    0x16
    0x18
    0x1a
    0x1c
    0x1e
  )
)
(assert_return
  (invoke "i8x16.shl"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (i32.const 0x202)
  )
  (v128.const i8x16
    0x0
    0x4
    0x8
    0xc
    0x10
    0x14
    0x18
    0x1c
    0x20
    0x24
    0x28
    0x2c
    0x30
    0x34
    0x38
    0x3c
  )
)
