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
  %1 = add i32 %0, 1
  store i32 %1, i32* @pointer
  %2 = load i32, i32* @pointer
  %3 = add i32 %2, 1
  store i32 %3, i32* @pointer
  %4 = load i32, i32* @pointer
  %5 = add i32 %4, 1
  store i32 %5, i32* @pointer
  %6 = load i32, i32* @pointer
  %7 = add i32 %6, 1
  store i32 %7, i32* @pointer
  %8 = load i32, i32* @pointer
  %9 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %8
  %10 = load i8, i8* %9
  %11 = add i8 %10, 1
  store i8 %11, i8* %9
  %12 = load i32, i32* @pointer
  %13 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %12
  %14 = load i8, i8* %13
  %15 = add i8 %14, 1
  store i8 %15, i8* %13
  %16 = load i32, i32* @pointer
  %17 = add i32 %16, 1
  store i32 %17, i32* @pointer
  %18 = load i32, i32* @pointer
  %19 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %18
  %20 = load i8, i8* %19
  %21 = add i8 %20, 1
  store i8 %21, i8* %19
  %22 = load i32, i32* @pointer
  %23 = add i32 %22, 1
  store i32 %23, i32* @pointer
  %24 = load i32, i32* @pointer
  %25 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %24
  %26 = load i8, i8* %25
  %27 = add i8 %26, 1
  store i8 %27, i8* %25
  %28 = load i32, i32* @pointer
  %29 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %28
  %30 = load i8, i8* %29
  %31 = add i8 %30, 1
  store i8 %31, i8* %29
  %32 = load i32, i32* @pointer
  %33 = add i32 %32, 1
  store i32 %33, i32* @pointer
  %34 = load i32, i32* @pointer
  %35 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %34
  %36 = load i8, i8* %35
  %37 = add i8 %36, 1
  store i8 %37, i8* %35
  %38 = load i32, i32* @pointer
  %39 = add i32 %38, 1
  store i32 %39, i32* @pointer
  %40 = load i32, i32* @pointer
  %41 = add i32 %40, 1
  store i32 %41, i32* @pointer
  %42 = load i32, i32* @pointer
  %43 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %42
  %44 = load i8, i8* %43
  %45 = add i8 %44, 1
  store i8 %45, i8* %43
  %46 = load i32, i32* @pointer
  %47 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %46
  %48 = load i8, i8* %47
  %49 = add i8 %48, 1
  store i8 %49, i8* %47
  %50 = load i32, i32* @pointer
  %51 = sub i32 %50, 1
  store i32 %51, i32* @pointer
  %52 = load i32, i32* @pointer
  %53 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %52
  %54 = load i8, i8* %53
  %55 = add i8 %54, 1
  store i8 %55, i8* %53
  %56 = load i32, i32* @pointer
  %57 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %56
  %58 = load i8, i8* %57
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %block11, label %block111

block11:                                          ; preds = %block65651, %entry
  %60 = load i32, i32* @pointer
  %61 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %60
  %62 = load i8, i8* %61
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %block33, label %block331

block111:                                         ; preds = %block65651, %entry
  ret void

block33:                                          ; preds = %block551, %block11
  %64 = load i32, i32* @pointer
  %65 = add i32 %64, 1
  store i32 %65, i32* @pointer
  %66 = load i32, i32* @pointer
  %67 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %66
  %68 = load i8, i8* %67
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %block55, label %block551

block331:                                         ; preds = %block551, %block11
  %70 = load i32, i32* @pointer
  %71 = add i32 %70, 1
  store i32 %71, i32* @pointer
  %72 = load i32, i32* @pointer
  %73 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %72
  %74 = load i8, i8* %73
  %75 = sub i8 %74, 1
  store i8 %75, i8* %73
  %76 = load i32, i32* @pointer
  %77 = add i32 %76, 1
  store i32 %77, i32* @pointer
  %78 = load i32, i32* @pointer
  %79 = add i32 %78, 1
  store i32 %79, i32* @pointer
  %80 = load i32, i32* @pointer
  %81 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %80
  %82 = load i8, i8* %81
  %83 = sub i8 %82, 1
  store i8 %83, i8* %81
  %84 = load i32, i32* @pointer
  %85 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %84
  %86 = load i8, i8* %85
  %87 = sub i8 %86, 1
  store i8 %87, i8* %85
  %88 = load i32, i32* @pointer
  %89 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %88
  %90 = load i8, i8* %89
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %block1313, label %block13131

block55:                                          ; preds = %block991, %block33
  %92 = load i32, i32* @pointer
  %93 = add i32 %92, 1
  store i32 %93, i32* @pointer
  %94 = load i32, i32* @pointer
  %95 = add i32 %94, 1
  store i32 %95, i32* @pointer
  %96 = load i32, i32* @pointer
  %97 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %96
  %98 = load i8, i8* %97
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %block77, label %block771

block551:                                         ; preds = %block991, %block33
  %100 = load i32, i32* @pointer
  %101 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %100
  %102 = load i8, i8* %101
  %103 = add i8 %102, 1
  store i8 %103, i8* %101
  %104 = load i32, i32* @pointer
  %105 = sub i32 %104, 1
  store i32 %105, i32* @pointer
  %106 = load i32, i32* @pointer
  %107 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %106
  %108 = load i8, i8* %107
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %block33, label %block331

block77:                                          ; preds = %block77, %block55
  %110 = load i32, i32* @pointer
  %111 = add i32 %110, 1
  store i32 %111, i32* @pointer
  %112 = load i32, i32* @pointer
  %113 = add i32 %112, 1
  store i32 %113, i32* @pointer
  %114 = load i32, i32* @pointer
  %115 = add i32 %114, 1
  store i32 %115, i32* @pointer
  %116 = load i32, i32* @pointer
  %117 = add i32 %116, 1
  store i32 %117, i32* @pointer
  %118 = load i32, i32* @pointer
  %119 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %118
  %120 = load i8, i8* %119
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %block77, label %block771

block771:                                         ; preds = %block77, %block55
  %122 = load i32, i32* @pointer
  %123 = sub i32 %122, 1
  store i32 %123, i32* @pointer
  %124 = load i32, i32* @pointer
  %125 = sub i32 %124, 1
  store i32 %125, i32* @pointer
  %126 = load i32, i32* @pointer
  %127 = sub i32 %126, 1
  store i32 %127, i32* @pointer
  %128 = load i32, i32* @pointer
  %129 = sub i32 %128, 1
  store i32 %129, i32* @pointer
  %130 = load i32, i32* @pointer
  %131 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %130
  %132 = load i8, i8* %131
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %block99, label %block991

block99:                                          ; preds = %block11111, %block771
  %134 = load i32, i32* @pointer
  %135 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %134
  %136 = load i8, i8* %135
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %block1111, label %block11111

block991:                                         ; preds = %block11111, %block771
  %138 = load i32, i32* @pointer
  %139 = add i32 %138, 1
  store i32 %139, i32* @pointer
  %140 = load i32, i32* @pointer
  %141 = add i32 %140, 1
  store i32 %141, i32* @pointer
  %142 = load i32, i32* @pointer
  %143 = add i32 %142, 1
  store i32 %143, i32* @pointer
  %144 = load i32, i32* @pointer
  %145 = add i32 %144, 1
  store i32 %145, i32* @pointer
  %146 = load i32, i32* @pointer
  %147 = add i32 %146, 1
  store i32 %147, i32* @pointer
  %148 = load i32, i32* @pointer
  %149 = add i32 %148, 1
  store i32 %149, i32* @pointer
  %150 = load i32, i32* @pointer
  %151 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %150
  %152 = load i8, i8* %151
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %block55, label %block551

block1111:                                        ; preds = %block1111, %block99
  %154 = load i32, i32* @pointer
  %155 = add i32 %154, 1
  store i32 %155, i32* @pointer
  %156 = load i32, i32* @pointer
  %157 = add i32 %156, 1
  store i32 %157, i32* @pointer
  %158 = load i32, i32* @pointer
  %159 = add i32 %158, 1
  store i32 %159, i32* @pointer
  %160 = load i32, i32* @pointer
  %161 = add i32 %160, 1
  store i32 %161, i32* @pointer
  %162 = load i32, i32* @pointer
  %163 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %162
  %164 = load i8, i8* %163
  %165 = add i8 %164, 1
  store i8 %165, i8* %163
  %166 = load i32, i32* @pointer
  %167 = sub i32 %166, 1
  store i32 %167, i32* @pointer
  %168 = load i32, i32* @pointer
  %169 = sub i32 %168, 1
  store i32 %169, i32* @pointer
  %170 = load i32, i32* @pointer
  %171 = sub i32 %170, 1
  store i32 %171, i32* @pointer
  %172 = load i32, i32* @pointer
  %173 = sub i32 %172, 1
  store i32 %173, i32* @pointer
  %174 = load i32, i32* @pointer
  %175 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %174
  %176 = load i8, i8* %175
  %177 = sub i8 %176, 1
  store i8 %177, i8* %175
  %178 = load i32, i32* @pointer
  %179 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %178
  %180 = load i8, i8* %179
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %block1111, label %block11111

block11111:                                       ; preds = %block1111, %block99
  %182 = load i32, i32* @pointer
  %183 = sub i32 %182, 1
  store i32 %183, i32* @pointer
  %184 = load i32, i32* @pointer
  %185 = sub i32 %184, 1
  store i32 %185, i32* @pointer
  %186 = load i32, i32* @pointer
  %187 = sub i32 %186, 1
  store i32 %187, i32* @pointer
  %188 = load i32, i32* @pointer
  %189 = sub i32 %188, 1
  store i32 %189, i32* @pointer
  %190 = load i32, i32* @pointer
  %191 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %190
  %192 = load i8, i8* %191
  %193 = icmp ne i8 %192, 0
  br i1 %193, label %block99, label %block991

block1313:                                        ; preds = %block15151, %block331
  %194 = load i32, i32* @pointer
  %195 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %194
  %196 = load i8, i8* %195
  %197 = add i8 %196, 1
  store i8 %197, i8* %195
  %198 = load i32, i32* @pointer
  %199 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %198
  %200 = load i8, i8* %199
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %block1515, label %block15151

block13131:                                       ; preds = %block15151, %block331
  %202 = load i32, i32* @pointer
  %203 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %202
  %204 = load i8, i8* %203
  %205 = add i8 %204, 1
  store i8 %205, i8* %203
  %206 = load i32, i32* @pointer
  %207 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %206
  %208 = load i8, i8* %207
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %block1717, label %block17171

block1515:                                        ; preds = %block1515, %block1313
  %210 = load i32, i32* @pointer
  %211 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %210
  %212 = load i8, i8* %211
  %213 = add i8 %212, 1
  store i8 %213, i8* %211
  %214 = load i32, i32* @pointer
  %215 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %214
  %216 = load i8, i8* %215
  %217 = add i8 %216, 1
  store i8 %217, i8* %215
  %218 = load i32, i32* @pointer
  %219 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %218
  %220 = load i8, i8* %219
  %221 = add i8 %220, 1
  store i8 %221, i8* %219
  %222 = load i32, i32* @pointer
  %223 = sub i32 %222, 1
  store i32 %223, i32* @pointer
  %224 = load i32, i32* @pointer
  %225 = sub i32 %224, 1
  store i32 %225, i32* @pointer
  %226 = load i32, i32* @pointer
  %227 = sub i32 %226, 1
  store i32 %227, i32* @pointer
  %228 = load i32, i32* @pointer
  %229 = sub i32 %228, 1
  store i32 %229, i32* @pointer
  %230 = load i32, i32* @pointer
  %231 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %230
  %232 = load i8, i8* %231
  %233 = sub i8 %232, 1
  store i8 %233, i8* %231
  %234 = load i32, i32* @pointer
  %235 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %234
  %236 = load i8, i8* %235
  %237 = sub i8 %236, 1
  store i8 %237, i8* %235
  %238 = load i32, i32* @pointer
  %239 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %238
  %240 = load i8, i8* %239
  %241 = icmp ne i8 %240, 0
  br i1 %241, label %block1515, label %block15151

block15151:                                       ; preds = %block1515, %block1313
  %242 = load i32, i32* @pointer
  %243 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %242
  %244 = load i8, i8* %243
  %245 = add i8 %244, 1
  store i8 %245, i8* %243
  %246 = load i32, i32* @pointer
  %247 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %246
  %248 = load i8, i8* %247
  %249 = add i8 %248, 1
  store i8 %249, i8* %247
  %250 = load i32, i32* @pointer
  %251 = add i32 %250, 1
  store i32 %251, i32* @pointer
  %252 = load i32, i32* @pointer
  %253 = add i32 %252, 1
  store i32 %253, i32* @pointer
  %254 = load i32, i32* @pointer
  %255 = add i32 %254, 1
  store i32 %255, i32* @pointer
  %256 = load i32, i32* @pointer
  %257 = add i32 %256, 1
  store i32 %257, i32* @pointer
  %258 = load i32, i32* @pointer
  %259 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %258
  %260 = load i8, i8* %259
  %261 = sub i8 %260, 1
  store i8 %261, i8* %259
  %262 = load i32, i32* @pointer
  %263 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %262
  %264 = load i8, i8* %263
  %265 = sub i8 %264, 1
  store i8 %265, i8* %263
  %266 = load i32, i32* @pointer
  %267 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %266
  %268 = load i8, i8* %267
  %269 = icmp ne i8 %268, 0
  br i1 %269, label %block1313, label %block13131

block1717:                                        ; preds = %block1717, %block13131
  %270 = load i32, i32* @pointer
  %271 = add i32 %270, 1
  store i32 %271, i32* @pointer
  %272 = load i32, i32* @pointer
  %273 = add i32 %272, 1
  store i32 %273, i32* @pointer
  %274 = load i32, i32* @pointer
  %275 = add i32 %274, 1
  store i32 %275, i32* @pointer
  %276 = load i32, i32* @pointer
  %277 = add i32 %276, 1
  store i32 %277, i32* @pointer
  %278 = load i32, i32* @pointer
  %279 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %278
  %280 = load i8, i8* %279
  %281 = icmp ne i8 %280, 0
  br i1 %281, label %block1717, label %block17171

block17171:                                       ; preds = %block1717, %block13131
  %282 = load i32, i32* @pointer
  %283 = sub i32 %282, 1
  store i32 %283, i32* @pointer
  %284 = load i32, i32* @pointer
  %285 = sub i32 %284, 1
  store i32 %285, i32* @pointer
  %286 = load i32, i32* @pointer
  %287 = sub i32 %286, 1
  store i32 %287, i32* @pointer
  %288 = load i32, i32* @pointer
  %289 = sub i32 %288, 1
  store i32 %289, i32* @pointer
  %290 = load i32, i32* @pointer
  %291 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %290
  %292 = load i8, i8* %291
  %293 = icmp ne i8 %292, 0
  br i1 %293, label %block1919, label %block19191

block1919:                                        ; preds = %block1919, %block17171
  %294 = load i32, i32* @pointer
  %295 = sub i32 %294, 1
  store i32 %295, i32* @pointer
  %296 = load i32, i32* @pointer
  %297 = sub i32 %296, 1
  store i32 %297, i32* @pointer
  %298 = load i32, i32* @pointer
  %299 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %298
  %300 = load i8, i8* %299
  %301 = add i8 %300, 1
  store i8 %301, i8* %299
  %302 = load i32, i32* @pointer
  %303 = sub i32 %302, 1
  store i32 %303, i32* @pointer
  %304 = load i32, i32* @pointer
  %305 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %304
  %306 = load i8, i8* %305
  %307 = add i8 %306, 1
  store i8 %307, i8* %305
  %308 = load i32, i32* @pointer
  %309 = sub i32 %308, 1
  store i32 %309, i32* @pointer
  %310 = load i32, i32* @pointer
  %311 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %310
  %312 = load i8, i8* %311
  %313 = icmp ne i8 %312, 0
  br i1 %313, label %block1919, label %block19191

block19191:                                       ; preds = %block1919, %block17171
  %314 = load i32, i32* @pointer
  %315 = sub i32 %314, 1
  store i32 %315, i32* @pointer
  %316 = load i32, i32* @pointer
  %317 = sub i32 %316, 1
  store i32 %317, i32* @pointer
  %318 = load i32, i32* @pointer
  %319 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %318
  %320 = load i8, i8* %319
  %321 = icmp ne i8 %320, 0
  br i1 %321, label %block2121, label %block21211

block2121:                                        ; preds = %block47471, %block19191
  %322 = load i32, i32* @pointer
  %323 = add i32 %322, 1
  store i32 %323, i32* @pointer
  %324 = load i32, i32* @pointer
  %325 = add i32 %324, 1
  store i32 %325, i32* @pointer
  %326 = load i32, i32* @pointer
  %327 = add i32 %326, 1
  store i32 %327, i32* @pointer
  %328 = load i32, i32* @pointer
  %329 = add i32 %328, 1
  store i32 %329, i32* @pointer
  %330 = load i32, i32* @pointer
  %331 = add i32 %330, 1
  store i32 %331, i32* @pointer
  %332 = load i32, i32* @pointer
  %333 = add i32 %332, 1
  store i32 %333, i32* @pointer
  %334 = load i32, i32* @pointer
  %335 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %334
  %336 = load i8, i8* %335
  %337 = icmp ne i8 %336, 0
  br i1 %337, label %block2323, label %block23231

block21211:                                       ; preds = %block47471, %block19191
  %338 = load i32, i32* @pointer
  %339 = add i32 %338, 1
  store i32 %339, i32* @pointer
  %340 = load i32, i32* @pointer
  %341 = add i32 %340, 1
  store i32 %341, i32* @pointer
  %342 = load i32, i32* @pointer
  %343 = add i32 %342, 1
  store i32 %343, i32* @pointer
  %344 = load i32, i32* @pointer
  %345 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %344
  %346 = load i8, i8* %345
  %347 = add i8 %346, 1
  store i8 %347, i8* %345
  %348 = load i32, i32* @pointer
  %349 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %348
  %350 = load i8, i8* %349
  %351 = icmp ne i8 %350, 0
  br i1 %351, label %block5959, label %block59591

block2323:                                        ; preds = %block25251, %block2121
  %352 = load i32, i32* @pointer
  %353 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %352
  %354 = load i8, i8* %353
  %355 = icmp ne i8 %354, 0
  br i1 %355, label %block2525, label %block25251

