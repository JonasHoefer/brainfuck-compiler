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
  %3 = sub i8 %2, 1
  store i8 %3, i8* %1
  %4 = call i8 @getchar()
  %5 = load i32, i32* @pointer
  %6 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %5
  store i8 %4, i8* %6
  %7 = load i32, i32* @pointer
  %8 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %7
  %9 = load i8, i8* %8
  %10 = add i8 %9, 1
  store i8 %10, i8* %8
  %11 = load i32, i32* @pointer
  %12 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %11
  %13 = load i8, i8* %12
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %block1, label %block11

block1:                                           ; preds = %block471, %entry
  %15 = load i32, i32* @pointer
  %16 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %15
  %17 = load i8, i8* %16
  %18 = sub i8 %17, 1
  store i8 %18, i8* %16
  %19 = load i32, i32* @pointer
  %20 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %19
  %21 = load i8, i8* %20
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %block3, label %block31

block3:                                           ; preds = %block71, %block1
  %23 = load i32, i32* @pointer
  %24 = add i32 %23, 1
  store i32 %24, i32* @pointer
  %25 = load i32, i32* @pointer
  %26 = add i32 %25, 1
  store i32 %26, i32* @pointer
  %27 = load i32, i32* @pointer
  %28 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %27
  %29 = load i8, i8* %28
  %30 = add i8 %29, 1
  store i8 %30, i8* %28
  %31 = load i32, i32* @pointer
  %32 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %31
  %33 = load i8, i8* %32
  %34 = add i8 %33, 1
  store i8 %34, i8* %32
  %35 = load i32, i32* @pointer
  %36 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %35
  %37 = load i8, i8* %36
  %38 = add i8 %37, 1
  store i8 %38, i8* %36
  %39 = load i32, i32* @pointer
  %40 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %39
  %41 = load i8, i8* %40
  %42 = add i8 %41, 1
  store i8 %42, i8* %40
  %43 = load i32, i32* @pointer
  %44 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %43
  %45 = load i8, i8* %44
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %block5, label %block51

block5:                                           ; preds = %block5, %block3
  %47 = load i32, i32* @pointer
  %48 = add i32 %47, 1
  store i32 %48, i32* @pointer
  %49 = load i32, i32* @pointer
  %50 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %49
  %51 = load i8, i8* %50
  %52 = add i8 %51, 1
  store i8 %52, i8* %50
  %53 = load i32, i32* @pointer
  %54 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %53
  %55 = load i8, i8* %54
  %56 = add i8 %55, 1
  store i8 %56, i8* %54
  %57 = load i32, i32* @pointer
  %58 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %57
  %59 = load i8, i8* %58
  %60 = add i8 %59, 1
  store i8 %60, i8* %58
  %61 = load i32, i32* @pointer
  %62 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %61
  %63 = load i8, i8* %62
  %64 = add i8 %63, 1
  store i8 %64, i8* %62
  %65 = load i32, i32* @pointer
  %66 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %65
  %67 = load i8, i8* %66
  %68 = add i8 %67, 1
  store i8 %68, i8* %66
  %69 = load i32, i32* @pointer
  %70 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %69
  %71 = load i8, i8* %70
  %72 = add i8 %71, 1
  store i8 %72, i8* %70
  %73 = load i32, i32* @pointer
  %74 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %73
  %75 = load i8, i8* %74
  %76 = add i8 %75, 1
  store i8 %76, i8* %74
  %77 = load i32, i32* @pointer
  %78 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %77
  %79 = load i8, i8* %78
  %80 = add i8 %79, 1
  store i8 %80, i8* %78
  %81 = load i32, i32* @pointer
  %82 = sub i32 %81, 1
  store i32 %82, i32* @pointer
  %83 = load i32, i32* @pointer
  %84 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %83
  %85 = load i8, i8* %84
  %86 = sub i8 %85, 1
  store i8 %86, i8* %84
  %87 = load i32, i32* @pointer
  %88 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %87
  %89 = load i8, i8* %88
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %block5, label %block51

