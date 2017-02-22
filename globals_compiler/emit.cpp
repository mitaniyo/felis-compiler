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
		fprintf(stderr, "___ %d\n", val & ((1 << 16) - 1));
	}
}

void fli(int id, float f){
	pair<int, int> bits = getbits(f);
	printf("lui r24 %d\n", bits.first);
	printf("addi r24 r24 %d\n", bits.second);
	fprintf(stderr, "___ %d\n", bits.second);
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
	bool isVec;
	string name;
	int len;
	int type;
	string obj;
	bool isPub;
	vector<pair<int, string> > contents;
	Extvar(){}
	Extvar(bool flg1, string n, int l, int t, string o, bool flg2):isVec(flg1), name(n), len(l), type(t), obj(o), isPub(flg2){}
	Extvar(bool flg1, string n, vector<pair<int, string> > v, bool flg2):isVec(flg1), name(n), contents(v), isPub(flg2){}
};

vector<Extvar> vars;

void addVec(int id, int adr = -1){
	string name = vars[id].name;
	int len = vars[id].len;
	int type = vars[id].type;
	string obj = vars[id].obj;
	bool isPub = vars[id].isPub;
	//if(len == 0) len++;
	if(type == 0 || adr != -1){
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
		if(positions.count(obj) == 0){
			fprintf(stderr, "%s: no such object\n", obj.c_str());
			exit(0);
		}
		int val = positions[obj];
//		fprintf(stderr, "adr = %d\n", val);
//		fflush(stderr);
		addVec(id, val);
	}else if(type == 3){
		char buf[100];
		int i;
		for(int i = 0; i < obj.size(); ++i){
			if(obj[i] == '(') obj[i] = ' ';
			else if(obj[i] == ')') obj[i] = ' ';
			else if(obj[i] == '.') obj[i] = ' ';
		}
		sscanf(obj.c_str(), "%s%d", buf, &i);
		fprintf(stderr, "%s\n", obj.c_str());
		string v = buf;
		if(positions.count(v) == 0){
			fprintf(stderr, "%s: no such vector\n", v.c_str());
			exit(0);
		}
		int val = positions[v];
		printf("%s:\n", ("generate_" + name).c_str());
		li(1, len);
		li(2, val);
		printf("lw r2 r2 %d\n", i);
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
	}
}

void addTuple(int id){
	string name = vars[id].name;
	vector<pair<int, string> > vec = vars[id].contents;
	bool isPub = vars[id].isPub;
	printf("%s:\n", ("generate_" + name).c_str());
	// reg_hp = r27
	for(int i = 0; i < vec.size(); ++i){
		int t = vec[i].first;
		string obj = vec[i].second;
		if(t == 0){
			li(1, atoi(obj.c_str()));
			printf("sw r1 r27 %d\n", i * 4);
		}else if(t == 1){
			float val;
			sscanf(obj.c_str(), "%f", &val);
			fli(0, val);
			printf("swc1 f0 r27 %d\n", i * 4);
		}else{
			if(positions.count(obj) == 0){
				fprintf(stderr, "%s: no such object\n", obj.c_str());
				exit(0);
			}
			int adr = positions[obj];
			li(1, adr);
			printf("sw r1 r27 %d\n", i * 4);
		}
	}

	positions[name] = hp;
	hp += vec.size() * 4;
	printf("addi r27 r27 %d\n", vec.size() * 4);

	string nxtName = id + 1 < vars.size() ? vars[id + 1].name : "return";
	printf("j %s\n", ("generate_" + nxtName).c_str());

	if(!isPub) return;

	printf("%s:\n", ("min_caml_load_" + name).c_str());
	li(1, hp - vec.size() * 4);
	printf("jr r31\n");
}

void addVar(int i){
	fprintf(stderr, "add %d\n", i);
	fflush(stderr);
	if(vars[i].isVec) addVec(i);
	else addTuple(i);
}

bool input(){
	string name;
	int len;
	int type;
	string contents;
	bool isPub;
	int x;
	char buf[100];
	int ret = scanf("%s", buf);
	if(ret == -1) return false;
	if(buf[0] == 'v'){
		scanf("%s", buf);
		name = buf;
		scanf("%d%d", &len, &type);
		scanf("%s", buf);
		contents = buf;
		scanf("%d", &x);
		isPub = (x != 0);
		vars.push_back(Extvar(true, name, len, type, contents, isPub));
	} else {
		scanf("%s", buf);
		name = buf;
		int sz;
		scanf("%d", &sz);
		vector<pair<int, string> > vec;
		for(int i = 0; i < sz; ++i){
			int t;
			string obj;
			scanf("%d%s", &t, buf);
			obj = buf;
			vec.push_back(make_pair(t, obj));
		}
		scanf("%d", &x);
		isPub = (x != 0);
		vars.push_back(Extvar(false, name, vec, isPub));
	}
	return true;
}

int main(){
	while(true){
		bool ret = input();
		if(!ret) break;
	}
	fprintf(stderr, "input ok %d objects\n", vars.size());
	fflush(stderr);
	header();
	for(int i = 0; i < vars.size(); ++i){
		addVar(i);
	}
	footer();
	return 0;
}