block23231:                                       ; preds = %block25251, %block2121
  %356 = load i32, i32* @pointer
  %357 = sub i32 %356, 1
  store i32 %357, i32* @pointer
  %358 = load i32, i32* @pointer
  %359 = sub i32 %358, 1
  store i32 %359, i32* @pointer
  %360 = load i32, i32* @pointer
  %361 = sub i32 %360, 1
  store i32 %361, i32* @pointer
  %362 = load i32, i32* @pointer
  %363 = sub i32 %362, 1
  store i32 %363, i32* @pointer
  %364 = load i32, i32* @pointer
  %365 = sub i32 %364, 1
  store i32 %365, i32* @pointer
  %366 = load i32, i32* @pointer
  %367 = sub i32 %366, 1
  store i32 %367, i32* @pointer
  %368 = load i32, i32* @pointer
  %369 = sub i32 %368, 1
  store i32 %369, i32* @pointer
  %370 = load i32, i32* @pointer
  %371 = sub i32 %370, 1
  store i32 %371, i32* @pointer
  %372 = load i32, i32* @pointer
  %373 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %372
  %374 = load i8, i8* %373
  %375 = icmp ne i8 %374, 0
  br i1 %375, label %block2727, label %block27271

block2525:                                        ; preds = %block2525, %block2323
  %376 = load i32, i32* @pointer
  %377 = sub i32 %376, 1
  store i32 %377, i32* @pointer
  %378 = load i32, i32* @pointer
  %379 = sub i32 %378, 1
  store i32 %379, i32* @pointer
  %380 = load i32, i32* @pointer
  %381 = sub i32 %380, 1
  store i32 %381, i32* @pointer
  %382 = load i32, i32* @pointer
  %383 = sub i32 %382, 1
  store i32 %383, i32* @pointer
  %384 = load i32, i32* @pointer
  %385 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %384
  %386 = load i8, i8* %385
  %387 = add i8 %386, 1
  store i8 %387, i8* %385
  %388 = load i32, i32* @pointer
  %389 = add i32 %388, 1
  store i32 %389, i32* @pointer
  %390 = load i32, i32* @pointer
  %391 = add i32 %390, 1
  store i32 %391, i32* @pointer
  %392 = load i32, i32* @pointer
  %393 = add i32 %392, 1
  store i32 %393, i32* @pointer
  %394 = load i32, i32* @pointer
  %395 = add i32 %394, 1
  store i32 %395, i32* @pointer
  %396 = load i32, i32* @pointer
  %397 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %396
  %398 = load i8, i8* %397
  %399 = sub i8 %398, 1
  store i8 %399, i8* %397
  %400 = load i32, i32* @pointer
  %401 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %400
  %402 = load i8, i8* %401
  %403 = icmp ne i8 %402, 0
  br i1 %403, label %block2525, label %block25251

block25251:                                       ; preds = %block2525, %block2323
  %404 = load i32, i32* @pointer
  %405 = add i32 %404, 1
  store i32 %405, i32* @pointer
  %406 = load i32, i32* @pointer
  %407 = add i32 %406, 1
  store i32 %407, i32* @pointer
  %408 = load i32, i32* @pointer
  %409 = add i32 %408, 1
  store i32 %409, i32* @pointer
  %410 = load i32, i32* @pointer
  %411 = add i32 %410, 1
  store i32 %411, i32* @pointer
  %412 = load i32, i32* @pointer
  %413 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %412
  %414 = load i8, i8* %413
  %415 = icmp ne i8 %414, 0
  br i1 %415, label %block2323, label %block23231

block2727:                                        ; preds = %block2727, %block23231
  %416 = load i32, i32* @pointer
  %417 = sub i32 %416, 1
  store i32 %417, i32* @pointer
  %418 = load i32, i32* @pointer
  %419 = sub i32 %418, 1
  store i32 %419, i32* @pointer
  %420 = load i32, i32* @pointer
  %421 = sub i32 %420, 1
  store i32 %421, i32* @pointer
  %422 = load i32, i32* @pointer
  %423 = sub i32 %422, 1
  store i32 %423, i32* @pointer
  %424 = load i32, i32* @pointer
  %425 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %424
  %426 = load i8, i8* %425
  %427 = icmp ne i8 %426, 0
  br i1 %427, label %block2727, label %block27271

block27271:                                       ; preds = %block2727, %block23231
  %428 = load i32, i32* @pointer
  %429 = add i32 %428, 1
  store i32 %429, i32* @pointer
  %430 = load i32, i32* @pointer
  %431 = add i32 %430, 1
  store i32 %431, i32* @pointer
  %432 = load i32, i32* @pointer
  %433 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %432
  %434 = load i8, i8* %433
  %435 = sub i8 %434, 1
  store i8 %435, i8* %433
  %436 = load i32, i32* @pointer
  %437 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %436
  %438 = load i8, i8* %437
  %439 = icmp ne i8 %438, 0
  br i1 %439, label %block2929, label %block29291

block2929:                                        ; preds = %block2929, %block27271
  %440 = load i32, i32* @pointer
  %441 = sub i32 %440, 1
  store i32 %441, i32* @pointer
  %442 = load i32, i32* @pointer
  %443 = sub i32 %442, 1
  store i32 %443, i32* @pointer
  %444 = load i32, i32* @pointer
  %445 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %444
  %446 = load i8, i8* %445
  %447 = add i8 %446, 1
  store i8 %447, i8* %445
  %448 = load i32, i32* @pointer
  %449 = add i32 %448, 1
  store i32 %449, i32* @pointer
  %450 = load i32, i32* @pointer
  %451 = add i32 %450, 1
  store i32 %451, i32* @pointer
  %452 = load i32, i32* @pointer
  %453 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %452
  %454 = load i8, i8* %453
  %455 = sub i8 %454, 1
  store i8 %455, i8* %453
  %456 = load i32, i32* @pointer
  %457 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %456
  %458 = load i8, i8* %457
  %459 = icmp ne i8 %458, 0
  br i1 %459, label %block2929, label %block29291

block29291:                                       ; preds = %block2929, %block27271
  %460 = load i32, i32* @pointer
  %461 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %460
  %462 = load i8, i8* %461
  %463 = add i8 %462, 1
  store i8 %463, i8* %461
  %464 = load i32, i32* @pointer
  %465 = sub i32 %464, 1
  store i32 %465, i32* @pointer
  %466 = load i32, i32* @pointer
  %467 = sub i32 %466, 1
  store i32 %467, i32* @pointer
  %468 = load i32, i32* @pointer
  %469 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %468
  %470 = load i8, i8* %469
  %471 = icmp ne i8 %470, 0
  br i1 %471, label %block3131, label %block31311

block3131:                                        ; preds = %block41411, %block29291
  %472 = load i32, i32* @pointer
  %473 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %472
  %474 = load i8, i8* %473
  %475 = sub i8 %474, 1
  store i8 %475, i8* %473
  %476 = load i32, i32* @pointer
  %477 = add i32 %476, 1
  store i32 %477, i32* @pointer
  %478 = load i32, i32* @pointer
  %479 = add i32 %478, 1
  store i32 %479, i32* @pointer
  %480 = load i32, i32* @pointer
  %481 = add i32 %480, 1
  store i32 %481, i32* @pointer
  %482 = load i32, i32* @pointer
  %483 = add i32 %482, 1
  store i32 %483, i32* @pointer
  %484 = load i32, i32* @pointer
  %485 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %484
  %486 = load i8, i8* %485
  %487 = icmp ne i8 %486, 0
  br i1 %487, label %block3333, label %block33331

block31311:                                       ; preds = %block41411, %block29291
  %488 = load i32, i32* @pointer
  %489 = add i32 %488, 1
  store i32 %489, i32* @pointer
  %490 = load i32, i32* @pointer
  %491 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %490
  %492 = load i8, i8* %491
  %493 = icmp ne i8 %492, 0
  br i1 %493, label %block4343, label %block43431

block3333:                                        ; preds = %block39391, %block3131
  %494 = load i32, i32* @pointer
  %495 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %494
  %496 = load i8, i8* %495
  %497 = sub i8 %496, 1
  store i8 %497, i8* %495
  %498 = load i32, i32* @pointer
  %499 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %498
  %500 = load i8, i8* %499
  %501 = icmp ne i8 %500, 0
  br i1 %501, label %block3535, label %block35351

block33331:                                       ; preds = %block39391, %block3131
  %502 = load i32, i32* @pointer
  %503 = sub i32 %502, 1
  store i32 %503, i32* @pointer
  %504 = load i32, i32* @pointer
  %505 = sub i32 %504, 1
  store i32 %505, i32* @pointer
  %506 = load i32, i32* @pointer
  %507 = sub i32 %506, 1
  store i32 %507, i32* @pointer
  %508 = load i32, i32* @pointer
  %509 = sub i32 %508, 1
  store i32 %509, i32* @pointer
  %510 = load i32, i32* @pointer
  %511 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %510
  %512 = load i8, i8* %511
  %513 = icmp ne i8 %512, 0
  br i1 %513, label %block4141, label %block41411

block3535:                                        ; preds = %block3535, %block3333
  %514 = load i32, i32* @pointer
  %515 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %514
  %516 = load i8, i8* %515
  %517 = add i8 %516, 1
  store i8 %517, i8* %515
  %518 = load i32, i32* @pointer
  %519 = add i32 %518, 1
  store i32 %519, i32* @pointer
  %520 = load i32, i32* @pointer
  %521 = add i32 %520, 1
  store i32 %521, i32* @pointer
  %522 = load i32, i32* @pointer
  %523 = add i32 %522, 1
  store i32 %523, i32* @pointer
  %524 = load i32, i32* @pointer
  %525 = add i32 %524, 1
  store i32 %525, i32* @pointer
  %526 = load i32, i32* @pointer
  %527 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %526
  %528 = load i8, i8* %527
  %529 = sub i8 %528, 1
  store i8 %529, i8* %527
  %530 = load i32, i32* @pointer
  %531 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %530
  %532 = load i8, i8* %531
  %533 = icmp ne i8 %532, 0
  br i1 %533, label %block3535, label %block35351

block35351:                                       ; preds = %block3535, %block3333
  %534 = load i32, i32* @pointer
  %535 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %534
  %536 = load i8, i8* %535
  %537 = sub i8 %536, 1
  store i8 %537, i8* %535
  %538 = load i32, i32* @pointer
  %539 = sub i32 %538, 1
  store i32 %539, i32* @pointer
  %540 = load i32, i32* @pointer
  %541 = sub i32 %540, 1
  store i32 %541, i32* @pointer
  %542 = load i32, i32* @pointer
  %543 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %542
  %544 = load i8, i8* %543
  %545 = sub i8 %544, 1
  store i8 %545, i8* %543
  %546 = load i32, i32* @pointer
  %547 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %546
  %548 = load i8, i8* %547
  %549 = icmp ne i8 %548, 0
  br i1 %549, label %block3737, label %block37371

block3737:                                        ; preds = %block3737, %block35351
  %550 = load i32, i32* @pointer
  %551 = add i32 %550, 1
  store i32 %551, i32* @pointer
  %552 = load i32, i32* @pointer
  %553 = add i32 %552, 1
  store i32 %553, i32* @pointer
  %554 = load i32, i32* @pointer
  %555 = add i32 %554, 1
  store i32 %555, i32* @pointer
  %556 = load i32, i32* @pointer
  %557 = add i32 %556, 1
  store i32 %557, i32* @pointer
  %558 = load i32, i32* @pointer
  %559 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %558
  %560 = load i8, i8* %559
  %561 = sub i8 %560, 1
  store i8 %561, i8* %559
  %562 = load i32, i32* @pointer
  %563 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %562
  %564 = load i8, i8* %563
  %565 = icmp ne i8 %564, 0
  br i1 %565, label %block3737, label %block37371

block37371:                                       ; preds = %block3737, %block35351
  %566 = load i32, i32* @pointer
  %567 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %566
  %568 = load i8, i8* %567
  %569 = add i8 %568, 1
  store i8 %569, i8* %567
  %570 = load i32, i32* @pointer
  %571 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %570
  %572 = load i8, i8* %571
  %573 = add i8 %572, 1
  store i8 %573, i8* %571
  %574 = load i32, i32* @pointer
  %575 = add i32 %574, 1
  store i32 %575, i32* @pointer
  %576 = load i32, i32* @pointer
  %577 = add i32 %576, 1
  store i32 %577, i32* @pointer
  %578 = load i32, i32* @pointer
  %579 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %578
  %580 = load i8, i8* %579
  %581 = add i8 %580, 1
  store i8 %581, i8* %579
  %582 = load i32, i32* @pointer
  %583 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %582
  %584 = load i8, i8* %583
  %585 = icmp ne i8 %584, 0
  br i1 %585, label %block3939, label %block39391

block3939:                                        ; preds = %block3939, %block37371
  %586 = load i32, i32* @pointer
  %587 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %586
  %588 = load i8, i8* %587
  %589 = sub i8 %588, 1
  store i8 %589, i8* %587
  %590 = load i32, i32* @pointer
  %591 = sub i32 %590, 1
  store i32 %591, i32* @pointer
  %592 = load i32, i32* @pointer
  %593 = sub i32 %592, 1
  store i32 %593, i32* @pointer
  %594 = load i32, i32* @pointer
  %595 = sub i32 %594, 1
  store i32 %595, i32* @pointer
  %596 = load i32, i32* @pointer
  %597 = sub i32 %596, 1
  store i32 %597, i32* @pointer
  %598 = load i32, i32* @pointer
  %599 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %598
  %600 = load i8, i8* %599
  %601 = add i8 %600, 1
  store i8 %601, i8* %599
  %602 = load i32, i32* @pointer
  %603 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %602
  %604 = load i8, i8* %603
  %605 = icmp ne i8 %604, 0
  br i1 %605, label %block3939, label %block39391

block39391:                                       ; preds = %block3939, %block37371
  %606 = load i32, i32* @pointer
  %607 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %606
  %608 = load i8, i8* %607
  %609 = add i8 %608, 1
  store i8 %609, i8* %607
  %610 = load i32, i32* @pointer
  %611 = add i32 %610, 1
  store i32 %611, i32* @pointer
  %612 = load i32, i32* @pointer
  %613 = add i32 %612, 1
  store i32 %613, i32* @pointer
  %614 = load i32, i32* @pointer
  %615 = add i32 %614, 1
  store i32 %615, i32* @pointer
  %616 = load i32, i32* @pointer
  %617 = add i32 %616, 1
  store i32 %617, i32* @pointer
  %618 = load i32, i32* @pointer
  %619 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %618
  %620 = load i8, i8* %619
  %621 = icmp ne i8 %620, 0
  br i1 %621, label %block3333, label %block33331

block4141:                                        ; preds = %block4141, %block33331
  %622 = load i32, i32* @pointer
  %623 = sub i32 %622, 1
  store i32 %623, i32* @pointer
  %624 = load i32, i32* @pointer
  %625 = sub i32 %624, 1
  store i32 %625, i32* @pointer
  %626 = load i32, i32* @pointer
  %627 = sub i32 %626, 1
  store i32 %627, i32* @pointer
  %628 = load i32, i32* @pointer
  %629 = sub i32 %628, 1
  store i32 %629, i32* @pointer
  %630 = load i32, i32* @pointer
  %631 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %630
  %632 = load i8, i8* %631
  %633 = icmp ne i8 %632, 0
  br i1 %633, label %block4141, label %block41411

block41411:                                       ; preds = %block4141, %block33331
  %634 = load i32, i32* @pointer
  %635 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %634
  %636 = load i8, i8* %635
  %637 = icmp ne i8 %636, 0
  br i1 %637, label %block3131, label %block31311

block4343:                                        ; preds = %block45451, %block31311
  %638 = load i32, i32* @pointer
  %639 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %638
  %640 = load i8, i8* %639
  %641 = sub i8 %640, 1
  store i8 %641, i8* %639
  %642 = load i32, i32* @pointer
  %643 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %642
  %644 = load i8, i8* %643
  %645 = icmp ne i8 %644, 0
  br i1 %645, label %block4545, label %block45451

block43431:                                       ; preds = %block45451, %block31311
  %646 = load i32, i32* @pointer
  %647 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %646
  %648 = load i8, i8* %647
  %649 = add i8 %648, 1
  store i8 %649, i8* %647
  %650 = load i32, i32* @pointer
  %651 = sub i32 %650, 1
  store i32 %651, i32* @pointer
  %652 = load i32, i32* @pointer
  %653 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %652
  %654 = load i8, i8* %653
  %655 = icmp ne i8 %654, 0
  br i1 %655, label %block4747, label %block47471

block4545:                                        ; preds = %block4545, %block4343
  %656 = load i32, i32* @pointer
  %657 = sub i32 %656, 1
  store i32 %657, i32* @pointer
  %658 = load i32, i32* @pointer
  %659 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %658
  %660 = load i8, i8* %659
  %661 = add i8 %660, 1
  store i8 %661, i8* %659
  %662 = load i32, i32* @pointer
  %663 = add i32 %662, 1
  store i32 %663, i32* @pointer
  %664 = load i32, i32* @pointer
  %665 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %664
  %666 = load i8, i8* %665
  %667 = sub i8 %666, 1
  store i8 %667, i8* %665
  %668 = load i32, i32* @pointer
  %669 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %668
  %670 = load i8, i8* %669
  %671 = icmp ne i8 %670, 0
  br i1 %671, label %block4545, label %block45451

block45451:                                       ; preds = %block4545, %block4343
  %672 = load i32, i32* @pointer
  %673 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %672
  %674 = load i8, i8* %673
  %675 = icmp ne i8 %674, 0
  br i1 %675, label %block4343, label %block43431

block4747:                                        ; preds = %block57571, %block43431
  %676 = load i32, i32* @pointer
  %677 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %676
  %678 = load i8, i8* %677
  %679 = sub i8 %678, 1
  store i8 %679, i8* %677
  %680 = load i32, i32* @pointer
  %681 = add i32 %680, 1
  store i32 %681, i32* @pointer
  %682 = load i32, i32* @pointer
  %683 = add i32 %682, 1
  store i32 %683, i32* @pointer
  %684 = load i32, i32* @pointer
  %685 = add i32 %684, 1
  store i32 %685, i32* @pointer
  %686 = load i32, i32* @pointer
  %687 = add i32 %686, 1
  store i32 %687, i32* @pointer
  %688 = load i32, i32* @pointer
  %689 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %688
  %690 = load i8, i8* %689
  %691 = icmp ne i8 %690, 0
  br i1 %691, label %block4949, label %block49491

block47471:                                       ; preds = %block57571, %block43431
  %692 = load i32, i32* @pointer
  %693 = sub i32 %692, 1
  store i32 %693, i32* @pointer
  %694 = load i32, i32* @pointer
  %695 = sub i32 %694, 1
  store i32 %695, i32* @pointer
  %696 = load i32, i32* @pointer
  %697 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %696
  %698 = load i8, i8* %697
  %699 = icmp ne i8 %698, 0
  br i1 %699, label %block2121, label %block21211

