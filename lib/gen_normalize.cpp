#include<cstdio>
#include<cmath>

using namespace std;

const double pi = acos(-1.0);
const double pi2 = pi *  2;

int main(){
	// 2pi * (2 ^ 30)
	printf("\tlet p30 = (%.40f) in\n", pi2 * (1 << 30));
	printf("\tlet i30 = floor(x /. p30) in\n");
	printf("\tlet x30 = x -. p30 *. i30 in\n");
	for(int i = 29; i >= 0; --i){
		printf("\tlet p%d = (%.40f) in\n", i, pi2 * (1 << i));
		printf("\tlet x%d = (if x%d >= p%d then x%d -. p%d else x%d) in\n", i, i + 1, i, i + 1, i, i + 1);
	}
	printf("\tx0\n");
	return 0;
}