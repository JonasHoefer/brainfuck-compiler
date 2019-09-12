; ModuleID = 'brainfuck'
source_filename = "<string>"

%FILE = type opaque

@tape = global [262144 x i8] zeroinitializer
@pointer = global i32 131072

declare i8 @getchar()

declare i32 @putchar(i8)

declare i32 @fflush(%FILE*)

define void @main() {
entry:
  %0 = load i32, i32* @pointer
  %1 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %0
  %2 = load i8, i8* %1
  %3 = add i8 %2, 1
  store i8 %3, i8* %1
  %4 = load i32, i32* @pointer
  %5 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %4
  %6 = load i8, i8* %5
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %block1, label %block11

block1:                                           ; preds = %block31, %entry
  %8 = load i32, i32* @pointer
  %9 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %8
  %10 = load i8, i8* %9
  %11 = sub i8 %10, 1
  store i8 %11, i8* %9
  %12 = load i32, i32* @pointer
  %13 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %12
  %14 = load i8, i8* %13
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %block3, label %block31

block11:                                          ; preds = %block31, %entry
  %16 = load i32, i32* @pointer
  %17 = add i32 %16, 1
  store i32 %17, i32* @pointer
  %18 = load i32, i32* @pointer
  %19 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %18
  %20 = load i8, i8* %19
  %21 = sub i8 %20, 1
  store i8 %21, i8* %19
  %22 = load i32, i32* @pointer
  %23 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %22
  %24 = load i8, i8* %23
  %25 = call i32 @putchar(i8 %24)
  %26 = call i32 @fflush(%FILE* null)
  %27 = load i32, i32* @pointer
  %28 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %27
  %29 = load i8, i8* %28
  %30 = sub i8 %29, 1
  store i8 %30, i8* %28
  %31 = load i32, i32* @pointer
  %32 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %31
  %33 = load i8, i8* %32
  %34 = sub i8 %33, 1
  store i8 %34, i8* %32
  %35 = load i32, i32* @pointer
  %36 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %35
  %37 = load i8, i8* %36
  %38 = sub i8 %37, 1
  store i8 %38, i8* %36
  %39 = load i32, i32* @pointer
  %40 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %39
  %41 = load i8, i8* %40
  %42 = call i32 @putchar(i8 %41)
  %43 = call i32 @fflush(%FILE* null)
  %44 = load i32, i32* @pointer
  %45 = add i32 %44, 1
  store i32 %45, i32* @pointer
  %46 = load i32, i32* @pointer
  %47 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %46
  %48 = load i8, i8* %47
  %49 = call i32 @putchar(i8 %48)
  %50 = call i32 @fflush(%FILE* null)
  %51 = load i32, i32* @pointer
  %52 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %51
  %53 = load i8, i8* %52
  %54 = call i32 @putchar(i8 %53)
  %55 = call i32 @fflush(%FILE* null)
  %56 = load i32, i32* @pointer
  %57 = add i32 %56, 1
  store i32 %57, i32* @pointer
  %58 = load i32, i32* @pointer
  %59 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %58
  %60 = load i8, i8* %59
  %61 = call i32 @putchar(i8 %60)
  %62 = call i32 @fflush(%FILE* null)
  %63 = load i32, i32* @pointer
  %64 = sub i32 %63, 1
  store i32 %64, i32* @pointer
  %65 = load i32, i32* @pointer
  %66 = sub i32 %65, 1
  store i32 %66, i32* @pointer
  %67 = load i32, i32* @pointer
  %68 = sub i32 %67, 1
  store i32 %68, i32* @pointer
  %69 = load i32, i32* @pointer
  %70 = sub i32 %69, 1
  store i32 %70, i32* @pointer
  %71 = load i32, i32* @pointer
  %72 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %71
  %73 = load i8, i8* %72
  %74 = sub i8 %73, 1
  store i8 %74, i8* %72
  %75 = load i32, i32* @pointer
  %76 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %75
  %77 = load i8, i8* %76
  %78 = call i32 @putchar(i8 %77)
  %79 = call i32 @fflush(%FILE* null)
  %80 = load i32, i32* @pointer
  %81 = sub i32 %80, 1
  store i32 %81, i32* @pointer
  %82 = load i32, i32* @pointer
  %83 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %82
  %84 = load i8, i8* %83
  %85 = add i8 %84, 1
  store i8 %85, i8* %83
  %86 = load i32, i32* @pointer
  %87 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %86
  %88 = load i8, i8* %87
  %89 = call i32 @putchar(i8 %88)
  %90 = call i32 @fflush(%FILE* null)
  %91 = load i32, i32* @pointer
  %92 = add i32 %91, 1
  store i32 %92, i32* @pointer
  %93 = load i32, i32* @pointer
  %94 = add i32 %93, 1
  store i32 %94, i32* @pointer
  %95 = load i32, i32* @pointer
  %96 = add i32 %95, 1
  store i32 %96, i32* @pointer
  %97 = load i32, i32* @pointer
  %98 = add i32 %97, 1
  store i32 %98, i32* @pointer
  %99 = load i32, i32* @pointer
  %100 = add i32 %99, 1
  store i32 %100, i32* @pointer
  %101 = load i32, i32* @pointer
  %102 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %101
  %103 = load i8, i8* %102
  %104 = call i32 @putchar(i8 %103)
  %105 = call i32 @fflush(%FILE* null)
  %106 = load i32, i32* @pointer
  %107 = add i32 %106, 1
  store i32 %107, i32* @pointer
  %108 = load i32, i32* @pointer
  %109 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %108
  %110 = load i8, i8* %109
  %111 = call i32 @putchar(i8 %110)
  %112 = call i32 @fflush(%FILE* null)
  %113 = load i32, i32* @pointer
  %114 = sub i32 %113, 1
  store i32 %114, i32* @pointer
  %115 = load i32, i32* @pointer
  %116 = sub i32 %115, 1
  store i32 %116, i32* @pointer
  %117 = load i32, i32* @pointer
  %118 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %117
  %119 = load i8, i8* %118
  %120 = call i32 @putchar(i8 %119)
  %121 = call i32 @fflush(%FILE* null)
  %122 = load i32, i32* @pointer
  %123 = sub i32 %122, 1
  store i32 %123, i32* @pointer
  %124 = load i32, i32* @pointer
  %125 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %124
  %126 = load i8, i8* %125
  %127 = sub i8 %126, 1
  store i8 %127, i8* %125
  %128 = load i32, i32* @pointer
  %129 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %128
  %130 = load i8, i8* %129
  %131 = call i32 @putchar(i8 %130)
  %132 = call i32 @fflush(%FILE* null)
  ret void

block3:                                           ; preds = %block51, %block1
  %133 = load i32, i32* @pointer
  %134 = sub i32 %133, 1
  store i32 %134, i32* @pointer
  %135 = load i32, i32* @pointer
  %136 = sub i32 %135, 1
  store i32 %136, i32* @pointer
  %137 = load i32, i32* @pointer
  %138 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %137
  %139 = load i8, i8* %138
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %block5, label %block51

block31:                                          ; preds = %block51, %block1
  %141 = load i32, i32* @pointer
  %142 = add i32 %141, 1
  store i32 %142, i32* @pointer
  %143 = load i32, i32* @pointer
  %144 = add i32 %143, 1
  store i32 %144, i32* @pointer
  %145 = load i32, i32* @pointer
  %146 = add i32 %145, 1
  store i32 %146, i32* @pointer
  %147 = load i32, i32* @pointer
  %148 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %147
  %149 = load i8, i8* %148
  %150 = sub i8 %149, 1
  store i8 %150, i8* %148
  %151 = load i32, i32* @pointer
  %152 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %151
  %153 = load i8, i8* %152
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %block1, label %block11

block5:                                           ; preds = %block91, %block3
  %155 = load i32, i32* @pointer
  %156 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %155
  %157 = load i8, i8* %156
  %158 = add i8 %157, 1
  store i8 %158, i8* %156
  %159 = load i32, i32* @pointer
  %160 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %159
  %161 = load i8, i8* %160
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %block7, label %block71

block51:                                          ; preds = %block91, %block3
  %163 = load i32, i32* @pointer
  %164 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %163
  %165 = load i8, i8* %164
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %block3, label %block31

block7:                                           ; preds = %block7, %block5
  %167 = load i32, i32* @pointer
  %168 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %167
  %169 = load i8, i8* %168
  %170 = sub i8 %169, 1
  store i8 %170, i8* %168
  %171 = load i32, i32* @pointer
  %172 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %171
  %173 = load i8, i8* %172
  %174 = sub i8 %173, 1
  store i8 %174, i8* %172
  %175 = load i32, i32* @pointer
  %176 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %175
  %177 = load i8, i8* %176
  %178 = sub i8 %177, 1
  store i8 %178, i8* %176
  %179 = load i32, i32* @pointer
  %180 = add i32 %179, 1
  store i32 %180, i32* @pointer
  %181 = load i32, i32* @pointer
  %182 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %181
  %183 = load i8, i8* %182
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %block7, label %block71

block71:                                          ; preds = %block7, %block5
  %185 = load i32, i32* @pointer
  %186 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %185
  %187 = load i8, i8* %186
  %188 = sub i8 %187, 1
  store i8 %188, i8* %186
  %189 = load i32, i32* @pointer
  %190 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %189
  %191 = load i8, i8* %190
  %192 = icmp ne i8 %191, 0
  br i1 %192, label %block9, label %block91

block9:                                           ; preds = %block9, %block71
  %193 = load i32, i32* @pointer
  %194 = sub i32 %193, 1
  store i32 %194, i32* @pointer
  %195 = load i32, i32* @pointer
  %196 = sub i32 %195, 1
  store i32 %196, i32* @pointer
  %197 = load i32, i32* @pointer
  %198 = sub i32 %197, 1
  store i32 %198, i32* @pointer
  %199 = load i32, i32* @pointer
  %200 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %199
  %201 = load i8, i8* %200
  %202 = icmp ne i8 %201, 0
  br i1 %202, label %block9, label %block91

block91:                                          ; preds = %block9, %block71
  %203 = load i32, i32* @pointer
  %204 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %203
  %205 = load i8, i8* %204
  %206 = icmp ne i8 %205, 0
  br i1 %206, label %block5, label %block51
}
