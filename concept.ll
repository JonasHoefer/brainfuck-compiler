; ModuleID = 'brainfuck'
source_filename = "<string>"

@tape = external global [512 x i32]

declare i32 @getchar()

declare i32 @putchar(i32)

define void @main() {
entry:
  %0 = call i32 @putchar(i32 69)
  ret void
}