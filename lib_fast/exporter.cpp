#include<cstdio>
#include<string>

using namespace std;

char ch[100];

string strs[] = {
	"sinlib",
	"coslib",
	"atanlib",
	"sqrtlib"
};

string strs2[] ={
	"min_caml_sinlib:",
	"min_caml_coslib:",
	"min_caml_atanlib:",
	"min_caml_sqrtlib:"
};

int main(){
	while(true){
		if(fgets(ch, 100, stdin) == NULL){
			break;
		}
		string s = ch;
		if(s[s.size() - 1] == '\n'){
			s = s.substr(0, s.size() - 1);
		}
		if(s == "_min_caml_start:") break;
		bool flg = false;
		for(int i = 0; i < 4; ++i){
			string t = s.substr(0, strs[i].size());
			if(t == strs[i]){
				printf("%s\n", strs2[i].c_str());
				printf("%s\n", s.c_str());
				flg = true;
			}
		}
		if(!flg){
			printf("%s\n", s.c_str());
		}
	}
	return 0;
}