block4949:                                        ; preds = %block55551, %block4747
  %700 = load i32, i32* @pointer
  %701 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %700
  %702 = load i8, i8* %701
  %703 = sub i8 %702, 1
  store i8 %703, i8* %701
  %704 = load i32, i32* @pointer
  %705 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %704
  %706 = load i8, i8* %705
  %707 = icmp ne i8 %706, 0
  br i1 %707, label %block5151, label %block51511

block49491:                                       ; preds = %block55551, %block4747
  %708 = load i32, i32* @pointer
  %709 = sub i32 %708, 1
  store i32 %709, i32* @pointer
  %710 = load i32, i32* @pointer
  %711 = sub i32 %710, 1
  store i32 %711, i32* @pointer
  %712 = load i32, i32* @pointer
  %713 = sub i32 %712, 1
  store i32 %713, i32* @pointer
  %714 = load i32, i32* @pointer
  %715 = sub i32 %714, 1
  store i32 %715, i32* @pointer
  %716 = load i32, i32* @pointer
  %717 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %716
  %718 = load i8, i8* %717
  %719 = icmp ne i8 %718, 0
  br i1 %719, label %block5757, label %block57571

block5151:                                        ; preds = %block5151, %block4949
  %720 = load i32, i32* @pointer
  %721 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %720
  %722 = load i8, i8* %721
  %723 = add i8 %722, 1
  store i8 %723, i8* %721
  %724 = load i32, i32* @pointer
  %725 = add i32 %724, 1
  store i32 %725, i32* @pointer
  %726 = load i32, i32* @pointer
  %727 = add i32 %726, 1
  store i32 %727, i32* @pointer
  %728 = load i32, i32* @pointer
  %729 = add i32 %728, 1
  store i32 %729, i32* @pointer
  %730 = load i32, i32* @pointer
  %731 = add i32 %730, 1
  store i32 %731, i32* @pointer
  %732 = load i32, i32* @pointer
  %733 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %732
  %734 = load i8, i8* %733
  %735 = sub i8 %734, 1
  store i8 %735, i8* %733
  %736 = load i32, i32* @pointer
  %737 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %736
  %738 = load i8, i8* %737
  %739 = icmp ne i8 %738, 0
  br i1 %739, label %block5151, label %block51511

block51511:                                       ; preds = %block5151, %block4949
  %740 = load i32, i32* @pointer
  %741 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %740
  %742 = load i8, i8* %741
  %743 = sub i8 %742, 1
  store i8 %743, i8* %741
  %744 = load i32, i32* @pointer
  %745 = sub i32 %744, 1
  store i32 %745, i32* @pointer
  %746 = load i32, i32* @pointer
  %747 = sub i32 %746, 1
  store i32 %747, i32* @pointer
  %748 = load i32, i32* @pointer
  %749 = sub i32 %748, 1
  store i32 %749, i32* @pointer
  %750 = load i32, i32* @pointer
  %751 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %750
  %752 = load i8, i8* %751
  %753 = sub i8 %752, 1
  store i8 %753, i8* %751
  %754 = load i32, i32* @pointer
  %755 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %754
  %756 = load i8, i8* %755
  %757 = icmp ne i8 %756, 0
  br i1 %757, label %block5353, label %block53531

block5353:                                        ; preds = %block5353, %block51511
  %758 = load i32, i32* @pointer
  %759 = add i32 %758, 1
  store i32 %759, i32* @pointer
  %760 = load i32, i32* @pointer
  %761 = add i32 %760, 1
  store i32 %761, i32* @pointer
  %762 = load i32, i32* @pointer
  %763 = add i32 %762, 1
  store i32 %763, i32* @pointer
  %764 = load i32, i32* @pointer
  %765 = add i32 %764, 1
  store i32 %765, i32* @pointer
  %766 = load i32, i32* @pointer
  %767 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %766
  %768 = load i8, i8* %767
  %769 = sub i8 %768, 1
  store i8 %769, i8* %767
  %770 = load i32, i32* @pointer
  %771 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %770
  %772 = load i8, i8* %771
  %773 = icmp ne i8 %772, 0
  br i1 %773, label %block5353, label %block53531

block53531:                                       ; preds = %block5353, %block51511
  %774 = load i32, i32* @pointer
  %775 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %774
  %776 = load i8, i8* %775
  %777 = add i8 %776, 1
  store i8 %777, i8* %775
  %778 = load i32, i32* @pointer
  %779 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %778
  %780 = load i8, i8* %779
  %781 = add i8 %780, 1
  store i8 %781, i8* %779
  %782 = load i32, i32* @pointer
  %783 = add i32 %782, 1
  store i32 %783, i32* @pointer
  %784 = load i32, i32* @pointer
  %785 = add i32 %784, 1
  store i32 %785, i32* @pointer
  %786 = load i32, i32* @pointer
  %787 = add i32 %786, 1
  store i32 %787, i32* @pointer
  %788 = load i32, i32* @pointer
  %789 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %788
  %790 = load i8, i8* %789
  %791 = add i8 %790, 1
  store i8 %791, i8* %789
  %792 = load i32, i32* @pointer
  %793 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %792
  %794 = load i8, i8* %793
  %795 = icmp ne i8 %794, 0
  br i1 %795, label %block5555, label %block55551

block5555:                                        ; preds = %block5555, %block53531
  %796 = load i32, i32* @pointer
  %797 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %796
  %798 = load i8, i8* %797
  %799 = sub i8 %798, 1
  store i8 %799, i8* %797
  %800 = load i32, i32* @pointer
  %801 = sub i32 %800, 1
  store i32 %801, i32* @pointer
  %802 = load i32, i32* @pointer
  %803 = sub i32 %802, 1
  store i32 %803, i32* @pointer
  %804 = load i32, i32* @pointer
  %805 = sub i32 %804, 1
  store i32 %805, i32* @pointer
  %806 = load i32, i32* @pointer
  %807 = sub i32 %806, 1
  store i32 %807, i32* @pointer
  %808 = load i32, i32* @pointer
  %809 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %808
  %810 = load i8, i8* %809
  %811 = add i8 %810, 1
  store i8 %811, i8* %809
  %812 = load i32, i32* @pointer
  %813 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %812
  %814 = load i8, i8* %813
  %815 = icmp ne i8 %814, 0
  br i1 %815, label %block5555, label %block55551

block55551:                                       ; preds = %block5555, %block53531
  %816 = load i32, i32* @pointer
  %817 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %816
  %818 = load i8, i8* %817
  %819 = add i8 %818, 1
  store i8 %819, i8* %817
  %820 = load i32, i32* @pointer
  %821 = add i32 %820, 1
  store i32 %821, i32* @pointer
  %822 = load i32, i32* @pointer
  %823 = add i32 %822, 1
  store i32 %823, i32* @pointer
  %824 = load i32, i32* @pointer
  %825 = add i32 %824, 1
  store i32 %825, i32* @pointer
  %826 = load i32, i32* @pointer
  %827 = add i32 %826, 1
  store i32 %827, i32* @pointer
  %828 = load i32, i32* @pointer
  %829 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %828
  %830 = load i8, i8* %829
  %831 = icmp ne i8 %830, 0
  br i1 %831, label %block4949, label %block49491

block5757:                                        ; preds = %block5757, %block49491
  %832 = load i32, i32* @pointer
  %833 = sub i32 %832, 1
  store i32 %833, i32* @pointer
  %834 = load i32, i32* @pointer
  %835 = sub i32 %834, 1
  store i32 %835, i32* @pointer
  %836 = load i32, i32* @pointer
  %837 = sub i32 %836, 1
  store i32 %837, i32* @pointer
  %838 = load i32, i32* @pointer
  %839 = sub i32 %838, 1
  store i32 %839, i32* @pointer
  %840 = load i32, i32* @pointer
  %841 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %840
  %842 = load i8, i8* %841
  %843 = icmp ne i8 %842, 0
  br i1 %843, label %block5757, label %block57571

block57571:                                       ; preds = %block5757, %block49491
  %844 = load i32, i32* @pointer
  %845 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %844
  %846 = load i8, i8* %845
  %847 = icmp ne i8 %846, 0
  br i1 %847, label %block4747, label %block47471

block5959:                                        ; preds = %block5959, %block21211
  %848 = load i32, i32* @pointer
  %849 = add i32 %848, 1
  store i32 %849, i32* @pointer
  %850 = load i32, i32* @pointer
  %851 = add i32 %850, 1
  store i32 %851, i32* @pointer
  %852 = load i32, i32* @pointer
  %853 = add i32 %852, 1
  store i32 %853, i32* @pointer
  %854 = load i32, i32* @pointer
  %855 = add i32 %854, 1
  store i32 %855, i32* @pointer
  %856 = load i32, i32* @pointer
  %857 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %856
  %858 = load i8, i8* %857
  %859 = icmp ne i8 %858, 0
  br i1 %859, label %block5959, label %block59591

block59591:                                       ; preds = %block5959, %block21211
  %860 = load i32, i32* @pointer
  %861 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %860
  %862 = load i8, i8* %861
  %863 = sub i8 %862, 1
  store i8 %863, i8* %861
  %864 = load i32, i32* @pointer
  %865 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %864
  %866 = load i8, i8* %865
  %867 = icmp ne i8 %866, 0
  br i1 %867, label %block6161, label %block61611

block6161:                                        ; preds = %block6161, %block59591
  %868 = load i32, i32* @pointer
  %869 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %868
  %870 = load i8, i8* %869
  %871 = add i8 %870, 1
  store i8 %871, i8* %869
  %872 = load i32, i32* @pointer
  %873 = sub i32 %872, 1
  store i32 %873, i32* @pointer
  %874 = load i32, i32* @pointer
  %875 = sub i32 %874, 1
  store i32 %875, i32* @pointer
  %876 = load i32, i32* @pointer
  %877 = sub i32 %876, 1
  store i32 %877, i32* @pointer
  %878 = load i32, i32* @pointer
  %879 = sub i32 %878, 1
  store i32 %879, i32* @pointer
  %880 = load i32, i32* @pointer
  %881 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %880
  %882 = load i8, i8* %881
  %883 = sub i8 %882, 1
  store i8 %883, i8* %881
  %884 = load i32, i32* @pointer
  %885 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %884
  %886 = load i8, i8* %885
  %887 = sub i8 %886, 1
  store i8 %887, i8* %885
  %888 = load i32, i32* @pointer
  %889 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %888
  %890 = load i8, i8* %889
  %891 = icmp ne i8 %890, 0
  br i1 %891, label %block6161, label %block61611

block61611:                                       ; preds = %block6161, %block59591
  %892 = load i32, i32* @pointer
  %893 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %892
  %894 = load i8, i8* %893
  %895 = add i8 %894, 1
  store i8 %895, i8* %893
  %896 = load i32, i32* @pointer
  %897 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %896
  %898 = load i8, i8* %897
  %899 = add i8 %898, 1
  store i8 %899, i8* %897
  %900 = load i32, i32* @pointer
  %901 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %900
  %902 = load i8, i8* %901
  %903 = icmp ne i8 %902, 0
  br i1 %903, label %block6363, label %block63631

block6363:                                        ; preds = %block6363, %block61611
  %904 = load i32, i32* @pointer
  %905 = sub i32 %904, 1
  store i32 %905, i32* @pointer
  %906 = load i32, i32* @pointer
  %907 = sub i32 %906, 1
  store i32 %907, i32* @pointer
  %908 = load i32, i32* @pointer
  %909 = sub i32 %908, 1
  store i32 %909, i32* @pointer
  %910 = load i32, i32* @pointer
  %911 = sub i32 %910, 1
  store i32 %911, i32* @pointer
  %912 = load i32, i32* @pointer
  %913 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %912
  %914 = load i8, i8* %913
  %915 = icmp ne i8 %914, 0
  br i1 %915, label %block6363, label %block63631

block63631:                                       ; preds = %block6363, %block61611
  %916 = load i32, i32* @pointer
  %917 = add i32 %916, 1
  store i32 %917, i32* @pointer
  %918 = load i32, i32* @pointer
  %919 = add i32 %918, 1
  store i32 %919, i32* @pointer
  %920 = load i32, i32* @pointer
  %921 = add i32 %920, 1
  store i32 %921, i32* @pointer
  %922 = load i32, i32* @pointer
  %923 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %922
  %924 = load i8, i8* %923
  %925 = add i8 %924, 1
  store i8 %925, i8* %923
  %926 = load i32, i32* @pointer
  %927 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %926
  %928 = load i8, i8* %927
  %929 = icmp ne i8 %928, 0
  br i1 %929, label %block6565, label %block65651

block6565:                                        ; preds = %block1791791, %block63631
  %930 = load i32, i32* @pointer
  %931 = add i32 %930, 1
  store i32 %931, i32* @pointer
  %932 = load i32, i32* @pointer
  %933 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %932
  %934 = load i8, i8* %933
  %935 = sub i8 %934, 1
  store i8 %935, i8* %933
  %936 = load i32, i32* @pointer
  %937 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %936
  %938 = load i8, i8* %937
  %939 = icmp ne i8 %938, 0
  br i1 %939, label %block6767, label %block67671

block65651:                                       ; preds = %block1791791, %block63631
  %940 = load i32, i32* @pointer
  %941 = add i32 %940, 1
  store i32 %941, i32* @pointer
  %942 = load i32, i32* @pointer
  %943 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %942
  %944 = load i8, i8* %943
  %945 = icmp ne i8 %944, 0
  br i1 %945, label %block11, label %block111

block6767:                                        ; preds = %block81811, %block6565
  %946 = load i32, i32* @pointer
  %947 = add i32 %946, 1
  store i32 %947, i32* @pointer
  %948 = load i32, i32* @pointer
  %949 = add i32 %948, 1
  store i32 %949, i32* @pointer
  %950 = load i32, i32* @pointer
  %951 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %950
  %952 = load i8, i8* %951
  %953 = icmp ne i8 %952, 0
  br i1 %953, label %block6969, label %block69691

block67671:                                       ; preds = %block81811, %block6565
  %954 = load i32, i32* @pointer
  %955 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %954
  %956 = load i8, i8* %955
  %957 = add i8 %956, 1
  store i8 %957, i8* %955
  %958 = load i32, i32* @pointer
  %959 = add i32 %958, 1
  store i32 %959, i32* @pointer
  %960 = load i32, i32* @pointer
  %961 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %960
  %962 = load i8, i8* %961
  %963 = icmp ne i8 %962, 0
  br i1 %963, label %block8585, label %block85851

block6969:                                        ; preds = %block79791, %block6767
  %964 = load i32, i32* @pointer
  %965 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %964
  %966 = load i8, i8* %965
  %967 = sub i8 %966, 1
  store i8 %967, i8* %965
  %968 = load i32, i32* @pointer
  %969 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %968
  %970 = load i8, i8* %969
  %971 = sub i8 %970, 1
  store i8 %971, i8* %969
  %972 = load i32, i32* @pointer
  %973 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %972
  %974 = load i8, i8* %973
  %975 = icmp ne i8 %974, 0
  br i1 %975, label %block7171, label %block71711

block69691:                                       ; preds = %block79791, %block6767
  %976 = load i32, i32* @pointer
  %977 = sub i32 %976, 1
  store i32 %977, i32* @pointer
  %978 = load i32, i32* @pointer
  %979 = sub i32 %978, 1
  store i32 %979, i32* @pointer
  %980 = load i32, i32* @pointer
  %981 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %980
  %982 = load i8, i8* %981
  %983 = icmp ne i8 %982, 0
  br i1 %983, label %block8181, label %block81811

block7171:                                        ; preds = %block7171, %block6969
  %984 = load i32, i32* @pointer
  %985 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %984
  %986 = load i8, i8* %985
  %987 = add i8 %986, 1
  store i8 %987, i8* %985
  %988 = load i32, i32* @pointer
  %989 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %988
  %990 = load i8, i8* %989
  %991 = add i8 %990, 1
  store i8 %991, i8* %989
  %992 = load i32, i32* @pointer
  %993 = add i32 %992, 1
  store i32 %993, i32* @pointer
  %994 = load i32, i32* @pointer
  %995 = add i32 %994, 1
  store i32 %995, i32* @pointer
  %996 = load i32, i32* @pointer
  %997 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %996
  %998 = load i8, i8* %997
  %999 = add i8 %998, 1
  store i8 %999, i8* %997
  %1000 = load i32, i32* @pointer
  %1001 = add i32 %1000, 1
  store i32 %1001, i32* @pointer
  %1002 = load i32, i32* @pointer
  %1003 = add i32 %1002, 1
  store i32 %1003, i32* @pointer
  %1004 = load i32, i32* @pointer
  %1005 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1004
  %1006 = load i8, i8* %1005
  %1007 = sub i8 %1006, 1
  store i8 %1007, i8* %1005
  %1008 = load i32, i32* @pointer
  %1009 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1008
  %1010 = load i8, i8* %1009
  %1011 = sub i8 %1010, 1
  store i8 %1011, i8* %1009
  %1012 = load i32, i32* @pointer
  %1013 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1012
  %1014 = load i8, i8* %1013
  %1015 = icmp ne i8 %1014, 0
  br i1 %1015, label %block7171, label %block71711

block71711:                                       ; preds = %block7171, %block6969
  %1016 = load i32, i32* @pointer
  %1017 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1016
  %1018 = load i8, i8* %1017
  %1019 = sub i8 %1018, 1
  store i8 %1019, i8* %1017
  %1020 = load i32, i32* @pointer
  %1021 = sub i32 %1020, 1
  store i32 %1021, i32* @pointer
  %1022 = load i32, i32* @pointer
  %1023 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1022
  %1024 = load i8, i8* %1023
  %1025 = icmp ne i8 %1024, 0
  br i1 %1025, label %block7373, label %block73731

block7373:                                        ; preds = %block75751, %block71711
  %1026 = load i32, i32* @pointer
  %1027 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1026
  %1028 = load i8, i8* %1027
  %1029 = sub i8 %1028, 1
  store i8 %1029, i8* %1027
  %1030 = load i32, i32* @pointer
  %1031 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1030
  %1032 = load i8, i8* %1031
  %1033 = icmp ne i8 %1032, 0
  br i1 %1033, label %block7575, label %block75751

block73731:                                       ; preds = %block75751, %block71711
  %1034 = load i32, i32* @pointer
  %1035 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1034
  %1036 = load i8, i8* %1035
  %1037 = add i8 %1036, 1
  store i8 %1037, i8* %1035
  %1038 = load i32, i32* @pointer
  %1039 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1038
  %1040 = load i8, i8* %1039
  %1041 = add i8 %1040, 1
  store i8 %1041, i8* %1039
  %1042 = load i32, i32* @pointer
  %1043 = add i32 %1042, 1
  store i32 %1043, i32* @pointer
  %1044 = load i32, i32* @pointer
  %1045 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1044
  %1046 = load i8, i8* %1045
  %1047 = add i8 %1046, 1
  store i8 %1047, i8* %1045
  %1048 = load i32, i32* @pointer
  %1049 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1048
  %1050 = load i8, i8* %1049
  %1051 = icmp ne i8 %1050, 0
  br i1 %1051, label %block7979, label %block79791

