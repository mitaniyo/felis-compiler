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
	int32_t i;
	float f;
} fl;

value getbits(value v) {
	fl f;
	f.f = (float)(Double_val(v));
	return copy_int32(f.i);
}
