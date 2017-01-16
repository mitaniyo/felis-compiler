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
	if(ch[0] == 'c'){
		printf("\tlet xx = x *. x in\n");
		printf("\tlet res20 = (%.40f) in\n", cos_coe(20));
		for(int i = 18; i >= 0; i -= 2){
			printf("\tlet res%d = res%d *. xx +. (%.40f) in\n", i, i + 2, cos_coe(i));
		}
		printf("\tres0\n");
	}else{
		printf("\tlet xx = x *. x in\n");
		printf("\tlet res19 = (%.40f) in\n", sin_coe(19));
		for(int i = 17; i >= 1; i -= 2){
			printf("\tlet res%d = res%d *. xx +. (%.40f) in\n", i, i + 2, sin_coe(i));
		}
		printf("res1 *. x\n");
	}/*
	if(ch[0] == 'c'){
		printf("\tlet tmp0 = 1.0 in\n");
		for(int i = 2; i <= 18; i += 2){
			printf("\tlet tmp%d = -. (tmp%d /. %d.0 /. %d.0) in\n", i, i - 2, i, i - 1);
		}
		printf("\tlet res20 = 0.0 in\n");
		for(int i = 18; i >= 0; i -= 2){
			printf("\tlet res%d = res%d *. x *. x +. tmp%d in\n", i, i + 2, i);
		}
	}else{
		printf("\tlet tmp1 = 1.0 in\n");
		for(int i = 3; i <= 19; i += 2){
			printf("\tlet tmp%d = -.(tmp%d /. %d.0 /. %d.0) in\n", i, i - 2, i, i - 1);
		}
		printf("\tlet res21 = 0.0 in\n");
		for(int i = 19; i >= 1; i -= 2){
			printf("\tlet res%d = res%d *. x *. x +. tmp%d in\n", i, i + 2, i);
		}
	}*/
	return 0;
}