#include<cstdio>

using namespace std;

typedef double Real;

Real ifact(int x){
	Real res = 1.0;
	for(int i = 1; i <= x; ++i){
		res /= i;
	}
	return res;
}

Real cos_coe(int i){
	if(i % 2 == 1) return 0;
	int n = i / 2;
	if(n % 2 == 0){
		return ifact(i);
	}else{
		return -ifact(i);
	}
}

Real sin_coe(int i){
	if(i % 2 == 0) return 0;
	int n = i / 2;
	if(n % 2 == 0){
		return ifact(i);
	}else{
		return -ifact(i);
	}
}

int main(){
	char ch[10];
	scanf("%s", ch);
/*	if(ch[0] == 'c'){
		printf("\tlet xx = x *. x in\n");
		printf("\tlet res32 = (%.40f) in\n", cos_coe(20));
		for(int i = 30; i >= 0; i -= 2){
			printf("\tlet res%d = res%d *. x2 +. (%.40f) in\n", i, i + 2, cos_coe(i));
		}
		printf("\tres0\n");
	}else{
		printf("\tlet xx = x *. x in\n");
		printf("\tlet res31 = (%.40f) in\n", sin_coe(19));
		for(int i = 29; i >= 1; i -= 2){
			printf("\tlet res%d = res%d *. xx +. (%.40f) in\n", i, i + 2, sin_coe(i));
		}
		printf("res1 *. x\n");
	}*/

	if(ch[0] == 'c'){
		printf("\tlet xx = x *. x in\n");
		printf("\tlet x4 = xx *. xx in\n");
		printf("\tlet pres36 = (%.40f) in\n", cos_coe(46));
		for(int i = 32; i >= 0; i -= 4){
			printf("\tlet pres%d = pres%d *. x4 +. (%.40f) in\n", i, i + 4, cos_coe(i));
		}
		printf("\tlet nres34 = (%.40f) in\n", cos_coe(34));
		for(int i = 30; i >= 2; i -= 4){
			printf("\tlet nres%d = nres%d *. x4 +. (%.40f) in\n", i, i + 4, cos_coe(i));
		}
		printf("\tpres0 +. nres2 *. xx\n");
	}else{
		printf("\tlet xx = x *. x in\n");
		printf("\tlet x4 = xx *. xx in\n");
		printf("\tlet nres35 = (%.40f) in\n", sin_coe(35));
		for(int i = 31; i >= 3; i -= 4){
			printf("\tlet nres%d = nres%d *. x4 +. (%.40f) in\n", i, i + 4, sin_coe(i));
		}
		printf("\tlet pres33 = (%.40f) in\n", sin_coe(33));
		for(int i = 29; i >= 1; i -= 4){
			printf("\tlet pres%d = pres%d *. x4 +. (%.40f) in\n", i, i + 4, sin_coe(i));
		}
		printf("\tx *. (pres1 +. nres3 *. xx)\n");
	}
	return 0;
}