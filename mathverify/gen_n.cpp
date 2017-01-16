#include<cstdio>
#include<cmath>

using namespace std;

double pi = acos(-1.0);

double normalize(double x){
	while(x < -pi) x += pi * 2;
	while(x > pi) x -= pi * 2;
	return x;
}

int main(){
	for(int i = -100; i <= 100; ++i){
		printf("let y = %.9f in\n", normalize(i));
		printf("let z = normalize (%d.0) in\n", i);
		printf("let x = y -. z in\n");
		printf("let w = if x < 0.0 then -.x else x in\n");
		printf("let a = if x > 0.000001 then ((print_char 119);0) else ((print_char 97);1) in\n");
	}
	printf("()\n");
	return 0;
}