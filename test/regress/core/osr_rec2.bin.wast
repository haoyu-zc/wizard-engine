(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\63\61\6c\6c\00\00\0a\b9\80\80\80\00"
  "\01\b3\80\80\80\00\00\41\00\20\00\41\07\71\46\04"
  "\7f\03\40\20\00\41\01\6b\21\00\20\00\0d\00\0b\20"
  "\00\05\20\00\41\01\6b\10\00\03\40\20\00\41\01\6b"
  "\21\00\20\00\0d\00\0b\0b\0b"
)
(assert_return (invoke "call" (i32.const 0x87)) (i32.const 0x0))
(assert_return (invoke "call" (i32.const 0x87)) (i32.const 0x0))
(assert_return (invoke "call" (i32.const 0x11)) (i32.const 0x0))
(assert_return (invoke "call" (i32.const 0x10)) (i32.const 0x0))
(assert_return (invoke "call" (i32.const 0xf)) (i32.const 0x0))
(assert_return (invoke "call" (i32.const 0xe)) (i32.const 0x0))
(assert_return (invoke "call" (i32.const 0xd)) (i32.const 0x0))