block51:                                          ; preds = %block5, %block3
  %91 = load i32, i32* @pointer
  %92 = sub i32 %91, 1
  store i32 %92, i32* @pointer
  %93 = load i32, i32* @pointer
  %94 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %93
  %95 = load i8, i8* %94
  %96 = add i8 %95, 1
  store i8 %96, i8* %94
  %97 = load i32, i32* @pointer
  %98 = sub i32 %97, 1
  store i32 %98, i32* @pointer
  %99 = load i32, i32* @pointer
  %100 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %99
  %101 = load i8, i8* %100
  %102 = sub i8 %101, 1
  store i8 %102, i8* %100
  %103 = load i32, i32* @pointer
  %104 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %103
  %105 = load i8, i8* %104
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %block7, label %block71

block7:                                           ; preds = %block111, %block51
  %107 = load i32, i32* @pointer
  %108 = add i32 %107, 1
  store i32 %108, i32* @pointer
  %109 = load i32, i32* @pointer
  %110 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %109
  %111 = load i8, i8* %110
  %112 = add i8 %111, 1
  store i8 %112, i8* %110
  %113 = load i32, i32* @pointer
  %114 = add i32 %113, 1
  store i32 %114, i32* @pointer
  %115 = load i32, i32* @pointer
  %116 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %115
  %117 = load i8, i8* %116
  %118 = add i8 %117, 1
  store i8 %118, i8* %116
  %119 = load i32, i32* @pointer
  %120 = add i32 %119, 1
  store i32 %120, i32* @pointer
  %121 = load i32, i32* @pointer
  %122 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %121
  %123 = load i8, i8* %122
  %124 = sub i8 %123, 1
  store i8 %124, i8* %122
  %125 = load i32, i32* @pointer
  %126 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %125
  %127 = load i8, i8* %126
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %block9, label %block91

block71:                                          ; preds = %block111, %block51
  %129 = load i32, i32* @pointer
  %130 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %129
  %131 = load i8, i8* %130
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %block3, label %block31

block9:                                           ; preds = %block9, %block7
  %133 = load i32, i32* @pointer
  %134 = add i32 %133, 1
  store i32 %134, i32* @pointer
  %135 = load i32, i32* @pointer
  %136 = add i32 %135, 1
  store i32 %136, i32* @pointer
  %137 = load i32, i32* @pointer
  %138 = add i32 %137, 1
  store i32 %138, i32* @pointer
  %139 = load i32, i32* @pointer
  %140 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %139
  %141 = load i8, i8* %140
  %142 = icmp ne i8 %141, 0
  br i1 %142, label %block9, label %block91

block91:                                          ; preds = %block9, %block7
  %143 = load i32, i32* @pointer
  %144 = sub i32 %143, 1
  store i32 %144, i32* @pointer
  %145 = load i32, i32* @pointer
  %146 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %145
  %147 = load i8, i8* %146
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %block11, label %block111

block11:                                          ; preds = %block471, %block131, %block91, %entry
  %149 = load i32, i32* @pointer
  %150 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %149
  %151 = load i8, i8* %150
  %152 = icmp ne i8 %151, 0
  ret void

block111:                                         ; preds = %block131, %block91
  %153 = load i32, i32* @pointer
  %154 = sub i32 %153, 1
  store i32 %154, i32* @pointer
  %155 = load i32, i32* @pointer
  %156 = sub i32 %155, 1
  store i32 %156, i32* @pointer
  %157 = load i32, i32* @pointer
  %158 = sub i32 %157, 1
  store i32 %158, i32* @pointer
  %159 = load i32, i32* @pointer
  %160 = sub i32 %159, 1
  store i32 %160, i32* @pointer
  %161 = load i32, i32* @pointer
  %162 = sub i32 %161, 1
  store i32 %162, i32* @pointer
  %163 = load i32, i32* @pointer
  %164 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %163
  %165 = load i8, i8* %164
  %166 = sub i8 %165, 1
  store i8 %166, i8* %164
  %167 = load i32, i32* @pointer
  %168 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %167
  %169 = load i8, i8* %168
  %170 = icmp ne i8 %169, 0
  br i1 %170, label %block7, label %block71

