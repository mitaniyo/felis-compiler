make native-code
cp rt/raytracer/programs/minrt128.s tmp
./min-caml.opt -extvar 1 -inline 100 rt/raytracer/programs/minrt128
diff tmp rt/raytracer/programs/minrt128.s > dif.txt
./min-caml.opt -lib 1 -inline 100 lib/math2
cd lib
./exporter < math2.s > mathlib2.s
cp mathlib2.s ../../asm2/felis-assembler/test/rt/mathlib2.s
cp math_primitive2.s ../../asm2/felis-assembler/test/rt/math_primitive2.s
cd ..
cp rt/raytracer/programs/minrt128.s ../asm2/felis-assembler/test/rt/minrt128.s
