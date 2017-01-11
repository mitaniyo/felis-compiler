#include<cstdio>
#include<utility>
#include<string>
#include<map>
#include<cstring>
#include<cstdlib>
#include<vector>
#include<stdint.h>

using namespace std;

map<string, int> positions;

int hp = 32 << 16;

typedef union {
	uint32_t i;
	float f;
} fl;

pair<int, int> getbits(float fv){
	fl f;
	f.f = fv;
	return make_pair(f.i >> 16, f.i & ((1 << 16) - 1));
}

void li(int id, int val){
	if(val < 65536){
		printf("addi r0 r%d %d\n", id, val);
	}else{
		printf("lui r%d %d\n", id, val >> 16);
		printf("addi r%d r%d %d\n", id, id, val & ((1 << 16) - 1));
	}
}

void fli(int id, float f){
	pair<int, int> bits = getbits(f);
	printf("lui r24 %d\n", bits.first);
	printf("addi r24 r24 %d\n", bits.second);
	printf("mtc1 r24 f%d\n", id);
}

void header(){
	printf("min_caml_globals:\n");
}

void footer(){
	printf("generate_return:\n");
	printf("jr r31\n");
}

struct Extvar{
	string name;
	int len;
	int type;
	string obj;
	bool isPub;
	Extvar(){}
	Extvar(string n, int l, int t, string o, bool flg):name(n), len(l), type(t), obj(o), isPub(flg){}
};

vector<Extvar> vars;

void addVar(int id, int adr = -1){
	string name = vars[id].name;
	int len = vars[id].len;
	int type = vars[id].type;
	string obj = vars[id].obj;
	bool isPub = vars[id].isPub;
	if(type == 0){
		// int
		int val;
		if(adr != -1) val = adr;
		else val = atoi(obj.c_str());
		printf("%s:\n", ("generate_" + name).c_str());
		li(1, len);
		li(2, val);
		printf("sw r31 r30 0\n");
		printf("addi r30 r30 4\n");
		printf("jal min_caml_create_array\n");
		printf("addi r30 r30 -4\n");
		printf("lw r30 r31 0\n");
		string nxtName = id + 1 < vars.size() ? vars[id + 1].name : "return";
		printf("j %s\n", ("generate_" + nxtName).c_str());

		positions[name] = hp;
		hp += len * 4;

		if(!isPub) return;

		printf("%s:\n", ("min_caml_load_" + name).c_str());
		li(1, hp - len * 4);
		printf("jr r31\n");
	}else if(type == 1){
		// float
		float val;
		sscanf(obj.c_str(), "%f", &val);

		printf("%s:\n", ("generate_" + name).c_str());
		li(1, len);
		fli(0, val);
		printf("sw r31 r30 0\n");
		printf("addi r30 r30 4\n");
		printf("jal min_caml_create_float_array\n");
		printf("addi r30 r30 -4\n");
		printf("lw r30 r31 0\n");
		string nxtName = id + 1 < vars.size() ? vars[id + 1].name : "return";
		printf("j %s\n", ("generate_" + nxtName).c_str());

		positions[name] = hp;
		hp += len * 4;

		if(!isPub) return;

		printf("%s:\n", ("min_caml_load_" + name).c_str());
		li(1, hp - len * 4);
		printf("jr r31\n");
	}else if(type == 2){
		// complex object
		int val = positions[obj];
		addVar(id, val);
	}
}

void input(){
	string name;
	int len;
	int type;
	string contents;
	bool isPub;
	int x;
	char buf[100];
	int ret = scanf("%s", buf);
	if(ret == -1) return;
	name = buf;
	scanf("%d%d", &len, &type);
	scanf("%s", buf);
	contents = buf;
	scanf("%d", &x);
	isPub = (x != 0);
	vars.push_back(Extvar(name, len, type, contents, isPub));	
}

int main(){
	input();
	header();
	for(int i = 0; i < vars.size(); ++i){
		addVar(i);
	}
	footer();
	return 0;
}