block13:                                          ; preds = %block13
  %171 = load i32, i32* @pointer
  %172 = add i32 %171, 1
  store i32 %172, i32* @pointer
  %173 = load i32, i32* @pointer
  %174 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %173
  %175 = load i8, i8* %174
  %176 = add i8 %175, 1
  store i8 %176, i8* %174
  %177 = load i32, i32* @pointer
  %178 = sub i32 %177, 1
  store i32 %178, i32* @pointer
  %179 = load i32, i32* @pointer
  %180 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %179
  %181 = load i8, i8* %180
  %182 = sub i8 %181, 1
  store i8 %182, i8* %180
  %183 = load i32, i32* @pointer
  %184 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %183
  %185 = load i8, i8* %184
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %block13, label %block131

block131:                                         ; preds = %block13
  %187 = load i32, i32* @pointer
  %188 = add i32 %187, 1
  store i32 %188, i32* @pointer
  %189 = load i32, i32* @pointer
  %190 = add i32 %189, 1
  store i32 %190, i32* @pointer
  %191 = load i32, i32* @pointer
  %192 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %191
  %193 = load i8, i8* %192
  %194 = add i8 %193, 1
  store i8 %194, i8* %192
  %195 = load i32, i32* @pointer
  %196 = add i32 %195, 1
  store i32 %196, i32* @pointer
  %197 = load i32, i32* @pointer
  %198 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %197
  %199 = load i8, i8* %198
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %block11, label %block111

block15:                                          ; preds = %block15
  %201 = load i32, i32* @pointer
  %202 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %201
  %203 = load i8, i8* %202
  %204 = sub i8 %203, 1
  store i8 %204, i8* %202
  %205 = load i32, i32* @pointer
  %206 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %205
  %207 = load i8, i8* %206
  %208 = icmp ne i8 %207, 0
  br i1 %208, label %block15, label %block151

block151:                                         ; preds = %block15
  %209 = load i32, i32* @pointer
  %210 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %209
  %211 = load i8, i8* %210
  %212 = add i8 %211, 1
  store i8 %212, i8* %210
  %213 = load i32, i32* @pointer
  %214 = add i32 %213, 1
  store i32 %214, i32* @pointer
  %215 = load i32, i32* @pointer
  %216 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %215
  %217 = load i8, i8* %216
  %218 = sub i8 %217, 1
  store i8 %218, i8* %216
  %219 = load i32, i32* @pointer
  %220 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %219
  %221 = load i8, i8* %220
  %222 = sub i8 %221, 1
  store i8 %222, i8* %220
  %223 = load i32, i32* @pointer
  %224 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %223
  %225 = load i8, i8* %224
  %226 = icmp ne i8 %225, 0
  br i1 %226, label %block17, label %block171

block17:                                          ; preds = %block191, %block151
  %227 = load i32, i32* @pointer
  %228 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %227
  %229 = load i8, i8* %228
  %230 = sub i8 %229, 1
  store i8 %230, i8* %228
  %231 = load i32, i32* @pointer
  %232 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %231
  %233 = load i8, i8* %232
  %234 = icmp ne i8 %233, 0
  br i1 %234, label %block19, label %block191

block171:                                         ; preds = %block191, %block151
  %235 = load i32, i32* @pointer
  %236 = sub i32 %235, 1
  store i32 %236, i32* @pointer
  %237 = load i32, i32* @pointer
  %238 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %237
  %239 = load i8, i8* %238
  %240 = icmp ne i8 %239, 0
  br i1 %240, label %block23, label %block231