block7575:                                        ; preds = %block77771, %block7373
  %1052 = load i32, i32* @pointer
  %1053 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1052
  %1054 = load i8, i8* %1053
  %1055 = sub i8 %1054, 1
  store i8 %1055, i8* %1053
  %1056 = load i32, i32* @pointer
  %1057 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1056
  %1058 = load i8, i8* %1057
  %1059 = icmp ne i8 %1058, 0
  br i1 %1059, label %block7777, label %block77771

block75751:                                       ; preds = %block77771, %block7373
  %1060 = load i32, i32* @pointer
  %1061 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1060
  %1062 = load i8, i8* %1061
  %1063 = icmp ne i8 %1062, 0
  br i1 %1063, label %block7373, label %block73731

block7777:                                        ; preds = %block7777, %block7575
  %1064 = load i32, i32* @pointer
  %1065 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1064
  %1066 = load i8, i8* %1065
  %1067 = add i8 %1066, 1
  store i8 %1067, i8* %1065
  %1068 = load i32, i32* @pointer
  %1069 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1068
  %1070 = load i8, i8* %1069
  %1071 = add i8 %1070, 1
  store i8 %1071, i8* %1069
  %1072 = load i32, i32* @pointer
  %1073 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1072
  %1074 = load i8, i8* %1073
  %1075 = add i8 %1074, 1
  store i8 %1075, i8* %1073
  %1076 = load i32, i32* @pointer
  %1077 = sub i32 %1076, 1
  store i32 %1077, i32* @pointer
  %1078 = load i32, i32* @pointer
  %1079 = sub i32 %1078, 1
  store i32 %1079, i32* @pointer
  %1080 = load i32, i32* @pointer
  %1081 = sub i32 %1080, 1
  store i32 %1081, i32* @pointer
  %1082 = load i32, i32* @pointer
  %1083 = sub i32 %1082, 1
  store i32 %1083, i32* @pointer
  %1084 = load i32, i32* @pointer
  %1085 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1084
  %1086 = load i8, i8* %1085
  %1087 = sub i8 %1086, 1
  store i8 %1087, i8* %1085
  %1088 = load i32, i32* @pointer
  %1089 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1088
  %1090 = load i8, i8* %1089
  %1091 = icmp ne i8 %1090, 0
  br i1 %1091, label %block7777, label %block77771

block77771:                                       ; preds = %block7777, %block7575
  %1092 = load i32, i32* @pointer
  %1093 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1092
  %1094 = load i8, i8* %1093
  %1095 = add i8 %1094, 1
  store i8 %1095, i8* %1093
  %1096 = load i32, i32* @pointer
  %1097 = add i32 %1096, 1
  store i32 %1097, i32* @pointer
  %1098 = load i32, i32* @pointer
  %1099 = add i32 %1098, 1
  store i32 %1099, i32* @pointer
  %1100 = load i32, i32* @pointer
  %1101 = add i32 %1100, 1
  store i32 %1101, i32* @pointer
  %1102 = load i32, i32* @pointer
  %1103 = add i32 %1102, 1
  store i32 %1103, i32* @pointer
  %1104 = load i32, i32* @pointer
  %1105 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1104
  %1106 = load i8, i8* %1105
  %1107 = sub i8 %1106, 1
  store i8 %1107, i8* %1105
  %1108 = load i32, i32* @pointer
  %1109 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1108
  %1110 = load i8, i8* %1109
  %1111 = icmp ne i8 %1110, 0
  br i1 %1111, label %block7575, label %block75751

block7979:                                        ; preds = %block7979, %block73731
  %1112 = load i32, i32* @pointer
  %1113 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1112
  %1114 = load i8, i8* %1113
  %1115 = sub i8 %1114, 1
  store i8 %1115, i8* %1113
  %1116 = load i32, i32* @pointer
  %1117 = sub i32 %1116, 1
  store i32 %1117, i32* @pointer
  %1118 = load i32, i32* @pointer
  %1119 = sub i32 %1118, 1
  store i32 %1119, i32* @pointer
  %1120 = load i32, i32* @pointer
  %1121 = sub i32 %1120, 1
  store i32 %1121, i32* @pointer
  %1122 = load i32, i32* @pointer
  %1123 = sub i32 %1122, 1
  store i32 %1123, i32* @pointer
  %1124 = load i32, i32* @pointer
  %1125 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1124
  %1126 = load i8, i8* %1125
  %1127 = add i8 %1126, 1
  store i8 %1127, i8* %1125
  %1128 = load i32, i32* @pointer
  %1129 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1128
  %1130 = load i8, i8* %1129
  %1131 = icmp ne i8 %1130, 0
  br i1 %1131, label %block7979, label %block79791

block79791:                                       ; preds = %block7979, %block73731
  %1132 = load i32, i32* @pointer
  %1133 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1132
  %1134 = load i8, i8* %1133
  %1135 = add i8 %1134, 1
  store i8 %1135, i8* %1133
  %1136 = load i32, i32* @pointer
  %1137 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1136
  %1138 = load i8, i8* %1137
  %1139 = add i8 %1138, 1
  store i8 %1139, i8* %1137
  %1140 = load i32, i32* @pointer
  %1141 = add i32 %1140, 1
  store i32 %1141, i32* @pointer
  %1142 = load i32, i32* @pointer
  %1143 = add i32 %1142, 1
  store i32 %1143, i32* @pointer
  %1144 = load i32, i32* @pointer
  %1145 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1144
  %1146 = load i8, i8* %1145
  %1147 = add i8 %1146, 1
  store i8 %1147, i8* %1145
  %1148 = load i32, i32* @pointer
  %1149 = add i32 %1148, 1
  store i32 %1149, i32* @pointer
  %1150 = load i32, i32* @pointer
  %1151 = add i32 %1150, 1
  store i32 %1151, i32* @pointer
  %1152 = load i32, i32* @pointer
  %1153 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1152
  %1154 = load i8, i8* %1153
  %1155 = icmp ne i8 %1154, 0
  br i1 %1155, label %block6969, label %block69691

block8181:                                        ; preds = %block83831, %block69691
  %1156 = load i32, i32* @pointer
  %1157 = add i32 %1156, 1
  store i32 %1157, i32* @pointer
  %1158 = load i32, i32* @pointer
  %1159 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1158
  %1160 = load i8, i8* %1159
  %1161 = icmp ne i8 %1160, 0
  br i1 %1161, label %block8383, label %block83831

block81811:                                       ; preds = %block83831, %block69691
  %1162 = load i32, i32* @pointer
  %1163 = add i32 %1162, 1
  store i32 %1163, i32* @pointer
  %1164 = load i32, i32* @pointer
  %1165 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1164
  %1166 = load i8, i8* %1165
  %1167 = sub i8 %1166, 1
  store i8 %1167, i8* %1165
  %1168 = load i32, i32* @pointer
  %1169 = add i32 %1168, 1
  store i32 %1169, i32* @pointer
  %1170 = load i32, i32* @pointer
  %1171 = add i32 %1170, 1
  store i32 %1171, i32* @pointer
  %1172 = load i32, i32* @pointer
  %1173 = add i32 %1172, 1
  store i32 %1173, i32* @pointer
  %1174 = load i32, i32* @pointer
  %1175 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1174
  %1176 = load i8, i8* %1175
  %1177 = icmp ne i8 %1176, 0
  br i1 %1177, label %block6767, label %block67671

block8383:                                        ; preds = %block8383, %block8181
  %1178 = load i32, i32* @pointer
  %1179 = sub i32 %1178, 1
  store i32 %1179, i32* @pointer
  %1180 = load i32, i32* @pointer
  %1181 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1180
  %1182 = load i8, i8* %1181
  %1183 = sub i8 %1182, 1
  store i8 %1183, i8* %1181
  %1184 = load i32, i32* @pointer
  %1185 = sub i32 %1184, 1
  store i32 %1185, i32* @pointer
  %1186 = load i32, i32* @pointer
  %1187 = sub i32 %1186, 1
  store i32 %1187, i32* @pointer
  %1188 = load i32, i32* @pointer
  %1189 = sub i32 %1188, 1
  store i32 %1189, i32* @pointer
  %1190 = load i32, i32* @pointer
  %1191 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1190
  %1192 = load i8, i8* %1191
  %1193 = icmp ne i8 %1192, 0
  br i1 %1193, label %block8383, label %block83831

block83831:                                       ; preds = %block8383, %block8181
  %1194 = load i32, i32* @pointer
  %1195 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1194
  %1196 = load i8, i8* %1195
  %1197 = add i8 %1196, 1
  store i8 %1197, i8* %1195
  %1198 = load i32, i32* @pointer
  %1199 = sub i32 %1198, 1
  store i32 %1199, i32* @pointer
  %1200 = load i32, i32* @pointer
  %1201 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1200
  %1202 = load i8, i8* %1201
  %1203 = icmp ne i8 %1202, 0
  br i1 %1203, label %block8181, label %block81811

block8585:                                        ; preds = %block8585, %block67671
  %1204 = load i32, i32* @pointer
  %1205 = add i32 %1204, 1
  store i32 %1205, i32* @pointer
  %1206 = load i32, i32* @pointer
  %1207 = add i32 %1206, 1
  store i32 %1207, i32* @pointer
  %1208 = load i32, i32* @pointer
  %1209 = add i32 %1208, 1
  store i32 %1209, i32* @pointer
  %1210 = load i32, i32* @pointer
  %1211 = add i32 %1210, 1
  store i32 %1211, i32* @pointer
  %1212 = load i32, i32* @pointer
  %1213 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1212
  %1214 = load i8, i8* %1213
  %1215 = icmp ne i8 %1214, 0
  br i1 %1215, label %block8585, label %block85851

block85851:                                       ; preds = %block8585, %block67671
  %1216 = load i32, i32* @pointer
  %1217 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1216
  %1218 = load i8, i8* %1217
  %1219 = sub i8 %1218, 1
  store i8 %1219, i8* %1217
  %1220 = load i32, i32* @pointer
  %1221 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1220
  %1222 = load i8, i8* %1221
  %1223 = icmp ne i8 %1222, 0
  br i1 %1223, label %block8787, label %block87871

block8787:                                        ; preds = %block8787, %block85851
  %1224 = load i32, i32* @pointer
  %1225 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1224
  %1226 = load i8, i8* %1225
  %1227 = add i8 %1226, 1
  store i8 %1227, i8* %1225
  %1228 = load i32, i32* @pointer
  %1229 = sub i32 %1228, 1
  store i32 %1229, i32* @pointer
  %1230 = load i32, i32* @pointer
  %1231 = sub i32 %1230, 1
  store i32 %1231, i32* @pointer
  %1232 = load i32, i32* @pointer
  %1233 = sub i32 %1232, 1
  store i32 %1233, i32* @pointer
  %1234 = load i32, i32* @pointer
  %1235 = sub i32 %1234, 1
  store i32 %1235, i32* @pointer
  %1236 = load i32, i32* @pointer
  %1237 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1236
  %1238 = load i8, i8* %1237
  %1239 = sub i8 %1238, 1
  store i8 %1239, i8* %1237
  %1240 = load i32, i32* @pointer
  %1241 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1240
  %1242 = load i8, i8* %1241
  %1243 = sub i8 %1242, 1
  store i8 %1243, i8* %1241
  %1244 = load i32, i32* @pointer
  %1245 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1244
  %1246 = load i8, i8* %1245
  %1247 = icmp ne i8 %1246, 0
  br i1 %1247, label %block8787, label %block87871

block87871:                                       ; preds = %block8787, %block85851
  %1248 = load i32, i32* @pointer
  %1249 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1248
  %1250 = load i8, i8* %1249
  %1251 = add i8 %1250, 1
  store i8 %1251, i8* %1249
  %1252 = load i32, i32* @pointer
  %1253 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1252
  %1254 = load i8, i8* %1253
  %1255 = add i8 %1254, 1
  store i8 %1255, i8* %1253
  %1256 = load i32, i32* @pointer
  %1257 = sub i32 %1256, 1
  store i32 %1257, i32* @pointer
  %1258 = load i32, i32* @pointer
  %1259 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1258
  %1260 = load i8, i8* %1259
  %1261 = icmp ne i8 %1260, 0
  br i1 %1261, label %block8989, label %block89891

block8989:                                        ; preds = %block93931, %block87871
  %1262 = load i32, i32* @pointer
  %1263 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1262
  %1264 = load i8, i8* %1263
  %1265 = icmp ne i8 %1264, 0
  br i1 %1265, label %block9191, label %block91911

block89891:                                       ; preds = %block93931, %block87871
  %1266 = load i32, i32* @pointer
  %1267 = add i32 %1266, 1
  store i32 %1267, i32* @pointer
  %1268 = load i32, i32* @pointer
  %1269 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1268
  %1270 = load i8, i8* %1269
  %1271 = icmp ne i8 %1270, 0
  br i1 %1271, label %block115115, label %block1151151

block9191:                                        ; preds = %block9191, %block8989
  %1272 = load i32, i32* @pointer
  %1273 = add i32 %1272, 1
  store i32 %1273, i32* @pointer
  %1274 = load i32, i32* @pointer
  %1275 = add i32 %1274, 1
  store i32 %1275, i32* @pointer
  %1276 = load i32, i32* @pointer
  %1277 = add i32 %1276, 1
  store i32 %1277, i32* @pointer
  %1278 = load i32, i32* @pointer
  %1279 = add i32 %1278, 1
  store i32 %1279, i32* @pointer
  %1280 = load i32, i32* @pointer
  %1281 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1280
  %1282 = load i8, i8* %1281
  %1283 = icmp ne i8 %1282, 0
  br i1 %1283, label %block9191, label %block91911

block91911:                                       ; preds = %block9191, %block8989
  %1284 = load i32, i32* @pointer
  %1285 = sub i32 %1284, 1
  store i32 %1285, i32* @pointer
  %1286 = load i32, i32* @pointer
  %1287 = sub i32 %1286, 1
  store i32 %1287, i32* @pointer
  %1288 = load i32, i32* @pointer
  %1289 = sub i32 %1288, 1
  store i32 %1289, i32* @pointer
  %1290 = load i32, i32* @pointer
  %1291 = sub i32 %1290, 1
  store i32 %1291, i32* @pointer
  %1292 = load i32, i32* @pointer
  %1293 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1292
  %1294 = load i8, i8* %1293
  %1295 = icmp ne i8 %1294, 0
  br i1 %1295, label %block9393, label %block93931

block9393:                                        ; preds = %block1111111, %block91911
  %1296 = load i32, i32* @pointer
  %1297 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1296
  %1298 = load i8, i8* %1297
  %1299 = sub i8 %1298, 1
  store i8 %1299, i8* %1297
  %1300 = load i32, i32* @pointer
  %1301 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1300
  %1302 = load i8, i8* %1301
  %1303 = icmp ne i8 %1302, 0
  br i1 %1303, label %block9595, label %block95951

block93931:                                       ; preds = %block1111111, %block91911
  %1304 = load i32, i32* @pointer
  %1305 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1304
  %1306 = load i8, i8* %1305
  %1307 = icmp ne i8 %1306, 0
  br i1 %1307, label %block8989, label %block89891

block9595:                                        ; preds = %block99991, %block9393
  %1308 = load i32, i32* @pointer
  %1309 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1308
  %1310 = load i8, i8* %1309
  %1311 = sub i8 %1310, 1
  store i8 %1311, i8* %1309
  %1312 = load i32, i32* @pointer
  %1313 = add i32 %1312, 1
  store i32 %1313, i32* @pointer
  %1314 = load i32, i32* @pointer
  %1315 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1314
  %1316 = load i8, i8* %1315
  %1317 = sub i8 %1316, 1
  store i8 %1317, i8* %1315
  %1318 = load i32, i32* @pointer
  %1319 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1318
  %1320 = load i8, i8* %1319
  %1321 = sub i8 %1320, 1
  store i8 %1321, i8* %1319
  %1322 = load i32, i32* @pointer
  %1323 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1322
  %1324 = load i8, i8* %1323
  %1325 = icmp ne i8 %1324, 0
  br i1 %1325, label %block9797, label %block97971

block95951:                                       ; preds = %block99991, %block9393
  %1326 = load i32, i32* @pointer
  %1327 = add i32 %1326, 1
  store i32 %1327, i32* @pointer
  %1328 = load i32, i32* @pointer
  %1329 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1328
  %1330 = load i8, i8* %1329
  %1331 = sub i8 %1330, 1
  store i8 %1331, i8* %1329
  %1332 = load i32, i32* @pointer
  %1333 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1332
  %1334 = load i8, i8* %1333
  %1335 = icmp ne i8 %1334, 0
  br i1 %1335, label %block105105, label %block1051051

block9797:                                        ; preds = %block9797, %block9595
  %1336 = load i32, i32* @pointer
  %1337 = sub i32 %1336, 1
  store i32 %1337, i32* @pointer
  %1338 = load i32, i32* @pointer
  %1339 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1338
  %1340 = load i8, i8* %1339
  %1341 = sub i8 %1340, 1
  store i8 %1341, i8* %1339
  %1342 = load i32, i32* @pointer
  %1343 = add i32 %1342, 1
  store i32 %1343, i32* @pointer
  %1344 = load i32, i32* @pointer
  %1345 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1344
  %1346 = load i8, i8* %1345
  %1347 = add i8 %1346, 1
  store i8 %1347, i8* %1345
  %1348 = load i32, i32* @pointer
  %1349 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1348
  %1350 = load i8, i8* %1349
  %1351 = icmp ne i8 %1350, 0
  br i1 %1351, label %block9797, label %block97971

block97971:                                       ; preds = %block9797, %block9595
  %1352 = load i32, i32* @pointer
  %1353 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1352
  %1354 = load i8, i8* %1353
  %1355 = add i8 %1354, 1
  store i8 %1355, i8* %1353
  %1356 = load i32, i32* @pointer
  %1357 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1356
  %1358 = load i8, i8* %1357
  %1359 = add i8 %1358, 1
  store i8 %1359, i8* %1357
  %1360 = load i32, i32* @pointer
  %1361 = sub i32 %1360, 1
  store i32 %1361, i32* @pointer
  %1362 = load i32, i32* @pointer
  %1363 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1362
  %1364 = load i8, i8* %1363
  %1365 = icmp ne i8 %1364, 0
  br i1 %1365, label %block9999, label %block99991

block9999:                                        ; preds = %block1031031, %block97971
  %1366 = load i32, i32* @pointer
  %1367 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1366
  %1368 = load i8, i8* %1367
  %1369 = icmp ne i8 %1368, 0
  br i1 %1369, label %block101101, label %block1011011

