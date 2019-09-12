; ModuleID = 'brainfuck'
source_filename = "<string>"

@tape = external global [512 x i8]
@pointer = external global i32

declare i8 @getchar()

declare i32 @putchar(i8)

define void @main() {
entry:
  %0 = load i32, i32* @pointer
  %1 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %0
  %2 = call i32 @putchar(i8* %1)
  ret void
}