block19:                                          ; preds = %block211, %block17
  %241 = load i32, i32* @pointer
  %242 = sub i32 %241, 1
  store i32 %242, i32* @pointer
  %243 = load i32, i32* @pointer
  %244 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %243
  %245 = load i8, i8* %244
  %246 = sub i8 %245, 1
  store i8 %246, i8* %244
  %247 = load i32, i32* @pointer
  %248 = add i32 %247, 1
  store i32 %248, i32* @pointer
  %249 = load i32, i32* @pointer
  %250 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %249
  %251 = load i8, i8* %250
  %252 = add i8 %251, 1
  store i8 %252, i8* %250
  %253 = load i32, i32* @pointer
  %254 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %253
  %255 = load i8, i8* %254
  %256 = add i8 %255, 1
  store i8 %256, i8* %254
  %257 = load i32, i32* @pointer
  %258 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %257
  %259 = load i8, i8* %258
  %260 = add i8 %259, 1
  store i8 %260, i8* %258
  %261 = load i32, i32* @pointer
  %262 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %261
  %263 = load i8, i8* %262
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %block21, label %block211

block191:                                         ; preds = %block211, %block17
  %265 = load i32, i32* @pointer
  %266 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %265
  %267 = load i8, i8* %266
  %268 = icmp ne i8 %267, 0
  br i1 %268, label %block17, label %block171

block21:                                          ; preds = %block21, %block19
  %269 = load i32, i32* @pointer
  %270 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %269
  %271 = load i8, i8* %270
  %272 = sub i8 %271, 1
  store i8 %272, i8* %270
  %273 = load i32, i32* @pointer
  %274 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %273
  %275 = load i8, i8* %274
  %276 = icmp ne i8 %275, 0
  br i1 %276, label %block21, label %block211

block211:                                         ; preds = %block21, %block19
  %277 = load i32, i32* @pointer
  %278 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %277
  %279 = load i8, i8* %278
  %280 = icmp ne i8 %279, 0
  br i1 %280, label %block19, label %block191

block23:                                          ; preds = %block431, %block171
  %281 = load i32, i32* @pointer
  %282 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %281
  %283 = load i8, i8* %282
  %284 = add i8 %283, 1
  store i8 %284, i8* %282
  %285 = load i32, i32* @pointer
  %286 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %285
  %287 = load i8, i8* %286
  %288 = add i8 %287, 1
  store i8 %288, i8* %286
  %289 = load i32, i32* @pointer
  %290 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %289
  %291 = load i8, i8* %290
  %292 = add i8 %291, 1
  store i8 %292, i8* %290
  %293 = load i32, i32* @pointer
  %294 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %293
  %295 = load i8, i8* %294
  %296 = add i8 %295, 1
  store i8 %296, i8* %294
  %297 = load i32, i32* @pointer
  %298 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %297
  %299 = load i8, i8* %298
  %300 = add i8 %299, 1
  store i8 %300, i8* %298
  %301 = load i32, i32* @pointer
  %302 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %301
  %303 = load i8, i8* %302
  %304 = add i8 %303, 1
  store i8 %304, i8* %302
  %305 = load i32, i32* @pointer
  %306 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %305
  %307 = load i8, i8* %306
  %308 = add i8 %307, 1
  store i8 %308, i8* %306
  %309 = load i32, i32* @pointer
  %310 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %309
  %311 = load i8, i8* %310
  %312 = add i8 %311, 1
  store i8 %312, i8* %310
  %313 = load i32, i32* @pointer
  %314 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %313
  %315 = load i8, i8* %314
  %316 = add i8 %315, 1
  store i8 %316, i8* %314
  %317 = load i32, i32* @pointer
  %318 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %317
  %319 = load i8, i8* %318
  %320 = add i8 %319, 1
  store i8 %320, i8* %318
  %321 = load i32, i32* @pointer
  %322 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %321
  %323 = load i8, i8* %322
  %324 = add i8 %323, 1
  store i8 %324, i8* %322
  %325 = load i32, i32* @pointer
  %326 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %325
  %327 = load i8, i8* %326
  %328 = add i8 %327, 1
  store i8 %328, i8* %326
  %329 = load i32, i32* @pointer
  %330 = sub i32 %329, 1
  store i32 %330, i32* @pointer
  %331 = load i32, i32* @pointer
  %332 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %331
  %333 = load i8, i8* %332
  %334 = icmp ne i8 %333, 0
  br i1 %334, label %block25, label %block251