block99991:                                       ; preds = %block1031031, %block97971
  %1370 = load i32, i32* @pointer
  %1371 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1370
  %1372 = load i8, i8* %1371
  %1373 = add i8 %1372, 1
  store i8 %1373, i8* %1371
  %1374 = load i32, i32* @pointer
  %1375 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1374
  %1376 = load i8, i8* %1375
  %1377 = add i8 %1376, 1
  store i8 %1377, i8* %1375
  %1378 = load i32, i32* @pointer
  %1379 = sub i32 %1378, 1
  store i32 %1379, i32* @pointer
  %1380 = load i32, i32* @pointer
  %1381 = sub i32 %1380, 1
  store i32 %1381, i32* @pointer
  %1382 = load i32, i32* @pointer
  %1383 = sub i32 %1382, 1
  store i32 %1383, i32* @pointer
  %1384 = load i32, i32* @pointer
  %1385 = sub i32 %1384, 1
  store i32 %1385, i32* @pointer
  %1386 = load i32, i32* @pointer
  %1387 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1386
  %1388 = load i8, i8* %1387
  %1389 = sub i8 %1388, 1
  store i8 %1389, i8* %1387
  %1390 = load i32, i32* @pointer
  %1391 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1390
  %1392 = load i8, i8* %1391
  %1393 = icmp ne i8 %1392, 0
  br i1 %1393, label %block9595, label %block95951

block101101:                                      ; preds = %block101101, %block9999
  %1394 = load i32, i32* @pointer
  %1395 = add i32 %1394, 1
  store i32 %1395, i32* @pointer
  %1396 = load i32, i32* @pointer
  %1397 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1396
  %1398 = load i8, i8* %1397
  %1399 = sub i8 %1398, 1
  store i8 %1399, i8* %1397
  %1400 = load i32, i32* @pointer
  %1401 = sub i32 %1400, 1
  store i32 %1401, i32* @pointer
  %1402 = load i32, i32* @pointer
  %1403 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1402
  %1404 = load i8, i8* %1403
  %1405 = add i8 %1404, 1
  store i8 %1405, i8* %1403
  %1406 = load i32, i32* @pointer
  %1407 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1406
  %1408 = load i8, i8* %1407
  %1409 = icmp ne i8 %1408, 0
  br i1 %1409, label %block101101, label %block1011011

block1011011:                                     ; preds = %block101101, %block9999
  %1410 = load i32, i32* @pointer
  %1411 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1410
  %1412 = load i8, i8* %1411
  %1413 = add i8 %1412, 1
  store i8 %1413, i8* %1411
  %1414 = load i32, i32* @pointer
  %1415 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1414
  %1416 = load i8, i8* %1415
  %1417 = add i8 %1416, 1
  store i8 %1417, i8* %1415
  %1418 = load i32, i32* @pointer
  %1419 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1418
  %1420 = load i8, i8* %1419
  %1421 = icmp ne i8 %1420, 0
  br i1 %1421, label %block103103, label %block1031031

block103103:                                      ; preds = %block103103, %block1011011
  %1422 = load i32, i32* @pointer
  %1423 = sub i32 %1422, 1
  store i32 %1423, i32* @pointer
  %1424 = load i32, i32* @pointer
  %1425 = sub i32 %1424, 1
  store i32 %1425, i32* @pointer
  %1426 = load i32, i32* @pointer
  %1427 = sub i32 %1426, 1
  store i32 %1427, i32* @pointer
  %1428 = load i32, i32* @pointer
  %1429 = sub i32 %1428, 1
  store i32 %1429, i32* @pointer
  %1430 = load i32, i32* @pointer
  %1431 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1430
  %1432 = load i8, i8* %1431
  %1433 = icmp ne i8 %1432, 0
  br i1 %1433, label %block103103, label %block1031031

block1031031:                                     ; preds = %block103103, %block1011011
  %1434 = load i32, i32* @pointer
  %1435 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1434
  %1436 = load i8, i8* %1435
  %1437 = add i8 %1436, 1
  store i8 %1437, i8* %1435
  %1438 = load i32, i32* @pointer
  %1439 = add i32 %1438, 1
  store i32 %1439, i32* @pointer
  %1440 = load i32, i32* @pointer
  %1441 = add i32 %1440, 1
  store i32 %1441, i32* @pointer
  %1442 = load i32, i32* @pointer
  %1443 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1442
  %1444 = load i8, i8* %1443
  %1445 = add i8 %1444, 1
  store i8 %1445, i8* %1443
  %1446 = load i32, i32* @pointer
  %1447 = add i32 %1446, 1
  store i32 %1447, i32* @pointer
  %1448 = load i32, i32* @pointer
  %1449 = add i32 %1448, 1
  store i32 %1449, i32* @pointer
  %1450 = load i32, i32* @pointer
  %1451 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1450
  %1452 = load i8, i8* %1451
  %1453 = sub i8 %1452, 1
  store i8 %1453, i8* %1451
  %1454 = load i32, i32* @pointer
  %1455 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1454
  %1456 = load i8, i8* %1455
  %1457 = icmp ne i8 %1456, 0
  br i1 %1457, label %block9999, label %block99991

block105105:                                      ; preds = %block1071071, %block95951
  %1458 = load i32, i32* @pointer
  %1459 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1458
  %1460 = load i8, i8* %1459
  %1461 = add i8 %1460, 1
  store i8 %1461, i8* %1459
  %1462 = load i32, i32* @pointer
  %1463 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1462
  %1464 = load i8, i8* %1463
  %1465 = icmp ne i8 %1464, 0
  br i1 %1465, label %block107107, label %block1071071

block1051051:                                     ; preds = %block1071071, %block95951
  %1466 = load i32, i32* @pointer
  %1467 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1466
  %1468 = load i8, i8* %1467
  %1469 = add i8 %1468, 1
  store i8 %1469, i8* %1467
  %1470 = load i32, i32* @pointer
  %1471 = sub i32 %1470, 1
  store i32 %1471, i32* @pointer
  %1472 = load i32, i32* @pointer
  %1473 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1472
  %1474 = load i8, i8* %1473
  %1475 = icmp ne i8 %1474, 0
  br i1 %1475, label %block111111, label %block1111111

block107107:                                      ; preds = %block1091091, %block105105
  %1476 = load i32, i32* @pointer
  %1477 = sub i32 %1476, 1
  store i32 %1477, i32* @pointer
  %1478 = load i32, i32* @pointer
  %1479 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1478
  %1480 = load i8, i8* %1479
  %1481 = add i8 %1480, 1
  store i8 %1481, i8* %1479
  %1482 = load i32, i32* @pointer
  %1483 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1482
  %1484 = load i8, i8* %1483
  %1485 = icmp ne i8 %1484, 0
  br i1 %1485, label %block109109, label %block1091091

block1071071:                                     ; preds = %block1091091, %block105105
  %1486 = load i32, i32* @pointer
  %1487 = sub i32 %1486, 1
  store i32 %1487, i32* @pointer
  %1488 = load i32, i32* @pointer
  %1489 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1488
  %1490 = load i8, i8* %1489
  %1491 = add i8 %1490, 1
  store i8 %1491, i8* %1489
  %1492 = load i32, i32* @pointer
  %1493 = add i32 %1492, 1
  store i32 %1493, i32* @pointer
  %1494 = load i32, i32* @pointer
  %1495 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1494
  %1496 = load i8, i8* %1495
  %1497 = icmp ne i8 %1496, 0
  br i1 %1497, label %block105105, label %block1051051

block109109:                                      ; preds = %block109109, %block107107
  %1498 = load i32, i32* @pointer
  %1499 = sub i32 %1498, 1
  store i32 %1499, i32* @pointer
  %1500 = load i32, i32* @pointer
  %1501 = sub i32 %1500, 1
  store i32 %1501, i32* @pointer
  %1502 = load i32, i32* @pointer
  %1503 = sub i32 %1502, 1
  store i32 %1503, i32* @pointer
  %1504 = load i32, i32* @pointer
  %1505 = sub i32 %1504, 1
  store i32 %1505, i32* @pointer
  %1506 = load i32, i32* @pointer
  %1507 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1506
  %1508 = load i8, i8* %1507
  %1509 = icmp ne i8 %1508, 0
  br i1 %1509, label %block109109, label %block1091091

block1091091:                                     ; preds = %block109109, %block107107
  %1510 = load i32, i32* @pointer
  %1511 = add i32 %1510, 1
  store i32 %1511, i32* @pointer
  %1512 = load i32, i32* @pointer
  %1513 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1512
  %1514 = load i8, i8* %1513
  %1515 = icmp ne i8 %1514, 0
  br i1 %1515, label %block107107, label %block1071071

block111111:                                      ; preds = %block1131131, %block1051051
  %1516 = load i32, i32* @pointer
  %1517 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1516
  %1518 = load i8, i8* %1517
  %1519 = sub i8 %1518, 1
  store i8 %1519, i8* %1517
  %1520 = load i32, i32* @pointer
  %1521 = add i32 %1520, 1
  store i32 %1521, i32* @pointer
  %1522 = load i32, i32* @pointer
  %1523 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1522
  %1524 = load i8, i8* %1523
  %1525 = sub i8 %1524, 1
  store i8 %1525, i8* %1523
  %1526 = load i32, i32* @pointer
  %1527 = add i32 %1526, 1
  store i32 %1527, i32* @pointer
  %1528 = load i32, i32* @pointer
  %1529 = add i32 %1528, 1
  store i32 %1529, i32* @pointer
  %1530 = load i32, i32* @pointer
  %1531 = add i32 %1530, 1
  store i32 %1531, i32* @pointer
  %1532 = load i32, i32* @pointer
  %1533 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1532
  %1534 = load i8, i8* %1533
  %1535 = icmp ne i8 %1534, 0
  br i1 %1535, label %block113113, label %block1131131

block1111111:                                     ; preds = %block1131131, %block1051051
  %1536 = load i32, i32* @pointer
  %1537 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1536
  %1538 = load i8, i8* %1537
  %1539 = add i8 %1538, 1
  store i8 %1539, i8* %1537
  %1540 = load i32, i32* @pointer
  %1541 = sub i32 %1540, 1
  store i32 %1541, i32* @pointer
  %1542 = load i32, i32* @pointer
  %1543 = sub i32 %1542, 1
  store i32 %1543, i32* @pointer
  %1544 = load i32, i32* @pointer
  %1545 = sub i32 %1544, 1
  store i32 %1545, i32* @pointer
  %1546 = load i32, i32* @pointer
  %1547 = sub i32 %1546, 1
  store i32 %1547, i32* @pointer
  %1548 = load i32, i32* @pointer
  %1549 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1548
  %1550 = load i8, i8* %1549
  %1551 = icmp ne i8 %1550, 0
  br i1 %1551, label %block9393, label %block93931

block113113:                                      ; preds = %block113113, %block111111
  %1552 = load i32, i32* @pointer
  %1553 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1552
  %1554 = load i8, i8* %1553
  %1555 = sub i8 %1554, 1
  store i8 %1555, i8* %1553
  %1556 = load i32, i32* @pointer
  %1557 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1556
  %1558 = load i8, i8* %1557
  %1559 = icmp ne i8 %1558, 0
  br i1 %1559, label %block113113, label %block1131131

block1131131:                                     ; preds = %block113113, %block111111
  %1560 = load i32, i32* @pointer
  %1561 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1560
  %1562 = load i8, i8* %1561
  %1563 = icmp ne i8 %1562, 0
  br i1 %1563, label %block111111, label %block1111111

block115115:                                      ; preds = %block115115, %block89891
  %1564 = load i32, i32* @pointer
  %1565 = sub i32 %1564, 1
  store i32 %1565, i32* @pointer
  %1566 = load i32, i32* @pointer
  %1567 = sub i32 %1566, 1
  store i32 %1567, i32* @pointer
  %1568 = load i32, i32* @pointer
  %1569 = sub i32 %1568, 1
  store i32 %1569, i32* @pointer
  %1570 = load i32, i32* @pointer
  %1571 = sub i32 %1570, 1
  store i32 %1571, i32* @pointer
  %1572 = load i32, i32* @pointer
  %1573 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1572
  %1574 = load i8, i8* %1573
  %1575 = icmp ne i8 %1574, 0
  br i1 %1575, label %block115115, label %block1151151

block1151151:                                     ; preds = %block115115, %block89891
  %1576 = load i32, i32* @pointer
  %1577 = add i32 %1576, 1
  store i32 %1577, i32* @pointer
  %1578 = load i32, i32* @pointer
  %1579 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1578
  %1580 = load i8, i8* %1579
  %1581 = icmp ne i8 %1580, 0
  br i1 %1581, label %block117117, label %block1171171

block117117:                                      ; preds = %block1771771, %block1151151
  %1582 = load i32, i32* @pointer
  %1583 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1582
  %1584 = load i8, i8* %1583
  %1585 = sub i8 %1584, 1
  store i8 %1585, i8* %1583
  %1586 = load i32, i32* @pointer
  %1587 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1586
  %1588 = load i8, i8* %1587
  %1589 = icmp ne i8 %1588, 0
  br i1 %1589, label %block119119, label %block1191191

block1171171:                                     ; preds = %block1771771, %block1151151
  %1590 = load i32, i32* @pointer
  %1591 = add i32 %1590, 1
  store i32 %1591, i32* @pointer
  %1592 = load i32, i32* @pointer
  %1593 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1592
  %1594 = load i8, i8* %1593
  %1595 = icmp ne i8 %1594, 0
  br i1 %1595, label %block179179, label %block1791791

block119119:                                      ; preds = %block1751751, %block117117
  %1596 = load i32, i32* @pointer
  %1597 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1596
  %1598 = load i8, i8* %1597
  %1599 = sub i8 %1598, 1
  store i8 %1599, i8* %1597
  %1600 = load i32, i32* @pointer
  %1601 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1600
  %1602 = load i8, i8* %1601
  %1603 = icmp ne i8 %1602, 0
  br i1 %1603, label %block121121, label %block1211211

block1191191:                                     ; preds = %block1751751, %block117117
  %1604 = load i32, i32* @pointer
  %1605 = add i32 %1604, 1
  store i32 %1605, i32* @pointer
  %1606 = load i32, i32* @pointer
  %1607 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1606
  %1608 = load i8, i8* %1607
  %1609 = icmp ne i8 %1608, 0
  br i1 %1609, label %block177177, label %block1771771

block121121:                                      ; preds = %block1311311, %block119119
  %1610 = load i32, i32* @pointer
  %1611 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1610
  %1612 = load i8, i8* %1611
  %1613 = add i8 %1612, 1
  store i8 %1613, i8* %1611
  %1614 = load i32, i32* @pointer
  %1615 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1614
  %1616 = load i8, i8* %1615
  %1617 = add i8 %1616, 1
  store i8 %1617, i8* %1615
  %1618 = load i32, i32* @pointer
  %1619 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1618
  %1620 = load i8, i8* %1619
  %1621 = add i8 %1620, 1
  store i8 %1621, i8* %1619
  %1622 = load i32, i32* @pointer
  %1623 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1622
  %1624 = load i8, i8* %1623
  %1625 = add i8 %1624, 1
  store i8 %1625, i8* %1623
  %1626 = load i32, i32* @pointer
  %1627 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1626
  %1628 = load i8, i8* %1627
  %1629 = add i8 %1628, 1
  store i8 %1629, i8* %1627
  %1630 = load i32, i32* @pointer
  %1631 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1630
  %1632 = load i8, i8* %1631
  %1633 = icmp ne i8 %1632, 0
  br i1 %1633, label %block123123, label %block1231231

block1211211:                                     ; preds = %block1311311, %block119119
  %1634 = load i32, i32* @pointer
  %1635 = add i32 %1634, 1
  store i32 %1635, i32* @pointer
  %1636 = load i32, i32* @pointer
  %1637 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1636
  %1638 = load i8, i8* %1637
  %1639 = icmp ne i8 %1638, 0
  br i1 %1639, label %block147147, label %block1471471

block123123:                                      ; preds = %block123123, %block121121
  %1640 = load i32, i32* @pointer
  %1641 = add i32 %1640, 1
  store i32 %1641, i32* @pointer
  %1642 = load i32, i32* @pointer
  %1643 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1642
  %1644 = load i8, i8* %1643
  %1645 = add i8 %1644, 1
  store i8 %1645, i8* %1643
  %1646 = load i32, i32* @pointer
  %1647 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1646
  %1648 = load i8, i8* %1647
  %1649 = add i8 %1648, 1
  store i8 %1649, i8* %1647
  %1650 = load i32, i32* @pointer
  %1651 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1650
  %1652 = load i8, i8* %1651
  %1653 = add i8 %1652, 1
  store i8 %1653, i8* %1651
  %1654 = load i32, i32* @pointer
  %1655 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1654
  %1656 = load i8, i8* %1655
  %1657 = add i8 %1656, 1
  store i8 %1657, i8* %1655
  %1658 = load i32, i32* @pointer
  %1659 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1658
  %1660 = load i8, i8* %1659
  %1661 = add i8 %1660, 1
  store i8 %1661, i8* %1659
  %1662 = load i32, i32* @pointer
  %1663 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1662
  %1664 = load i8, i8* %1663
  %1665 = add i8 %1664, 1
  store i8 %1665, i8* %1663
  %1666 = load i32, i32* @pointer
  %1667 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1666
  %1668 = load i8, i8* %1667
  %1669 = add i8 %1668, 1
  store i8 %1669, i8* %1667
  %1670 = load i32, i32* @pointer
  %1671 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1670
  %1672 = load i8, i8* %1671
  %1673 = add i8 %1672, 1
  store i8 %1673, i8* %1671
  %1674 = load i32, i32* @pointer
  %1675 = sub i32 %1674, 1
  store i32 %1675, i32* @pointer
  %1676 = load i32, i32* @pointer
  %1677 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1676
  %1678 = load i8, i8* %1677
  %1679 = sub i8 %1678, 1
  store i8 %1679, i8* %1677
  %1680 = load i32, i32* @pointer
  %1681 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1680
  %1682 = load i8, i8* %1681
  %1683 = icmp ne i8 %1682, 0
  br i1 %1683, label %block123123, label %block1231231

