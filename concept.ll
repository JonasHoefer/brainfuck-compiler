; ModuleID = 'brainfuck'
source_filename = "<string>"

@tape = global [512 x i8] zeroinitializer
@pointer = global i32 256

declare i8 @getchar()

declare i32 @putchar(i8)

define void @main() {
entry:
  %0 = load i32, i32* @pointer
  %1 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %0
  %2 = load i8, i8* %1
  %3 = add i8 %2, 1
  store i8 %3, i8* %1
  %4 = load i32, i32* @pointer
  %5 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %4
  %6 = load i8, i8* %5
  %7 = add i8 %6, 1
  store i8 %7, i8* %5
  %8 = load i32, i32* @pointer
  %9 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %8
  %10 = load i8, i8* %9
  %11 = add i8 %10, 1
  store i8 %11, i8* %9
  %12 = load i32, i32* @pointer
  %13 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %12
  %14 = load i8, i8* %13
  %15 = add i8 %14, 1
  store i8 %15, i8* %13
  %16 = load i32, i32* @pointer
  %17 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %16
  %18 = load i8, i8* %17
  %19 = add i8 %18, 1
  store i8 %19, i8* %17
  %20 = load i32, i32* @pointer
  %21 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %20
  %22 = load i8, i8* %21
  %23 = add i8 %22, 1
  store i8 %23, i8* %21
  %24 = load i32, i32* @pointer
  %25 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %24
  %26 = load i8, i8* %25
  %27 = add i8 %26, 1
  store i8 %27, i8* %25
  %28 = load i32, i32* @pointer
  %29 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %28
  %30 = load i8, i8* %29
  %31 = add i8 %30, 1
  store i8 %31, i8* %29
  %32 = load i32, i32* @pointer
  %33 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %32
  %34 = load i8, i8* %33
  %35 = add i8 %34, 1
  store i8 %35, i8* %33
  %36 = load i32, i32* @pointer
  %37 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %36
  %38 = load i8, i8* %37
  %39 = add i8 %38, 1
  store i8 %39, i8* %37
  %40 = load i32, i32* @pointer
  %41 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %40
  %42 = load i8, i8* %41
  %43 = add i8 %42, 1
  store i8 %43, i8* %41
  %44 = load i32, i32* @pointer
  %45 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %44
  %46 = load i8, i8* %45
  %47 = add i8 %46, 1
  store i8 %47, i8* %45
  %48 = load i32, i32* @pointer
  %49 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %48
  %50 = load i8, i8* %49
  %51 = add i8 %50, 1
  store i8 %51, i8* %49
  %52 = load i32, i32* @pointer
  %53 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %52
  %54 = load i8, i8* %53
  %55 = add i8 %54, 1
  store i8 %55, i8* %53
  %56 = load i32, i32* @pointer
  %57 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %56
  %58 = load i8, i8* %57
  %59 = add i8 %58, 1
  store i8 %59, i8* %57
  %60 = load i32, i32* @pointer
  %61 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %60
  %62 = load i8, i8* %61
  %63 = add i8 %62, 1
  store i8 %63, i8* %61
  %64 = load i32, i32* @pointer
  %65 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %64
  %66 = load i8, i8* %65
  %67 = add i8 %66, 1
  store i8 %67, i8* %65
  %68 = load i32, i32* @pointer
  %69 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %68
  %70 = load i8, i8* %69
  %71 = add i8 %70, 1
  store i8 %71, i8* %69
  %72 = load i32, i32* @pointer
  %73 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %72
  %74 = load i8, i8* %73
  %75 = add i8 %74, 1
  store i8 %75, i8* %73
  %76 = load i32, i32* @pointer
  %77 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %76
  %78 = load i8, i8* %77
  %79 = add i8 %78, 1
  store i8 %79, i8* %77
  %80 = load i32, i32* @pointer
  %81 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %80
  %82 = load i8, i8* %81
  %83 = add i8 %82, 1
  store i8 %83, i8* %81
  %84 = load i32, i32* @pointer
  %85 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %84
  %86 = load i8, i8* %85
  %87 = add i8 %86, 1
  store i8 %87, i8* %85
  %88 = load i32, i32* @pointer
  %89 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %88
  %90 = load i8, i8* %89
  %91 = add i8 %90, 1
  store i8 %91, i8* %89
  %92 = load i32, i32* @pointer
  %93 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %92
  %94 = load i8, i8* %93
  %95 = add i8 %94, 1
  store i8 %95, i8* %93
  %96 = load i32, i32* @pointer
  %97 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %96
  %98 = load i8, i8* %97
  %99 = add i8 %98, 1
  store i8 %99, i8* %97
  %100 = load i32, i32* @pointer
  %101 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %100
  %102 = load i8, i8* %101
  %103 = add i8 %102, 1
  store i8 %103, i8* %101
  %104 = load i32, i32* @pointer
  %105 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %104
  %106 = load i8, i8* %105
  %107 = add i8 %106, 1
  store i8 %107, i8* %105
  %108 = load i32, i32* @pointer
  %109 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %108
  %110 = load i8, i8* %109
  %111 = add i8 %110, 1
  store i8 %111, i8* %109
  %112 = load i32, i32* @pointer
  %113 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %112
  %114 = load i8, i8* %113
  %115 = add i8 %114, 1
  store i8 %115, i8* %113
  %116 = load i32, i32* @pointer
  %117 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %116
  %118 = load i8, i8* %117
  %119 = add i8 %118, 1
  store i8 %119, i8* %117
  %120 = load i32, i32* @pointer
  %121 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %120
  %122 = load i8, i8* %121
  %123 = add i8 %122, 1
  store i8 %123, i8* %121
  %124 = load i32, i32* @pointer
  %125 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %124
  %126 = load i8, i8* %125
  %127 = add i8 %126, 1
  store i8 %127, i8* %125
  %128 = load i32, i32* @pointer
  %129 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %128
  %130 = load i8, i8* %129
  %131 = add i8 %130, 1
  store i8 %131, i8* %129
  %132 = load i32, i32* @pointer
  %133 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %132
  %134 = load i8, i8* %133
  %135 = add i8 %134, 1
  store i8 %135, i8* %133
  %136 = load i32, i32* @pointer
  %137 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %136
  %138 = load i8, i8* %137
  %139 = add i8 %138, 1
  store i8 %139, i8* %137
  %140 = load i32, i32* @pointer
  %141 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %140
  %142 = load i8, i8* %141
  %143 = add i8 %142, 1
  store i8 %143, i8* %141
  %144 = load i32, i32* @pointer
  %145 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %144
  %146 = load i8, i8* %145
  %147 = add i8 %146, 1
  store i8 %147, i8* %145
  %148 = load i32, i32* @pointer
  %149 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %148
  %150 = load i8, i8* %149
  %151 = add i8 %150, 1
  store i8 %151, i8* %149
  %152 = load i32, i32* @pointer
  %153 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %152
  %154 = load i8, i8* %153
  %155 = add i8 %154, 1
  store i8 %155, i8* %153
  %156 = load i32, i32* @pointer
  %157 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %156
  %158 = load i8, i8* %157
  %159 = add i8 %158, 1
  store i8 %159, i8* %157
  %160 = load i32, i32* @pointer
  %161 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %160
  %162 = load i8, i8* %161
  %163 = add i8 %162, 1
  store i8 %163, i8* %161
  %164 = load i32, i32* @pointer
  %165 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %164
  %166 = load i8, i8* %165
  %167 = add i8 %166, 1
  store i8 %167, i8* %165
  %168 = load i32, i32* @pointer
  %169 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %168
  %170 = load i8, i8* %169
  %171 = add i8 %170, 1
  store i8 %171, i8* %169
  %172 = load i32, i32* @pointer
  %173 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %172
  %174 = load i8, i8* %173
  %175 = add i8 %174, 1
  store i8 %175, i8* %173
  %176 = load i32, i32* @pointer
  %177 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %176
  %178 = load i8, i8* %177
  %179 = add i8 %178, 1
  store i8 %179, i8* %177
  %180 = load i32, i32* @pointer
  %181 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %180
  %182 = load i8, i8* %181
  %183 = add i8 %182, 1
  store i8 %183, i8* %181
  %184 = load i32, i32* @pointer
  %185 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %184
  %186 = load i8, i8* %185
  %187 = add i8 %186, 1
  store i8 %187, i8* %185
  %188 = load i32, i32* @pointer
  %189 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %188
  %190 = load i8, i8* %189
  %191 = add i8 %190, 1
  store i8 %191, i8* %189
  %192 = load i32, i32* @pointer
  %193 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %192
  %194 = load i8, i8* %193
  %195 = add i8 %194, 1
  store i8 %195, i8* %193
  %196 = load i32, i32* @pointer
  %197 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %196
  %198 = load i8, i8* %197
  %199 = add i8 %198, 1
  store i8 %199, i8* %197
  %200 = load i32, i32* @pointer
  %201 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %200
  %202 = load i8, i8* %201
  %203 = add i8 %202, 1
  store i8 %203, i8* %201
  %204 = load i32, i32* @pointer
  %205 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %204
  %206 = load i8, i8* %205
  %207 = add i8 %206, 1
  store i8 %207, i8* %205
  %208 = load i32, i32* @pointer
  %209 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %208
  %210 = load i8, i8* %209
  %211 = add i8 %210, 1
  store i8 %211, i8* %209
  %212 = load i32, i32* @pointer
  %213 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %212
  %214 = load i8, i8* %213
  %215 = add i8 %214, 1
  store i8 %215, i8* %213
  %216 = load i32, i32* @pointer
  %217 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %216
  %218 = load i8, i8* %217
  %219 = add i8 %218, 1
  store i8 %219, i8* %217
  %220 = load i32, i32* @pointer
  %221 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %220
  %222 = load i8, i8* %221
  %223 = add i8 %222, 1
  store i8 %223, i8* %221
  %224 = load i32, i32* @pointer
  %225 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %224
  %226 = load i8, i8* %225
  %227 = add i8 %226, 1
  store i8 %227, i8* %225
  %228 = load i32, i32* @pointer
  %229 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %228
  %230 = load i8, i8* %229
  %231 = add i8 %230, 1
  store i8 %231, i8* %229
  %232 = load i32, i32* @pointer
  %233 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %232
  %234 = load i8, i8* %233
  %235 = add i8 %234, 1
  store i8 %235, i8* %233
  %236 = load i32, i32* @pointer
  %237 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %236
  %238 = load i8, i8* %237
  %239 = add i8 %238, 1
  store i8 %239, i8* %237
  %240 = load i32, i32* @pointer
  %241 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %240
  %242 = load i8, i8* %241
  %243 = add i8 %242, 1
  store i8 %243, i8* %241
  %244 = load i32, i32* @pointer
  %245 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %244
  %246 = load i8, i8* %245
  %247 = add i8 %246, 1
  store i8 %247, i8* %245
  %248 = load i32, i32* @pointer
  %249 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %248
  %250 = load i8, i8* %249
  %251 = add i8 %250, 1
  store i8 %251, i8* %249
  %252 = load i32, i32* @pointer
  %253 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %252
  %254 = load i8, i8* %253
  %255 = add i8 %254, 1
  store i8 %255, i8* %253
  %256 = load i32, i32* @pointer
  %257 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %256
  %258 = load i8, i8* %257
  %259 = add i8 %258, 1
  store i8 %259, i8* %257
  %260 = load i32, i32* @pointer
  %261 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %260
  %262 = load i8, i8* %261
  %263 = add i8 %262, 1
  store i8 %263, i8* %261
  %264 = load i32, i32* @pointer
  %265 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %264
  %266 = load i8, i8* %265
  %267 = add i8 %266, 1
  store i8 %267, i8* %265
  %268 = load i32, i32* @pointer
  %269 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %268
  %270 = load i8, i8* %269
  %271 = add i8 %270, 1
  store i8 %271, i8* %269
  %272 = load i32, i32* @pointer
  %273 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %272
  %274 = load i8, i8* %273
  %275 = add i8 %274, 1
  store i8 %275, i8* %273
  %276 = load i32, i32* @pointer
  %277 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %276
  %278 = load i8, i8* %277
  %279 = add i8 %278, 1
  store i8 %279, i8* %277
  %280 = load i32, i32* @pointer
  %281 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %280
  %282 = load i8, i8* %281
  %283 = add i8 %282, 1
  store i8 %283, i8* %281
  %284 = load i32, i32* @pointer
  %285 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %284
  %286 = load i8, i8* %285
  %287 = add i8 %286, 1
  store i8 %287, i8* %285
  %288 = load i32, i32* @pointer
  %289 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %288
  %290 = load i8, i8* %289
  %291 = add i8 %290, 1
  store i8 %291, i8* %289
  %292 = load i32, i32* @pointer
  %293 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %292
  %294 = load i8, i8* %293
  %295 = add i8 %294, 1
  store i8 %295, i8* %293
  %296 = load i32, i32* @pointer
  %297 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %296
  %298 = load i8, i8* %297
  %299 = call i32 @putchar(i8 %298)
  ret void
}