block231:                                         ; preds = %block431, %block171
  %335 = load i32, i32* @pointer
  %336 = sub i32 %335, 1
  store i32 %336, i32* @pointer
  %337 = load i32, i32* @pointer
  %338 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %337
  %339 = load i8, i8* %338
  %340 = icmp ne i8 %339, 0
  br i1 %340, label %block45, label %block451

block25:                                          ; preds = %block291, %block23
  %341 = load i32, i32* @pointer
  %342 = add i32 %341, 1
  store i32 %342, i32* @pointer
  %343 = load i32, i32* @pointer
  %344 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %343
  %345 = load i8, i8* %344
  %346 = sub i8 %345, 1
  store i8 %346, i8* %344
  %347 = load i32, i32* @pointer
  %348 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %347
  %349 = load i8, i8* %348
  %350 = icmp ne i8 %349, 0
  br i1 %350, label %block27, label %block271

block251:                                         ; preds = %block291, %block23
  %351 = load i32, i32* @pointer
  %352 = add i32 %351, 1
  store i32 %352, i32* @pointer
  %353 = load i32, i32* @pointer
  %354 = add i32 %353, 1
  store i32 %354, i32* @pointer
  %355 = load i32, i32* @pointer
  %356 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %355
  %357 = load i8, i8* %356
  %358 = icmp ne i8 %357, 0
  br i1 %358, label %block33, label %block331

block27:                                          ; preds = %block27, %block25
  %359 = load i32, i32* @pointer
  %360 = add i32 %359, 1
  store i32 %360, i32* @pointer
  %361 = load i32, i32* @pointer
  %362 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %361
  %363 = load i8, i8* %362
  %364 = add i8 %363, 1
  store i8 %364, i8* %362
  %365 = load i32, i32* @pointer
  %366 = add i32 %365, 1
  store i32 %366, i32* @pointer
  %367 = load i32, i32* @pointer
  %368 = add i32 %367, 1
  store i32 %368, i32* @pointer
  %369 = load i32, i32* @pointer
  %370 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %369
  %371 = load i8, i8* %370
  %372 = icmp ne i8 %371, 0
  br i1 %372, label %block27, label %block271

block271:                                         ; preds = %block27, %block25
  %373 = load i32, i32* @pointer
  %374 = add i32 %373, 1
  store i32 %374, i32* @pointer
  %375 = load i32, i32* @pointer
  %376 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %375
  %377 = load i8, i8* %376
  %378 = icmp ne i8 %377, 0
  br i1 %378, label %block29, label %block291

block29:                                          ; preds = %block311, %block271
  %379 = load i32, i32* @pointer
  %380 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %379
  %381 = load i8, i8* %380
  %382 = add i8 %381, 1
  store i8 %382, i8* %380
  %383 = load i32, i32* @pointer
  %384 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %383
  %385 = load i8, i8* %384
  %386 = icmp ne i8 %385, 0
  br i1 %386, label %block31, label %block311