block1231231:                                     ; preds = %block123123, %block121121
  %1684 = load i32, i32* @pointer
  %1685 = add i32 %1684, 1
  store i32 %1685, i32* @pointer
  %1686 = load i32, i32* @pointer
  %1687 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1686
  %1688 = load i8, i8* %1687
  %1689 = sub i8 %1688, 1
  store i8 %1689, i8* %1687
  %1690 = load i32, i32* @pointer
  %1691 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1690
  %1692 = load i8, i8* %1691
  %1693 = call i32 @putchar(i8 %1692)
  %1694 = call i32 @fflush(%FILE* null)
  %1695 = load i32, i32* @pointer
  %1696 = add i32 %1695, 1
  store i32 %1696, i32* @pointer
  %1697 = load i32, i32* @pointer
  %1698 = add i32 %1697, 1
  store i32 %1698, i32* @pointer
  %1699 = load i32, i32* @pointer
  %1700 = add i32 %1699, 1
  store i32 %1700, i32* @pointer
  %1701 = load i32, i32* @pointer
  %1702 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1701
  %1703 = load i8, i8* %1702
  %1704 = sub i8 %1703, 1
  store i8 %1704, i8* %1702
  %1705 = load i32, i32* @pointer
  %1706 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1705
  %1707 = load i8, i8* %1706
  %1708 = icmp ne i8 %1707, 0
  br i1 %1708, label %block125125, label %block1251251

block125125:                                      ; preds = %block125125, %block1231231
  %1709 = load i32, i32* @pointer
  %1710 = sub i32 %1709, 1
  store i32 %1710, i32* @pointer
  %1711 = load i32, i32* @pointer
  %1712 = sub i32 %1711, 1
  store i32 %1712, i32* @pointer
  %1713 = load i32, i32* @pointer
  %1714 = sub i32 %1713, 1
  store i32 %1714, i32* @pointer
  %1715 = load i32, i32* @pointer
  %1716 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1715
  %1717 = load i8, i8* %1716
  %1718 = sub i8 %1717, 1
  store i8 %1718, i8* %1716
  %1719 = load i32, i32* @pointer
  %1720 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1719
  %1721 = load i8, i8* %1720
  %1722 = sub i8 %1721, 1
  store i8 %1722, i8* %1720
  %1723 = load i32, i32* @pointer
  %1724 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1723
  %1725 = load i8, i8* %1724
  %1726 = sub i8 %1725, 1
  store i8 %1726, i8* %1724
  %1727 = load i32, i32* @pointer
  %1728 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1727
  %1729 = load i8, i8* %1728
  %1730 = sub i8 %1729, 1
  store i8 %1730, i8* %1728
  %1731 = load i32, i32* @pointer
  %1732 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1731
  %1733 = load i8, i8* %1732
  %1734 = call i32 @putchar(i8 %1733)
  %1735 = call i32 @fflush(%FILE* null)
  %1736 = load i32, i32* @pointer
  %1737 = sub i32 %1736, 1
  store i32 %1737, i32* @pointer
  %1738 = load i32, i32* @pointer
  %1739 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1738
  %1740 = load i8, i8* %1739
  %1741 = icmp ne i8 %1740, 0
  br i1 %1741, label %block125125, label %block1251251

block1251251:                                     ; preds = %block125125, %block1231231
  %1742 = load i32, i32* @pointer
  %1743 = sub i32 %1742, 1
  store i32 %1743, i32* @pointer
  %1744 = load i32, i32* @pointer
  %1745 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1744
  %1746 = load i8, i8* %1745
  %1747 = icmp ne i8 %1746, 0
  br i1 %1747, label %block127127, label %block1271271

block127127:                                      ; preds = %block127127, %block1251251
  %1748 = load i32, i32* @pointer
  %1749 = sub i32 %1748, 1
  store i32 %1749, i32* @pointer
  %1750 = load i32, i32* @pointer
  %1751 = sub i32 %1750, 1
  store i32 %1751, i32* @pointer
  %1752 = load i32, i32* @pointer
  %1753 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1752
  %1754 = load i8, i8* %1753
  %1755 = icmp ne i8 %1754, 0
  br i1 %1755, label %block127127, label %block1271271

block1271271:                                     ; preds = %block127127, %block1251251
  %1756 = load i32, i32* @pointer
  %1757 = add i32 %1756, 1
  store i32 %1757, i32* @pointer
  %1758 = load i32, i32* @pointer
  %1759 = add i32 %1758, 1
  store i32 %1759, i32* @pointer
  %1760 = load i32, i32* @pointer
  %1761 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1760
  %1762 = load i8, i8* %1761
  %1763 = icmp ne i8 %1762, 0
  br i1 %1763, label %block129129, label %block1291291

block129129:                                      ; preds = %block129129, %block1271271
  %1764 = load i32, i32* @pointer
  %1765 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1764
  %1766 = load i8, i8* %1765
  %1767 = sub i8 %1766, 1
  store i8 %1767, i8* %1765
  %1768 = load i32, i32* @pointer
  %1769 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1768
  %1770 = load i8, i8* %1769
  %1771 = icmp ne i8 %1770, 0
  br i1 %1771, label %block129129, label %block1291291

block1291291:                                     ; preds = %block129129, %block1271271
  %1772 = load i32, i32* @pointer
  %1773 = add i32 %1772, 1
  store i32 %1773, i32* @pointer
  %1774 = load i32, i32* @pointer
  %1775 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1774
  %1776 = load i8, i8* %1775
  %1777 = sub i8 %1776, 1
  store i8 %1777, i8* %1775
  %1778 = load i32, i32* @pointer
  %1779 = add i32 %1778, 1
  store i32 %1779, i32* @pointer
  %1780 = load i32, i32* @pointer
  %1781 = add i32 %1780, 1
  store i32 %1781, i32* @pointer
  %1782 = load i32, i32* @pointer
  %1783 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1782
  %1784 = load i8, i8* %1783
  %1785 = add i8 %1784, 1
  store i8 %1785, i8* %1783
  %1786 = load i32, i32* @pointer
  %1787 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1786
  %1788 = load i8, i8* %1787
  %1789 = icmp ne i8 %1788, 0
  br i1 %1789, label %block131131, label %block1311311

block131131:                                      ; preds = %block1351351, %block1291291
  %1790 = load i32, i32* @pointer
  %1791 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1790
  %1792 = load i8, i8* %1791
  %1793 = icmp ne i8 %1792, 0
  br i1 %1793, label %block133133, label %block1331331

block1311311:                                     ; preds = %block1351351, %block1291291
  %1794 = load i32, i32* @pointer
  %1795 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1794
  %1796 = load i8, i8* %1795
  %1797 = add i8 %1796, 1
  store i8 %1797, i8* %1795
  %1798 = load i32, i32* @pointer
  %1799 = sub i32 %1798, 1
  store i32 %1799, i32* @pointer
  %1800 = load i32, i32* @pointer
  %1801 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1800
  %1802 = load i8, i8* %1801
  %1803 = add i8 %1802, 1
  store i8 %1803, i8* %1801
  %1804 = load i32, i32* @pointer
  %1805 = sub i32 %1804, 1
  store i32 %1805, i32* @pointer
  %1806 = load i32, i32* @pointer
  %1807 = sub i32 %1806, 1
  store i32 %1807, i32* @pointer
  %1808 = load i32, i32* @pointer
  %1809 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1808
  %1810 = load i8, i8* %1809
  %1811 = icmp ne i8 %1810, 0
  br i1 %1811, label %block121121, label %block1211211

block133133:                                      ; preds = %block133133, %block131131
  %1812 = load i32, i32* @pointer
  %1813 = add i32 %1812, 1
  store i32 %1813, i32* @pointer
  %1814 = load i32, i32* @pointer
  %1815 = add i32 %1814, 1
  store i32 %1815, i32* @pointer
  %1816 = load i32, i32* @pointer
  %1817 = add i32 %1816, 1
  store i32 %1817, i32* @pointer
  %1818 = load i32, i32* @pointer
  %1819 = add i32 %1818, 1
  store i32 %1819, i32* @pointer
  %1820 = load i32, i32* @pointer
  %1821 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1820
  %1822 = load i8, i8* %1821
  %1823 = icmp ne i8 %1822, 0
  br i1 %1823, label %block133133, label %block1331331

block1331331:                                     ; preds = %block133133, %block131131
  %1824 = load i32, i32* @pointer
  %1825 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1824
  %1826 = load i8, i8* %1825
  %1827 = add i8 %1826, 1
  store i8 %1827, i8* %1825
  %1828 = load i32, i32* @pointer
  %1829 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1828
  %1830 = load i8, i8* %1829
  %1831 = icmp ne i8 %1830, 0
  br i1 %1831, label %block135135, label %block1351351

block135135:                                      ; preds = %block1371371, %block1331331
  %1832 = load i32, i32* @pointer
  %1833 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1832
  %1834 = load i8, i8* %1833
  %1835 = sub i8 %1834, 1
  store i8 %1835, i8* %1833
  %1836 = load i32, i32* @pointer
  %1837 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1836
  %1838 = load i8, i8* %1837
  %1839 = icmp ne i8 %1838, 0
  br i1 %1839, label %block137137, label %block1371371

block1351351:                                     ; preds = %block1371371, %block1331331
  %1840 = load i32, i32* @pointer
  %1841 = add i32 %1840, 1
  store i32 %1841, i32* @pointer
  %1842 = load i32, i32* @pointer
  %1843 = add i32 %1842, 1
  store i32 %1843, i32* @pointer
  %1844 = load i32, i32* @pointer
  %1845 = add i32 %1844, 1
  store i32 %1845, i32* @pointer
  %1846 = load i32, i32* @pointer
  %1847 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1846
  %1848 = load i8, i8* %1847
  %1849 = icmp ne i8 %1848, 0
  br i1 %1849, label %block131131, label %block1311311

block137137:                                      ; preds = %block1451451, %block135135
  %1850 = load i32, i32* @pointer
  %1851 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1850
  %1852 = load i8, i8* %1851
  %1853 = sub i8 %1852, 1
  store i8 %1853, i8* %1851
  %1854 = load i32, i32* @pointer
  %1855 = add i32 %1854, 1
  store i32 %1855, i32* @pointer
  %1856 = load i32, i32* @pointer
  %1857 = add i32 %1856, 1
  store i32 %1857, i32* @pointer
  %1858 = load i32, i32* @pointer
  %1859 = add i32 %1858, 1
  store i32 %1859, i32* @pointer
  %1860 = load i32, i32* @pointer
  %1861 = add i32 %1860, 1
  store i32 %1861, i32* @pointer
  %1862 = load i32, i32* @pointer
  %1863 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1862
  %1864 = load i8, i8* %1863
  %1865 = add i8 %1864, 1
  store i8 %1865, i8* %1863
  %1866 = load i32, i32* @pointer
  %1867 = add i32 %1866, 1
  store i32 %1867, i32* @pointer
  %1868 = load i32, i32* @pointer
  %1869 = add i32 %1868, 1
  store i32 %1869, i32* @pointer
  %1870 = load i32, i32* @pointer
  %1871 = add i32 %1870, 1
  store i32 %1871, i32* @pointer
  %1872 = load i32, i32* @pointer
  %1873 = add i32 %1872, 1
  store i32 %1873, i32* @pointer
  %1874 = load i32, i32* @pointer
  %1875 = add i32 %1874, 1
  store i32 %1875, i32* @pointer
  %1876 = load i32, i32* @pointer
  %1877 = add i32 %1876, 1
  store i32 %1877, i32* @pointer
  %1878 = load i32, i32* @pointer
  %1879 = add i32 %1878, 1
  store i32 %1879, i32* @pointer
  %1880 = load i32, i32* @pointer
  %1881 = add i32 %1880, 1
  store i32 %1881, i32* @pointer
  %1882 = load i32, i32* @pointer
  %1883 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1882
  %1884 = load i8, i8* %1883
  %1885 = sub i8 %1884, 1
  store i8 %1885, i8* %1883
  %1886 = load i32, i32* @pointer
  %1887 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1886
  %1888 = load i8, i8* %1887
  %1889 = icmp ne i8 %1888, 0
  br i1 %1889, label %block139139, label %block1391391

block1371371:                                     ; preds = %block1451451, %block135135
  %1890 = load i32, i32* @pointer
  %1891 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1890
  %1892 = load i8, i8* %1891
  %1893 = add i8 %1892, 1
  store i8 %1893, i8* %1891
  %1894 = load i32, i32* @pointer
  %1895 = sub i32 %1894, 1
  store i32 %1895, i32* @pointer
  %1896 = load i32, i32* @pointer
  %1897 = sub i32 %1896, 1
  store i32 %1897, i32* @pointer
  %1898 = load i32, i32* @pointer
  %1899 = sub i32 %1898, 1
  store i32 %1899, i32* @pointer
  %1900 = load i32, i32* @pointer
  %1901 = sub i32 %1900, 1
  store i32 %1901, i32* @pointer
  %1902 = load i32, i32* @pointer
  %1903 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1902
  %1904 = load i8, i8* %1903
  %1905 = icmp ne i8 %1904, 0
  br i1 %1905, label %block135135, label %block1351351

block139139:                                      ; preds = %block1411411, %block137137
  %1906 = load i32, i32* @pointer
  %1907 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1906
  %1908 = load i8, i8* %1907
  %1909 = sub i8 %1908, 1
  store i8 %1909, i8* %1907
  %1910 = load i32, i32* @pointer
  %1911 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1910
  %1912 = load i8, i8* %1911
  %1913 = icmp ne i8 %1912, 0
  br i1 %1913, label %block141141, label %block1411411

block1391391:                                     ; preds = %block1411411, %block137137
  %1914 = load i32, i32* @pointer
  %1915 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1914
  %1916 = load i8, i8* %1915
  %1917 = add i8 %1916, 1
  store i8 %1917, i8* %1915
  %1918 = load i32, i32* @pointer
  %1919 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1918
  %1920 = load i8, i8* %1919
  %1921 = add i8 %1920, 1
  store i8 %1921, i8* %1919
  %1922 = load i32, i32* @pointer
  %1923 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1922
  %1924 = load i8, i8* %1923
  %1925 = icmp ne i8 %1924, 0
  br i1 %1925, label %block145145, label %block1451451

block141141:                                      ; preds = %block1431431, %block139139
  %1926 = load i32, i32* @pointer
  %1927 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1926
  %1928 = load i8, i8* %1927
  %1929 = add i8 %1928, 1
  store i8 %1929, i8* %1927
  %1930 = load i32, i32* @pointer
  %1931 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1930
  %1932 = load i8, i8* %1931
  %1933 = add i8 %1932, 1
  store i8 %1933, i8* %1931
  %1934 = load i32, i32* @pointer
  %1935 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1934
  %1936 = load i8, i8* %1935
  %1937 = add i8 %1936, 1
  store i8 %1937, i8* %1935
  %1938 = load i32, i32* @pointer
  %1939 = sub i32 %1938, 1
  store i32 %1939, i32* @pointer
  %1940 = load i32, i32* @pointer
  %1941 = sub i32 %1940, 1
  store i32 %1941, i32* @pointer
  %1942 = load i32, i32* @pointer
  %1943 = sub i32 %1942, 1
  store i32 %1943, i32* @pointer
  %1944 = load i32, i32* @pointer
  %1945 = sub i32 %1944, 1
  store i32 %1945, i32* @pointer
  %1946 = load i32, i32* @pointer
  %1947 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1946
  %1948 = load i8, i8* %1947
  %1949 = icmp ne i8 %1948, 0
  br i1 %1949, label %block143143, label %block1431431

block1411411:                                     ; preds = %block1431431, %block139139
  %1950 = load i32, i32* @pointer
  %1951 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1950
  %1952 = load i8, i8* %1951
  %1953 = add i8 %1952, 1
  store i8 %1953, i8* %1951
  %1954 = load i32, i32* @pointer
  %1955 = add i32 %1954, 1
  store i32 %1955, i32* @pointer
  %1956 = load i32, i32* @pointer
  %1957 = add i32 %1956, 1
  store i32 %1957, i32* @pointer
  %1958 = load i32, i32* @pointer
  %1959 = add i32 %1958, 1
  store i32 %1959, i32* @pointer
  %1960 = load i32, i32* @pointer
  %1961 = add i32 %1960, 1
  store i32 %1961, i32* @pointer
  %1962 = load i32, i32* @pointer
  %1963 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1962
  %1964 = load i8, i8* %1963
  %1965 = sub i8 %1964, 1
  store i8 %1965, i8* %1963
  %1966 = load i32, i32* @pointer
  %1967 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1966
  %1968 = load i8, i8* %1967
  %1969 = icmp ne i8 %1968, 0
  br i1 %1969, label %block139139, label %block1391391

block143143:                                      ; preds = %block143143, %block141141
  %1970 = load i32, i32* @pointer
  %1971 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1970
  %1972 = load i8, i8* %1971
  %1973 = sub i8 %1972, 1
  store i8 %1973, i8* %1971
  %1974 = load i32, i32* @pointer
  %1975 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1974
  %1976 = load i8, i8* %1975
  %1977 = icmp ne i8 %1976, 0
  br i1 %1977, label %block143143, label %block1431431

block1431431:                                     ; preds = %block143143, %block141141
  %1978 = load i32, i32* @pointer
  %1979 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1978
  %1980 = load i8, i8* %1979
  %1981 = icmp ne i8 %1980, 0
  br i1 %1981, label %block141141, label %block1411411

block145145:                                      ; preds = %block145145, %block1391391
  %1982 = load i32, i32* @pointer
  %1983 = sub i32 %1982, 1
  store i32 %1983, i32* @pointer
  %1984 = load i32, i32* @pointer
  %1985 = sub i32 %1984, 1
  store i32 %1985, i32* @pointer
  %1986 = load i32, i32* @pointer
  %1987 = sub i32 %1986, 1
  store i32 %1987, i32* @pointer
  %1988 = load i32, i32* @pointer
  %1989 = sub i32 %1988, 1
  store i32 %1989, i32* @pointer
  %1990 = load i32, i32* @pointer
  %1991 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1990
  %1992 = load i8, i8* %1991
  %1993 = icmp ne i8 %1992, 0
  br i1 %1993, label %block145145, label %block1451451

block1451451:                                     ; preds = %block145145, %block1391391
  %1994 = load i32, i32* @pointer
  %1995 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1994
  %1996 = load i8, i8* %1995
  %1997 = icmp ne i8 %1996, 0
  br i1 %1997, label %block137137, label %block1371371

block147147:                                      ; preds = %block1491491, %block1211211
  %1998 = load i32, i32* @pointer
  %1999 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %1998
  %2000 = load i8, i8* %1999
  %2001 = sub i8 %2000, 1
  store i8 %2001, i8* %1999
  %2002 = load i32, i32* @pointer
  %2003 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2002
  %2004 = load i8, i8* %2003
  %2005 = icmp ne i8 %2004, 0
  br i1 %2005, label %block149149, label %block1491491

