; ModuleID = 'brainfuck'
source_filename = "<string>"

@tape = global [512 x i8] zeroinitializer
@pointer = global i32 256

declare i8 @getchar()

declare i32 @putchar(i8)

define void @main() {
entry:
  %0 = call i8 @getchar()
  %1 = load i32, i32* @pointer
  %2 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %1
  store i8 %0, i8* %2
  %3 = load i32, i32* @pointer
  %4 = add i32 %3, 1
  store i32 %4, i32* @pointer
  %5 = call i8 @getchar()
  %6 = load i32, i32* @pointer
  %7 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %6
  store i8 %5, i8* %7
  %8 = load i32, i32* @pointer
  %9 = sub i32 %8, 1
  store i32 %9, i32* @pointer
  %10 = load i32, i32* @pointer
  %11 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %10
  %12 = load i8, i8* %11
  %13 = call i32 @putchar(i8 %12)
  %14 = load i32, i32* @pointer
  %15 = add i32 %14, 1
  store i32 %15, i32* @pointer
  %16 = load i32, i32* @pointer
  %17 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %16
  %18 = load i8, i8* %17
  %19 = call i32 @putchar(i8 %18)
  ret void
}