block291:                                         ; preds = %block311, %block271
  %387 = load i32, i32* @pointer
  %388 = sub i32 %387, 1
  store i32 %388, i32* @pointer
  %389 = load i32, i32* @pointer
  %390 = sub i32 %389, 1
  store i32 %390, i32* @pointer
  %391 = load i32, i32* @pointer
  %392 = sub i32 %391, 1
  store i32 %392, i32* @pointer
  %393 = load i32, i32* @pointer
  %394 = sub i32 %393, 1
  store i32 %394, i32* @pointer
  %395 = load i32, i32* @pointer
  %396 = sub i32 %395, 1
  store i32 %396, i32* @pointer
  %397 = load i32, i32* @pointer
  %398 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %397
  %399 = load i8, i8* %398
  %400 = sub i8 %399, 1
  store i8 %400, i8* %398
  %401 = load i32, i32* @pointer
  %402 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %401
  %403 = load i8, i8* %402
  %404 = icmp ne i8 %403, 0
  br i1 %404, label %block25, label %block251

block31:                                          ; preds = %block31, %block29, %block71, %block1
  %405 = load i32, i32* @pointer
  %406 = sub i32 %405, 1
  store i32 %406, i32* @pointer
  %407 = load i32, i32* @pointer
  %408 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %407
  %409 = load i8, i8* %408
  %410 = add i8 %409, 1
  store i8 %410, i8* %408
  %411 = load i32, i32* @pointer
  %412 = add i32 %411, 1
  store i32 %412, i32* @pointer
  %413 = load i32, i32* @pointer
  %414 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %413
  %415 = load i8, i8* %414
  %416 = sub i8 %415, 1
  store i8 %416, i8* %414
  %417 = load i32, i32* @pointer
  %418 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %417
  %419 = load i8, i8* %418
  %420 = icmp ne i8 %419, 0
  br i1 %420, label %block31, label %block311

block311:                                         ; preds = %block31, %block29
  %421 = load i32, i32* @pointer
  %422 = add i32 %421, 1
  store i32 %422, i32* @pointer
  %423 = load i32, i32* @pointer
  %424 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %423
  %425 = load i8, i8* %424
  %426 = add i8 %425, 1
  store i8 %426, i8* %424
  %427 = load i32, i32* @pointer
  %428 = add i32 %427, 1
  store i32 %428, i32* @pointer
  %429 = load i32, i32* @pointer
  %430 = add i32 %429, 1
  store i32 %430, i32* @pointer
  %431 = load i32, i32* @pointer
  %432 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %431
  %433 = load i8, i8* %432
  %434 = icmp ne i8 %433, 0
  br i1 %434, label %block29, label %block291

block33:                                          ; preds = %block33, %block251
  %435 = load i32, i32* @pointer
  %436 = sub i32 %435, 1
  store i32 %436, i32* @pointer
  %437 = load i32, i32* @pointer
  %438 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %437
  %439 = load i8, i8* %438
  %440 = add i8 %439, 1
  store i8 %440, i8* %438
  %441 = load i32, i32* @pointer
  %442 = add i32 %441, 1
  store i32 %442, i32* @pointer
  %443 = load i32, i32* @pointer
  %444 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %443
  %445 = load i8, i8* %444
  %446 = sub i8 %445, 1
  store i8 %446, i8* %444
  %447 = load i32, i32* @pointer
  %448 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %447
  %449 = load i8, i8* %448
  %450 = icmp ne i8 %449, 0
  br i1 %450, label %block33, label %block331

block331:                                         ; preds = %block33, %block251
  %451 = load i32, i32* @pointer
  %452 = add i32 %451, 1
  store i32 %452, i32* @pointer
  %453 = load i32, i32* @pointer
  %454 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %453
  %455 = load i8, i8* %454
  %456 = icmp ne i8 %455, 0
  br i1 %456, label %block35, label %block351

block35:                                          ; preds = %block411, %block331
  %457 = load i32, i32* @pointer
  %458 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %457
  %459 = load i8, i8* %458
  %460 = sub i8 %459, 1
  store i8 %460, i8* %458
  %461 = load i32, i32* @pointer
  %462 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %461
  %463 = load i8, i8* %462
  %464 = icmp ne i8 %463, 0
  br i1 %464, label %block37, label %block371