block1471471:                                     ; preds = %block1491491, %block1211211
  %2006 = load i32, i32* @pointer
  %2007 = add i32 %2006, 1
  store i32 %2007, i32* @pointer
  %2008 = load i32, i32* @pointer
  %2009 = add i32 %2008, 1
  store i32 %2009, i32* @pointer
  %2010 = load i32, i32* @pointer
  %2011 = add i32 %2010, 1
  store i32 %2011, i32* @pointer
  %2012 = load i32, i32* @pointer
  %2013 = add i32 %2012, 1
  store i32 %2013, i32* @pointer
  %2014 = load i32, i32* @pointer
  %2015 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2014
  %2016 = load i8, i8* %2015
  %2017 = icmp ne i8 %2016, 0
  br i1 %2017, label %block167167, label %block1671671

block149149:                                      ; preds = %block1631631, %block147147
  %2018 = load i32, i32* @pointer
  %2019 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2018
  %2020 = load i8, i8* %2019
  %2021 = sub i8 %2020, 1
  store i8 %2021, i8* %2019
  %2022 = load i32, i32* @pointer
  %2023 = add i32 %2022, 1
  store i32 %2023, i32* @pointer
  %2024 = load i32, i32* @pointer
  %2025 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2024
  %2026 = load i8, i8* %2025
  %2027 = icmp ne i8 %2026, 0
  br i1 %2027, label %block151151, label %block1511511

block1491491:                                     ; preds = %block1631631, %block147147
  %2028 = load i32, i32* @pointer
  %2029 = sub i32 %2028, 1
  store i32 %2029, i32* @pointer
  %2030 = load i32, i32* @pointer
  %2031 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2030
  %2032 = load i8, i8* %2031
  %2033 = icmp ne i8 %2032, 0
  br i1 %2033, label %block147147, label %block1471471

block151151:                                      ; preds = %block1611611, %block149149
  %2034 = load i32, i32* @pointer
  %2035 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2034
  %2036 = load i8, i8* %2035
  %2037 = sub i8 %2036, 1
  store i8 %2037, i8* %2035
  %2038 = load i32, i32* @pointer
  %2039 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2038
  %2040 = load i8, i8* %2039
  %2041 = sub i8 %2040, 1
  store i8 %2041, i8* %2039
  %2042 = load i32, i32* @pointer
  %2043 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2042
  %2044 = load i8, i8* %2043
  %2045 = icmp ne i8 %2044, 0
  br i1 %2045, label %block153153, label %block1531531

block1511511:                                     ; preds = %block1611611, %block149149
  %2046 = load i32, i32* @pointer
  %2047 = sub i32 %2046, 1
  store i32 %2047, i32* @pointer
  %2048 = load i32, i32* @pointer
  %2049 = sub i32 %2048, 1
  store i32 %2049, i32* @pointer
  %2050 = load i32, i32* @pointer
  %2051 = sub i32 %2050, 1
  store i32 %2051, i32* @pointer
  %2052 = load i32, i32* @pointer
  %2053 = sub i32 %2052, 1
  store i32 %2053, i32* @pointer
  %2054 = load i32, i32* @pointer
  %2055 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2054
  %2056 = load i8, i8* %2055
  %2057 = icmp ne i8 %2056, 0
  br i1 %2057, label %block163163, label %block1631631

block153153:                                      ; preds = %block153153, %block151151
  %2058 = load i32, i32* @pointer
  %2059 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2058
  %2060 = load i8, i8* %2059
  %2061 = add i8 %2060, 1
  store i8 %2061, i8* %2059
  %2062 = load i32, i32* @pointer
  %2063 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2062
  %2064 = load i8, i8* %2063
  %2065 = add i8 %2064, 1
  store i8 %2065, i8* %2063
  %2066 = load i32, i32* @pointer
  %2067 = add i32 %2066, 1
  store i32 %2067, i32* @pointer
  %2068 = load i32, i32* @pointer
  %2069 = add i32 %2068, 1
  store i32 %2069, i32* @pointer
  %2070 = load i32, i32* @pointer
  %2071 = add i32 %2070, 1
  store i32 %2071, i32* @pointer
  %2072 = load i32, i32* @pointer
  %2073 = add i32 %2072, 1
  store i32 %2073, i32* @pointer
  %2074 = load i32, i32* @pointer
  %2075 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2074
  %2076 = load i8, i8* %2075
  %2077 = sub i8 %2076, 1
  store i8 %2077, i8* %2075
  %2078 = load i32, i32* @pointer
  %2079 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2078
  %2080 = load i8, i8* %2079
  %2081 = sub i8 %2080, 1
  store i8 %2081, i8* %2079
  %2082 = load i32, i32* @pointer
  %2083 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2082
  %2084 = load i8, i8* %2083
  %2085 = icmp ne i8 %2084, 0
  br i1 %2085, label %block153153, label %block1531531

block1531531:                                     ; preds = %block153153, %block151151
  %2086 = load i32, i32* @pointer
  %2087 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2086
  %2088 = load i8, i8* %2087
  %2089 = sub i8 %2088, 1
  store i8 %2089, i8* %2087
  %2090 = load i32, i32* @pointer
  %2091 = add i32 %2090, 1
  store i32 %2091, i32* @pointer
  %2092 = load i32, i32* @pointer
  %2093 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2092
  %2094 = load i8, i8* %2093
  %2095 = icmp ne i8 %2094, 0
  br i1 %2095, label %block155155, label %block1551551

block155155:                                      ; preds = %block1571571, %block1531531
  %2096 = load i32, i32* @pointer
  %2097 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2096
  %2098 = load i8, i8* %2097
  %2099 = sub i8 %2098, 1
  store i8 %2099, i8* %2097
  %2100 = load i32, i32* @pointer
  %2101 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2100
  %2102 = load i8, i8* %2101
  %2103 = icmp ne i8 %2102, 0
  br i1 %2103, label %block157157, label %block1571571

block1551551:                                     ; preds = %block1571571, %block1531531
  %2104 = load i32, i32* @pointer
  %2105 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2104
  %2106 = load i8, i8* %2105
  %2107 = add i8 %2106, 1
  store i8 %2107, i8* %2105
  %2108 = load i32, i32* @pointer
  %2109 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2108
  %2110 = load i8, i8* %2109
  %2111 = add i8 %2110, 1
  store i8 %2111, i8* %2109
  %2112 = load i32, i32* @pointer
  %2113 = sub i32 %2112, 1
  store i32 %2113, i32* @pointer
  %2114 = load i32, i32* @pointer
  %2115 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2114
  %2116 = load i8, i8* %2115
  %2117 = add i8 %2116, 1
  store i8 %2117, i8* %2115
  %2118 = load i32, i32* @pointer
  %2119 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2118
  %2120 = load i8, i8* %2119
  %2121 = icmp ne i8 %2120, 0
  br i1 %2121, label %block161161, label %block1611611

block157157:                                      ; preds = %block1591591, %block155155
  %2122 = load i32, i32* @pointer
  %2123 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2122
  %2124 = load i8, i8* %2123
  %2125 = sub i8 %2124, 1
  store i8 %2125, i8* %2123
  %2126 = load i32, i32* @pointer
  %2127 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2126
  %2128 = load i8, i8* %2127
  %2129 = icmp ne i8 %2128, 0
  br i1 %2129, label %block159159, label %block1591591

block1571571:                                     ; preds = %block1591591, %block155155
  %2130 = load i32, i32* @pointer
  %2131 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2130
  %2132 = load i8, i8* %2131
  %2133 = icmp ne i8 %2132, 0
  br i1 %2133, label %block155155, label %block1551551

block159159:                                      ; preds = %block159159, %block157157
  %2134 = load i32, i32* @pointer
  %2135 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2134
  %2136 = load i8, i8* %2135
  %2137 = add i8 %2136, 1
  store i8 %2137, i8* %2135
  %2138 = load i32, i32* @pointer
  %2139 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2138
  %2140 = load i8, i8* %2139
  %2141 = add i8 %2140, 1
  store i8 %2141, i8* %2139
  %2142 = load i32, i32* @pointer
  %2143 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2142
  %2144 = load i8, i8* %2143
  %2145 = add i8 %2144, 1
  store i8 %2145, i8* %2143
  %2146 = load i32, i32* @pointer
  %2147 = sub i32 %2146, 1
  store i32 %2147, i32* @pointer
  %2148 = load i32, i32* @pointer
  %2149 = sub i32 %2148, 1
  store i32 %2149, i32* @pointer
  %2150 = load i32, i32* @pointer
  %2151 = sub i32 %2150, 1
  store i32 %2151, i32* @pointer
  %2152 = load i32, i32* @pointer
  %2153 = sub i32 %2152, 1
  store i32 %2153, i32* @pointer
  %2154 = load i32, i32* @pointer
  %2155 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2154
  %2156 = load i8, i8* %2155
  %2157 = sub i8 %2156, 1
  store i8 %2157, i8* %2155
  %2158 = load i32, i32* @pointer
  %2159 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2158
  %2160 = load i8, i8* %2159
  %2161 = icmp ne i8 %2160, 0
  br i1 %2161, label %block159159, label %block1591591

block1591591:                                     ; preds = %block159159, %block157157
  %2162 = load i32, i32* @pointer
  %2163 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2162
  %2164 = load i8, i8* %2163
  %2165 = add i8 %2164, 1
  store i8 %2165, i8* %2163
  %2166 = load i32, i32* @pointer
  %2167 = add i32 %2166, 1
  store i32 %2167, i32* @pointer
  %2168 = load i32, i32* @pointer
  %2169 = add i32 %2168, 1
  store i32 %2169, i32* @pointer
  %2170 = load i32, i32* @pointer
  %2171 = add i32 %2170, 1
  store i32 %2171, i32* @pointer
  %2172 = load i32, i32* @pointer
  %2173 = add i32 %2172, 1
  store i32 %2173, i32* @pointer
  %2174 = load i32, i32* @pointer
  %2175 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2174
  %2176 = load i8, i8* %2175
  %2177 = sub i8 %2176, 1
  store i8 %2177, i8* %2175
  %2178 = load i32, i32* @pointer
  %2179 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2178
  %2180 = load i8, i8* %2179
  %2181 = icmp ne i8 %2180, 0
  br i1 %2181, label %block157157, label %block1571571

block161161:                                      ; preds = %block161161, %block1551551
  %2182 = load i32, i32* @pointer
  %2183 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2182
  %2184 = load i8, i8* %2183
  %2185 = sub i8 %2184, 1
  store i8 %2185, i8* %2183
  %2186 = load i32, i32* @pointer
  %2187 = sub i32 %2186, 1
  store i32 %2187, i32* @pointer
  %2188 = load i32, i32* @pointer
  %2189 = sub i32 %2188, 1
  store i32 %2189, i32* @pointer
  %2190 = load i32, i32* @pointer
  %2191 = sub i32 %2190, 1
  store i32 %2191, i32* @pointer
  %2192 = load i32, i32* @pointer
  %2193 = sub i32 %2192, 1
  store i32 %2193, i32* @pointer
  %2194 = load i32, i32* @pointer
  %2195 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2194
  %2196 = load i8, i8* %2195
  %2197 = add i8 %2196, 1
  store i8 %2197, i8* %2195
  %2198 = load i32, i32* @pointer
  %2199 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2198
  %2200 = load i8, i8* %2199
  %2201 = icmp ne i8 %2200, 0
  br i1 %2201, label %block161161, label %block1611611

block1611611:                                     ; preds = %block161161, %block1551551
  %2202 = load i32, i32* @pointer
  %2203 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2202
  %2204 = load i8, i8* %2203
  %2205 = add i8 %2204, 1
  store i8 %2205, i8* %2203
  %2206 = load i32, i32* @pointer
  %2207 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2206
  %2208 = load i8, i8* %2207
  %2209 = add i8 %2208, 1
  store i8 %2209, i8* %2207
  %2210 = load i32, i32* @pointer
  %2211 = add i32 %2210, 1
  store i32 %2211, i32* @pointer
  %2212 = load i32, i32* @pointer
  %2213 = add i32 %2212, 1
  store i32 %2213, i32* @pointer
  %2214 = load i32, i32* @pointer
  %2215 = add i32 %2214, 1
  store i32 %2215, i32* @pointer
  %2216 = load i32, i32* @pointer
  %2217 = add i32 %2216, 1
  store i32 %2217, i32* @pointer
  %2218 = load i32, i32* @pointer
  %2219 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2218
  %2220 = load i8, i8* %2219
  %2221 = icmp ne i8 %2220, 0
  br i1 %2221, label %block151151, label %block1511511

block163163:                                      ; preds = %block1651651, %block1511511
  %2222 = load i32, i32* @pointer
  %2223 = add i32 %2222, 1
  store i32 %2223, i32* @pointer
  %2224 = load i32, i32* @pointer
  %2225 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2224
  %2226 = load i8, i8* %2225
  %2227 = icmp ne i8 %2226, 0
  br i1 %2227, label %block165165, label %block1651651

block1631631:                                     ; preds = %block1651651, %block1511511
  %2228 = load i32, i32* @pointer
  %2229 = add i32 %2228, 1
  store i32 %2229, i32* @pointer
  %2230 = load i32, i32* @pointer
  %2231 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2230
  %2232 = load i8, i8* %2231
  %2233 = sub i8 %2232, 1
  store i8 %2233, i8* %2231
  %2234 = load i32, i32* @pointer
  %2235 = add i32 %2234, 1
  store i32 %2235, i32* @pointer
  %2236 = load i32, i32* @pointer
  %2237 = add i32 %2236, 1
  store i32 %2237, i32* @pointer
  %2238 = load i32, i32* @pointer
  %2239 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2238
  %2240 = load i8, i8* %2239
  %2241 = icmp ne i8 %2240, 0
  br i1 %2241, label %block149149, label %block1491491

block165165:                                      ; preds = %block165165, %block163163
  %2242 = load i32, i32* @pointer
  %2243 = sub i32 %2242, 1
  store i32 %2243, i32* @pointer
  %2244 = load i32, i32* @pointer
  %2245 = sub i32 %2244, 1
  store i32 %2245, i32* @pointer
  %2246 = load i32, i32* @pointer
  %2247 = sub i32 %2246, 1
  store i32 %2247, i32* @pointer
  %2248 = load i32, i32* @pointer
  %2249 = sub i32 %2248, 1
  store i32 %2249, i32* @pointer
  %2250 = load i32, i32* @pointer
  %2251 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2250
  %2252 = load i8, i8* %2251
  %2253 = icmp ne i8 %2252, 0
  br i1 %2253, label %block165165, label %block1651651

block1651651:                                     ; preds = %block165165, %block163163
  %2254 = load i32, i32* @pointer
  %2255 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2254
  %2256 = load i8, i8* %2255
  %2257 = add i8 %2256, 1
  store i8 %2257, i8* %2255
  %2258 = load i32, i32* @pointer
  %2259 = sub i32 %2258, 1
  store i32 %2259, i32* @pointer
  %2260 = load i32, i32* @pointer
  %2261 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2260
  %2262 = load i8, i8* %2261
  %2263 = icmp ne i8 %2262, 0
  br i1 %2263, label %block163163, label %block1631631

block167167:                                      ; preds = %block1731731, %block1471471
  %2264 = load i32, i32* @pointer
  %2265 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2264
  %2266 = load i8, i8* %2265
  %2267 = sub i8 %2266, 1
  store i8 %2267, i8* %2265
  %2268 = load i32, i32* @pointer
  %2269 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2268
  %2270 = load i8, i8* %2269
  %2271 = sub i8 %2270, 1
  store i8 %2271, i8* %2269
  %2272 = load i32, i32* @pointer
  %2273 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2272
  %2274 = load i8, i8* %2273
  %2275 = icmp ne i8 %2274, 0
  br i1 %2275, label %block169169, label %block1691691

block1671671:                                     ; preds = %block1731731, %block1471471
  %2276 = load i32, i32* @pointer
  %2277 = sub i32 %2276, 1
  store i32 %2277, i32* @pointer
  %2278 = load i32, i32* @pointer
  %2279 = sub i32 %2278, 1
  store i32 %2279, i32* @pointer
  %2280 = load i32, i32* @pointer
  %2281 = sub i32 %2280, 1
  store i32 %2281, i32* @pointer
  %2282 = load i32, i32* @pointer
  %2283 = sub i32 %2282, 1
  store i32 %2283, i32* @pointer
  %2284 = load i32, i32* @pointer
  %2285 = sub i32 %2284, 1
  store i32 %2285, i32* @pointer
  %2286 = load i32, i32* @pointer
  %2287 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2286
  %2288 = load i8, i8* %2287
  %2289 = icmp ne i8 %2288, 0
  br i1 %2289, label %block175175, label %block1751751

block169169:                                      ; preds = %block169169, %block167167
  %2290 = load i32, i32* @pointer
  %2291 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2290
  %2292 = load i8, i8* %2291
  %2293 = add i8 %2292, 1
  store i8 %2293, i8* %2291
  %2294 = load i32, i32* @pointer
  %2295 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2294
  %2296 = load i8, i8* %2295
  %2297 = add i8 %2296, 1
  store i8 %2297, i8* %2295
  %2298 = load i32, i32* @pointer
  %2299 = add i32 %2298, 1
  store i32 %2299, i32* @pointer
  %2300 = load i32, i32* @pointer
  %2301 = add i32 %2300, 1
  store i32 %2301, i32* @pointer
  %2302 = load i32, i32* @pointer
  %2303 = add i32 %2302, 1
  store i32 %2303, i32* @pointer
  %2304 = load i32, i32* @pointer
  %2305 = add i32 %2304, 1
  store i32 %2305, i32* @pointer
  %2306 = load i32, i32* @pointer
  %2307 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2306
  %2308 = load i8, i8* %2307
  %2309 = sub i8 %2308, 1
  store i8 %2309, i8* %2307
  %2310 = load i32, i32* @pointer
  %2311 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2310
  %2312 = load i8, i8* %2311
  %2313 = sub i8 %2312, 1
  store i8 %2313, i8* %2311
  %2314 = load i32, i32* @pointer
  %2315 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2314
  %2316 = load i8, i8* %2315
  %2317 = icmp ne i8 %2316, 0
  br i1 %2317, label %block169169, label %block1691691

block1691691:                                     ; preds = %block169169, %block167167
  %2318 = load i32, i32* @pointer
  %2319 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2318
  %2320 = load i8, i8* %2319
  %2321 = sub i8 %2320, 1
  store i8 %2321, i8* %2319
  %2322 = load i32, i32* @pointer
  %2323 = sub i32 %2322, 1
  store i32 %2323, i32* @pointer
  %2324 = load i32, i32* @pointer
  %2325 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2324
  %2326 = load i8, i8* %2325
  %2327 = sub i8 %2326, 1
  store i8 %2327, i8* %2325
  %2328 = load i32, i32* @pointer
  %2329 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2328
  %2330 = load i8, i8* %2329
  %2331 = sub i8 %2330, 1
  store i8 %2331, i8* %2329
  %2332 = load i32, i32* @pointer
  %2333 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2332
  %2334 = load i8, i8* %2333
  %2335 = icmp ne i8 %2334, 0
  br i1 %2335, label %block171171, label %block1711711

