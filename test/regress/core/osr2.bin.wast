(module $Mf binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\63\61\6c\6c\00\00\0a\98\80\80\80\00"
  "\01\92\80\80\80\00\00\03\40\20\00\41\01\6b\21\00"
  "\20\00\0d\00\0b\20\00\0b"
)
(assert_return (invoke "call" (i32.const 0x3e9)) (i32.const 0x0))