block351:                                         ; preds = %block411, %block331
  %465 = load i32, i32* @pointer
  %466 = sub i32 %465, 1
  store i32 %466, i32* @pointer
  %467 = load i32, i32* @pointer
  %468 = sub i32 %467, 1
  store i32 %468, i32* @pointer
  %469 = load i32, i32* @pointer
  %470 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %469
  %471 = load i8, i8* %470
  %472 = icmp ne i8 %471, 0
  br i1 %472, label %block43, label %block431

block37:                                          ; preds = %block391, %block35
  %473 = load i32, i32* @pointer
  %474 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %473
  %475 = load i8, i8* %474
  %476 = sub i8 %475, 1
  store i8 %476, i8* %474
  %477 = load i32, i32* @pointer
  %478 = sub i32 %477, 1
  store i32 %478, i32* @pointer
  %479 = load i32, i32* @pointer
  %480 = sub i32 %479, 1
  store i32 %480, i32* @pointer
  %481 = load i32, i32* @pointer
  %482 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %481
  %483 = load i8, i8* %482
  %484 = icmp ne i8 %483, 0
  br i1 %484, label %block39, label %block391

block371:                                         ; preds = %block391, %block35
  %485 = load i32, i32* @pointer
  %486 = sub i32 %485, 1
  store i32 %486, i32* @pointer
  %487 = load i32, i32* @pointer
  %488 = sub i32 %487, 1
  store i32 %488, i32* @pointer
  %489 = load i32, i32* @pointer
  %490 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %489
  %491 = load i8, i8* %490
  %492 = icmp ne i8 %491, 0
  br i1 %492, label %block41, label %block411

block39:                                          ; preds = %block39, %block37
  %493 = load i32, i32* @pointer
  %494 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %493
  %495 = load i8, i8* %494
  %496 = sub i8 %495, 1
  store i8 %496, i8* %494
  %497 = load i32, i32* @pointer
  %498 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %497
  %499 = load i8, i8* %498
  %500 = icmp ne i8 %499, 0
  br i1 %500, label %block39, label %block391

block391:                                         ; preds = %block39, %block37
  %501 = load i32, i32* @pointer
  %502 = add i32 %501, 1
  store i32 %502, i32* @pointer
  %503 = load i32, i32* @pointer
  %504 = add i32 %503, 1
  store i32 %504, i32* @pointer
  %505 = load i32, i32* @pointer
  %506 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %505
  %507 = load i8, i8* %506
  %508 = icmp ne i8 %507, 0
  br i1 %508, label %block37, label %block371

block41:                                          ; preds = %block41, %block371
  %509 = load i32, i32* @pointer
  %510 = sub i32 %509, 1
  store i32 %510, i32* @pointer
  %511 = load i32, i32* @pointer
  %512 = sub i32 %511, 1
  store i32 %512, i32* @pointer
  %513 = load i32, i32* @pointer
  %514 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %513
  %515 = load i8, i8* %514
  %516 = sub i8 %515, 1
  store i8 %516, i8* %514
  %517 = load i32, i32* @pointer
  %518 = add i32 %517, 1
  store i32 %518, i32* @pointer
  %519 = load i32, i32* @pointer
  %520 = add i32 %519, 1
  store i32 %520, i32* @pointer
  %521 = load i32, i32* @pointer
  %522 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %521
  %523 = load i8, i8* %522
  %524 = sub i8 %523, 1
  store i8 %524, i8* %522
  %525 = load i32, i32* @pointer
  %526 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %525
  %527 = load i8, i8* %526
  %528 = icmp ne i8 %527, 0
  br i1 %528, label %block41, label %block411