block171171:                                      ; preds = %block171171, %block1691691
  %2336 = load i32, i32* @pointer
  %2337 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2336
  %2338 = load i8, i8* %2337
  %2339 = add i8 %2338, 1
  store i8 %2339, i8* %2337
  %2340 = load i32, i32* @pointer
  %2341 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2340
  %2342 = load i8, i8* %2341
  %2343 = add i8 %2342, 1
  store i8 %2343, i8* %2341
  %2344 = load i32, i32* @pointer
  %2345 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2344
  %2346 = load i8, i8* %2345
  %2347 = add i8 %2346, 1
  store i8 %2347, i8* %2345
  %2348 = load i32, i32* @pointer
  %2349 = add i32 %2348, 1
  store i32 %2349, i32* @pointer
  %2350 = load i32, i32* @pointer
  %2351 = add i32 %2350, 1
  store i32 %2351, i32* @pointer
  %2352 = load i32, i32* @pointer
  %2353 = add i32 %2352, 1
  store i32 %2353, i32* @pointer
  %2354 = load i32, i32* @pointer
  %2355 = add i32 %2354, 1
  store i32 %2355, i32* @pointer
  %2356 = load i32, i32* @pointer
  %2357 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2356
  %2358 = load i8, i8* %2357
  %2359 = sub i8 %2358, 1
  store i8 %2359, i8* %2357
  %2360 = load i32, i32* @pointer
  %2361 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2360
  %2362 = load i8, i8* %2361
  %2363 = sub i8 %2362, 1
  store i8 %2363, i8* %2361
  %2364 = load i32, i32* @pointer
  %2365 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2364
  %2366 = load i8, i8* %2365
  %2367 = icmp ne i8 %2366, 0
  br i1 %2367, label %block171171, label %block1711711

block1711711:                                     ; preds = %block171171, %block1691691
  %2368 = load i32, i32* @pointer
  %2369 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2368
  %2370 = load i8, i8* %2369
  %2371 = add i8 %2370, 1
  store i8 %2371, i8* %2369
  %2372 = load i32, i32* @pointer
  %2373 = add i32 %2372, 1
  store i32 %2373, i32* @pointer
  %2374 = load i32, i32* @pointer
  %2375 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2374
  %2376 = load i8, i8* %2375
  %2377 = add i8 %2376, 1
  store i8 %2377, i8* %2375
  %2378 = load i32, i32* @pointer
  %2379 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2378
  %2380 = load i8, i8* %2379
  %2381 = icmp ne i8 %2380, 0
  br i1 %2381, label %block173173, label %block1731731

block173173:                                      ; preds = %block173173, %block1711711
  %2382 = load i32, i32* @pointer
  %2383 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2382
  %2384 = load i8, i8* %2383
  %2385 = sub i8 %2384, 1
  store i8 %2385, i8* %2383
  %2386 = load i32, i32* @pointer
  %2387 = sub i32 %2386, 1
  store i32 %2387, i32* @pointer
  %2388 = load i32, i32* @pointer
  %2389 = sub i32 %2388, 1
  store i32 %2389, i32* @pointer
  %2390 = load i32, i32* @pointer
  %2391 = sub i32 %2390, 1
  store i32 %2391, i32* @pointer
  %2392 = load i32, i32* @pointer
  %2393 = sub i32 %2392, 1
  store i32 %2393, i32* @pointer
  %2394 = load i32, i32* @pointer
  %2395 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2394
  %2396 = load i8, i8* %2395
  %2397 = add i8 %2396, 1
  store i8 %2397, i8* %2395
  %2398 = load i32, i32* @pointer
  %2399 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2398
  %2400 = load i8, i8* %2399
  %2401 = icmp ne i8 %2400, 0
  br i1 %2401, label %block173173, label %block1731731

block1731731:                                     ; preds = %block173173, %block1711711
  %2402 = load i32, i32* @pointer
  %2403 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2402
  %2404 = load i8, i8* %2403
  %2405 = add i8 %2404, 1
  store i8 %2405, i8* %2403
  %2406 = load i32, i32* @pointer
  %2407 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2406
  %2408 = load i8, i8* %2407
  %2409 = add i8 %2408, 1
  store i8 %2409, i8* %2407
  %2410 = load i32, i32* @pointer
  %2411 = add i32 %2410, 1
  store i32 %2411, i32* @pointer
  %2412 = load i32, i32* @pointer
  %2413 = add i32 %2412, 1
  store i32 %2413, i32* @pointer
  %2414 = load i32, i32* @pointer
  %2415 = add i32 %2414, 1
  store i32 %2415, i32* @pointer
  %2416 = load i32, i32* @pointer
  %2417 = add i32 %2416, 1
  store i32 %2417, i32* @pointer
  %2418 = load i32, i32* @pointer
  %2419 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2418
  %2420 = load i8, i8* %2419
  %2421 = icmp ne i8 %2420, 0
  br i1 %2421, label %block167167, label %block1671671

block175175:                                      ; preds = %block175175, %block1671671
  %2422 = load i32, i32* @pointer
  %2423 = sub i32 %2422, 1
  store i32 %2423, i32* @pointer
  %2424 = load i32, i32* @pointer
  %2425 = sub i32 %2424, 1
  store i32 %2425, i32* @pointer
  %2426 = load i32, i32* @pointer
  %2427 = sub i32 %2426, 1
  store i32 %2427, i32* @pointer
  %2428 = load i32, i32* @pointer
  %2429 = sub i32 %2428, 1
  store i32 %2429, i32* @pointer
  %2430 = load i32, i32* @pointer
  %2431 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2430
  %2432 = load i8, i8* %2431
  %2433 = icmp ne i8 %2432, 0
  br i1 %2433, label %block175175, label %block1751751

block1751751:                                     ; preds = %block175175, %block1671671
  %2434 = load i32, i32* @pointer
  %2435 = sub i32 %2434, 1
  store i32 %2435, i32* @pointer
  %2436 = load i32, i32* @pointer
  %2437 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2436
  %2438 = load i8, i8* %2437
  %2439 = icmp ne i8 %2438, 0
  br i1 %2439, label %block119119, label %block1191191

block177177:                                      ; preds = %block177177, %block1191191
  %2440 = load i32, i32* @pointer
  %2441 = add i32 %2440, 1
  store i32 %2441, i32* @pointer
  %2442 = load i32, i32* @pointer
  %2443 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2442
  %2444 = load i8, i8* %2443
  %2445 = add i8 %2444, 1
  store i8 %2445, i8* %2443
  %2446 = load i32, i32* @pointer
  %2447 = sub i32 %2446, 1
  store i32 %2447, i32* @pointer
  %2448 = load i32, i32* @pointer
  %2449 = sub i32 %2448, 1
  store i32 %2449, i32* @pointer
  %2450 = load i32, i32* @pointer
  %2451 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2450
  %2452 = load i8, i8* %2451
  %2453 = add i8 %2452, 1
  store i8 %2453, i8* %2451
  %2454 = load i32, i32* @pointer
  %2455 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2454
  %2456 = load i8, i8* %2455
  %2457 = add i8 %2456, 1
  store i8 %2457, i8* %2455
  %2458 = load i32, i32* @pointer
  %2459 = sub i32 %2458, 1
  store i32 %2459, i32* @pointer
  %2460 = load i32, i32* @pointer
  %2461 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2460
  %2462 = load i8, i8* %2461
  %2463 = icmp ne i8 %2462, 0
  br i1 %2463, label %block177177, label %block1771771

block1771771:                                     ; preds = %block177177, %block1191191
  %2464 = load i32, i32* @pointer
  %2465 = sub i32 %2464, 1
  store i32 %2465, i32* @pointer
  %2466 = load i32, i32* @pointer
  %2467 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2466
  %2468 = load i8, i8* %2467
  %2469 = icmp ne i8 %2468, 0
  br i1 %2469, label %block117117, label %block1171171

block179179:                                      ; preds = %block1891891, %block1171171
  %2470 = load i32, i32* @pointer
  %2471 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2470
  %2472 = load i8, i8* %2471
  %2473 = add i8 %2472, 1
  store i8 %2473, i8* %2471
  %2474 = load i32, i32* @pointer
  %2475 = add i32 %2474, 1
  store i32 %2475, i32* @pointer
  %2476 = load i32, i32* @pointer
  %2477 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2476
  %2478 = load i8, i8* %2477
  %2479 = icmp ne i8 %2478, 0
  br i1 %2479, label %block181181, label %block1811811

block1791791:                                     ; preds = %block1891891, %block1171171
  %2480 = load i32, i32* @pointer
  %2481 = add i32 %2480, 1
  store i32 %2481, i32* @pointer
  %2482 = load i32, i32* @pointer
  %2483 = add i32 %2482, 1
  store i32 %2483, i32* @pointer
  %2484 = load i32, i32* @pointer
  %2485 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2484
  %2486 = load i8, i8* %2485
  %2487 = icmp ne i8 %2486, 0
  br i1 %2487, label %block6565, label %block65651

block181181:                                      ; preds = %block1871871, %block179179
  %2488 = load i32, i32* @pointer
  %2489 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2488
  %2490 = load i8, i8* %2489
  %2491 = sub i8 %2490, 1
  store i8 %2491, i8* %2489
  %2492 = load i32, i32* @pointer
  %2493 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2492
  %2494 = load i8, i8* %2493
  %2495 = sub i8 %2494, 1
  store i8 %2495, i8* %2493
  %2496 = load i32, i32* @pointer
  %2497 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2496
  %2498 = load i8, i8* %2497
  %2499 = icmp ne i8 %2498, 0
  br i1 %2499, label %block183183, label %block1831831

block1811811:                                     ; preds = %block1871871, %block179179
  %2500 = load i32, i32* @pointer
  %2501 = sub i32 %2500, 1
  store i32 %2501, i32* @pointer
  %2502 = load i32, i32* @pointer
  %2503 = sub i32 %2502, 1
  store i32 %2503, i32* @pointer
  %2504 = load i32, i32* @pointer
  %2505 = sub i32 %2504, 1
  store i32 %2505, i32* @pointer
  %2506 = load i32, i32* @pointer
  %2507 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2506
  %2508 = load i8, i8* %2507
  %2509 = icmp ne i8 %2508, 0
  br i1 %2509, label %block189189, label %block1891891

block183183:                                      ; preds = %block183183, %block181181
  %2510 = load i32, i32* @pointer
  %2511 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2510
  %2512 = load i8, i8* %2511
  %2513 = add i8 %2512, 1
  store i8 %2513, i8* %2511
  %2514 = load i32, i32* @pointer
  %2515 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2514
  %2516 = load i8, i8* %2515
  %2517 = add i8 %2516, 1
  store i8 %2517, i8* %2515
  %2518 = load i32, i32* @pointer
  %2519 = add i32 %2518, 1
  store i32 %2519, i32* @pointer
  %2520 = load i32, i32* @pointer
  %2521 = add i32 %2520, 1
  store i32 %2521, i32* @pointer
  %2522 = load i32, i32* @pointer
  %2523 = add i32 %2522, 1
  store i32 %2523, i32* @pointer
  %2524 = load i32, i32* @pointer
  %2525 = add i32 %2524, 1
  store i32 %2525, i32* @pointer
  %2526 = load i32, i32* @pointer
  %2527 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2526
  %2528 = load i8, i8* %2527
  %2529 = sub i8 %2528, 1
  store i8 %2529, i8* %2527
  %2530 = load i32, i32* @pointer
  %2531 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2530
  %2532 = load i8, i8* %2531
  %2533 = sub i8 %2532, 1
  store i8 %2533, i8* %2531
  %2534 = load i32, i32* @pointer
  %2535 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2534
  %2536 = load i8, i8* %2535
  %2537 = icmp ne i8 %2536, 0
  br i1 %2537, label %block183183, label %block1831831

block1831831:                                     ; preds = %block183183, %block181181
  %2538 = load i32, i32* @pointer
  %2539 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2538
  %2540 = load i8, i8* %2539
  %2541 = sub i8 %2540, 1
  store i8 %2541, i8* %2539
  %2542 = load i32, i32* @pointer
  %2543 = add i32 %2542, 1
  store i32 %2543, i32* @pointer
  %2544 = load i32, i32* @pointer
  %2545 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2544
  %2546 = load i8, i8* %2545
  %2547 = sub i8 %2546, 1
  store i8 %2547, i8* %2545
  %2548 = load i32, i32* @pointer
  %2549 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2548
  %2550 = load i8, i8* %2549
  %2551 = sub i8 %2550, 1
  store i8 %2551, i8* %2549
  %2552 = load i32, i32* @pointer
  %2553 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2552
  %2554 = load i8, i8* %2553
  %2555 = icmp ne i8 %2554, 0
  br i1 %2555, label %block185185, label %block1851851

block185185:                                      ; preds = %block185185, %block1831831
  %2556 = load i32, i32* @pointer
  %2557 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2556
  %2558 = load i8, i8* %2557
  %2559 = add i8 %2558, 1
  store i8 %2559, i8* %2557
  %2560 = load i32, i32* @pointer
  %2561 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2560
  %2562 = load i8, i8* %2561
  %2563 = add i8 %2562, 1
  store i8 %2563, i8* %2561
  %2564 = load i32, i32* @pointer
  %2565 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2564
  %2566 = load i8, i8* %2565
  %2567 = add i8 %2566, 1
  store i8 %2567, i8* %2565
  %2568 = load i32, i32* @pointer
  %2569 = add i32 %2568, 1
  store i32 %2569, i32* @pointer
  %2570 = load i32, i32* @pointer
  %2571 = add i32 %2570, 1
  store i32 %2571, i32* @pointer
  %2572 = load i32, i32* @pointer
  %2573 = add i32 %2572, 1
  store i32 %2573, i32* @pointer
  %2574 = load i32, i32* @pointer
  %2575 = add i32 %2574, 1
  store i32 %2575, i32* @pointer
  %2576 = load i32, i32* @pointer
  %2577 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2576
  %2578 = load i8, i8* %2577
  %2579 = sub i8 %2578, 1
  store i8 %2579, i8* %2577
  %2580 = load i32, i32* @pointer
  %2581 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2580
  %2582 = load i8, i8* %2581
  %2583 = sub i8 %2582, 1
  store i8 %2583, i8* %2581
  %2584 = load i32, i32* @pointer
  %2585 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2584
  %2586 = load i8, i8* %2585
  %2587 = icmp ne i8 %2586, 0
  br i1 %2587, label %block185185, label %block1851851

block1851851:                                     ; preds = %block185185, %block1831831
  %2588 = load i32, i32* @pointer
  %2589 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2588
  %2590 = load i8, i8* %2589
  %2591 = add i8 %2590, 1
  store i8 %2591, i8* %2589
  %2592 = load i32, i32* @pointer
  %2593 = sub i32 %2592, 1
  store i32 %2593, i32* @pointer
  %2594 = load i32, i32* @pointer
  %2595 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2594
  %2596 = load i8, i8* %2595
  %2597 = add i8 %2596, 1
  store i8 %2597, i8* %2595
  %2598 = load i32, i32* @pointer
  %2599 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2598
  %2600 = load i8, i8* %2599
  %2601 = icmp ne i8 %2600, 0
  br i1 %2601, label %block187187, label %block1871871

block187187:                                      ; preds = %block187187, %block1851851
  %2602 = load i32, i32* @pointer
  %2603 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2602
  %2604 = load i8, i8* %2603
  %2605 = sub i8 %2604, 1
  store i8 %2605, i8* %2603
  %2606 = load i32, i32* @pointer
  %2607 = sub i32 %2606, 1
  store i32 %2607, i32* @pointer
  %2608 = load i32, i32* @pointer
  %2609 = sub i32 %2608, 1
  store i32 %2609, i32* @pointer
  %2610 = load i32, i32* @pointer
  %2611 = sub i32 %2610, 1
  store i32 %2611, i32* @pointer
  %2612 = load i32, i32* @pointer
  %2613 = sub i32 %2612, 1
  store i32 %2613, i32* @pointer
  %2614 = load i32, i32* @pointer
  %2615 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2614
  %2616 = load i8, i8* %2615
  %2617 = add i8 %2616, 1
  store i8 %2617, i8* %2615
  %2618 = load i32, i32* @pointer
  %2619 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2618
  %2620 = load i8, i8* %2619
  %2621 = icmp ne i8 %2620, 0
  br i1 %2621, label %block187187, label %block1871871

block1871871:                                     ; preds = %block187187, %block1851851
  %2622 = load i32, i32* @pointer
  %2623 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2622
  %2624 = load i8, i8* %2623
  %2625 = add i8 %2624, 1
  store i8 %2625, i8* %2623
  %2626 = load i32, i32* @pointer
  %2627 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2626
  %2628 = load i8, i8* %2627
  %2629 = add i8 %2628, 1
  store i8 %2629, i8* %2627
  %2630 = load i32, i32* @pointer
  %2631 = add i32 %2630, 1
  store i32 %2631, i32* @pointer
  %2632 = load i32, i32* @pointer
  %2633 = add i32 %2632, 1
  store i32 %2633, i32* @pointer
  %2634 = load i32, i32* @pointer
  %2635 = add i32 %2634, 1
  store i32 %2635, i32* @pointer
  %2636 = load i32, i32* @pointer
  %2637 = add i32 %2636, 1
  store i32 %2637, i32* @pointer
  %2638 = load i32, i32* @pointer
  %2639 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2638
  %2640 = load i8, i8* %2639
  %2641 = icmp ne i8 %2640, 0
  br i1 %2641, label %block181181, label %block1811811

block189189:                                      ; preds = %block189189, %block1811811
  %2642 = load i32, i32* @pointer
  %2643 = sub i32 %2642, 1
  store i32 %2643, i32* @pointer
  %2644 = load i32, i32* @pointer
  %2645 = sub i32 %2644, 1
  store i32 %2645, i32* @pointer
  %2646 = load i32, i32* @pointer
  %2647 = sub i32 %2646, 1
  store i32 %2647, i32* @pointer
  %2648 = load i32, i32* @pointer
  %2649 = sub i32 %2648, 1
  store i32 %2649, i32* @pointer
  %2650 = load i32, i32* @pointer
  %2651 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2650
  %2652 = load i8, i8* %2651
  %2653 = icmp ne i8 %2652, 0
  br i1 %2653, label %block189189, label %block1891891

block1891891:                                     ; preds = %block189189, %block1811811
  %2654 = load i32, i32* @pointer
  %2655 = getelementptr [262144 x i8], [262144 x i8]* @tape, i32 0, i32 %2654
  %2656 = load i8, i8* %2655
  %2657 = icmp ne i8 %2656, 0
  br i1 %2657, label %block179179, label %block1791791
}
