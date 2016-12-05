#include <stdio.h>
#include <stdint.h>
#include <caml/mlvalues.h>
#include <caml/alloc.h>
/*
typedef union {
  int32_t i[2];
  double d;
} dbl;

value gethi(value v) {
  dbl d;
  d.d = Double_val(v);
  return copy_int32(d.i[0]);
}

value getlo(value v) {
  dbl d;
  d.d = Double_val(v);
  return copy_int32(d.i[1]);
}
*/
typedef union {
	uint32_t i;
	float f;
} fl;

value gethi(value v) {
  fl f;
  f.f = (float)(Double_val(v));
  uint32_t x = f.i;
  int ret = x >> 16;
  return copy_int32(ret);
}

value getlo(value v) {
  fl f;
  f.f = (float)(Double_val(v));
  uint32_t x = f.i;
  int ret = (int)(x & ((1 << 16) - 1));
  return copy_int32(ret);
}

/*value getbits(value v) {
	fl f;
	f.f = (float)(Double_val(v));
	return copy_int32(f.i);
}
*/