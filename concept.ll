declare i32 @putchar(i32)

declare i32 @getchar()

@tape = global [512 x i8] zeroinitializer

define void @main() {
  %1 = call i32 @getchar()
  call i32 @putchar(i32 %1)
  ret void
}