#include<cstdio>
#include<cmath>

using namespace std;

int main(){
	for(int i = -100; i <= 100; ++i){
		printf("let x = sin (%d.0) in\n", i);
		printf("let y = %.9f in\n", sin(i));
		printf("let z = x -. y in\n");
		printf("let w = if z < 0.0 then -.z else z in\n");
		printf("let p = if w > 0.0001 then ((print_char 119); 0) else ((print_char 97); 1) in\n");
	}
	for(int i = -100; i <= 100; ++i){
		printf("let x = cos (%d.0) in\n", i);
		printf("let y = %.9f in\n", cos(i));
		printf("let z = x -. y in\n");
		printf("let w = if z < 0.0 then -.z else z in\n");
		printf("let p = if w > 0.0001 then ((print_char 119); 0) else ((print_char 97); 1) in\n");
	}
	for(int i = -100; i <= 100; ++i){
		printf("let x = atan (%d.0) in\n", i);
		printf("let y = %.9f in\n", atan(i));
		printf("let z = x -. y in\n");
		printf("let w = if z < 0.0 then -.z else z in\n");
		printf("let p = if w > 0.0001 then ((print_char 119); 0) else ((print_char 97); 1) in\n");
	}
	printf("()\n");
	return 0;
}