block411:                                         ; preds = %block41, %block371
  %529 = load i32, i32* @pointer
  %530 = add i32 %529, 1
  store i32 %530, i32* @pointer
  %531 = load i32, i32* @pointer
  %532 = add i32 %531, 1
  store i32 %532, i32* @pointer
  %533 = load i32, i32* @pointer
  %534 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %533
  %535 = load i8, i8* %534
  %536 = icmp ne i8 %535, 0
  br i1 %536, label %block35, label %block351

block43:                                          ; preds = %block43, %block351
  %537 = load i32, i32* @pointer
  %538 = sub i32 %537, 1
  store i32 %538, i32* @pointer
  %539 = load i32, i32* @pointer
  %540 = sub i32 %539, 1
  store i32 %540, i32* @pointer
  %541 = load i32, i32* @pointer
  %542 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %541
  %543 = load i8, i8* %542
  %544 = add i8 %543, 1
  store i8 %544, i8* %542
  %545 = load i32, i32* @pointer
  %546 = add i32 %545, 1
  store i32 %546, i32* @pointer
  %547 = load i32, i32* @pointer
  %548 = add i32 %547, 1
  store i32 %548, i32* @pointer
  %549 = load i32, i32* @pointer
  %550 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %549
  %551 = load i8, i8* %550
  %552 = sub i8 %551, 1
  store i8 %552, i8* %550
  %553 = load i32, i32* @pointer
  %554 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %553
  %555 = load i8, i8* %554
  %556 = icmp ne i8 %555, 0
  br i1 %556, label %block43, label %block431

block431:                                         ; preds = %block43, %block351
  %557 = load i32, i32* @pointer
  %558 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %557
  %559 = load i8, i8* %558
  %560 = icmp ne i8 %559, 0
  br i1 %560, label %block23, label %block231

block45:                                          ; preds = %block45, %block231
  %561 = load i32, i32* @pointer
  %562 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %561
  %563 = load i8, i8* %562
  %564 = sub i8 %563, 1
  store i8 %564, i8* %562
  %565 = load i32, i32* @pointer
  %566 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %565
  %567 = load i8, i8* %566
  %568 = icmp ne i8 %567, 0
  br i1 %568, label %block45, label %block451

block451:                                         ; preds = %block45, %block231
  %569 = load i32, i32* @pointer
  %570 = sub i32 %569, 1
  store i32 %570, i32* @pointer
  %571 = load i32, i32* @pointer
  %572 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %571
  %573 = load i8, i8* %572
  %574 = call i32 @putchar(i8 %573)
  %575 = load i32, i32* @pointer
  %576 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %575
  %577 = load i8, i8* %576
  %578 = icmp ne i8 %577, 0
  br i1 %578, label %block47, label %block471

block47:                                          ; preds = %block47, %block451
  %579 = load i32, i32* @pointer
  %580 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %579
  %581 = load i8, i8* %580
  %582 = sub i8 %581, 1
  store i8 %582, i8* %580
  %583 = load i32, i32* @pointer
  %584 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %583
  %585 = load i8, i8* %584
  %586 = icmp ne i8 %585, 0
  br i1 %586, label %block47, label %block471

block471:                                         ; preds = %block47, %block451
  %587 = load i32, i32* @pointer
  %588 = sub i32 %587, 1
  store i32 %588, i32* @pointer
  %589 = load i32, i32* @pointer
  %590 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %589
  %591 = load i8, i8* %590
  %592 = sub i8 %591, 1
  store i8 %592, i8* %590
  %593 = call i8 @getchar()
  %594 = load i32, i32* @pointer
  %595 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %594
  store i8 %593, i8* %595
  %596 = load i32, i32* @pointer
  %597 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %596
  %598 = load i8, i8* %597
  %599 = add i8 %598, 1
  store i8 %599, i8* %597
  %600 = load i32, i32* @pointer
  %601 = getelementptr [512 x i8], [512 x i8]* @tape, i32 0, i32 %600
  %602 = load i8, i8* %601
  %603 = icmp ne i8 %602, 0
  br i1 %603, label %block1, label %block11
}
