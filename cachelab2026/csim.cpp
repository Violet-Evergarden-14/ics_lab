// student id: 2025201915
// please change the above line to your student id

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <fstream>
#include <string>

void printSummary(int hits, int misses, int evictions)
{
  printf("hits:%d misses:%d evictions:%d\n", hits, misses, evictions);
  FILE *output_fp = fopen(".csim_results", "w");
  assert(output_fp);
  fprintf(output_fp, "%d %d %d\n", hits, misses, evictions);
  fclose(output_fp);
}

void printHelp(const char *name)
{
  printf(
      "Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n"
      "Options:\n"
      "  -h         Print this help message.\n"
      "  -v         Optional verbose flag.\n"
      "  -s <num>   Number of set index bits.\n"
      "  -E <num>   Number of lines per set.\n"
      "  -b <num>   Number of block offset bits.\n"
      "  -t <file>  Trace file.\n\n"
      "Examples:\n"
      "  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n"
      "  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n",
      name, name, name);
}

class LRU {
private:
	int e;
	std::vector<int64_t> v;
	int valid_size;
public:
	static inline int hits = 0;
	static inline int misses = 0;
	static inline int evictions = 0;

	LRU(int _e): e(_e) {
		valid_size = 0;
		v = std::vector<int64_t>(_e);
	}
	void put(int64_t tag) {
		for (int i = 0; i < valid_size; i++) {
			if (tag == v[i]) {
				if (i != 0) {
					for (int j = i; j > 0; j--) v[j] = v[j - 1];
				}
				v[0] = tag; hits++; return;
			}
		}
		misses++;
		if (valid_size == e) {
			evictions++;
			for (int i = valid_size - 1; i > 0; i--) v[i] = v[i - 1];
			v[0] = tag;
		} else {
			for (int i = valid_size; i > 0; i--) v[i] = v[i - 1];
			v[0] = tag; valid_size++;
		}
	}
};

class Cache {
private:
	int s, b;
	std::vector<LRU> LRU_list;
public:
	Cache(int _s, int _e, int _b): s(_s), b(_b) {
		LRU_list = std::vector<LRU>(1 << _s, LRU(_e));
	}
	void operation(int64_t addr) {
		int64_t tag = addr >> (s + b) << (s + b);
		int idx = (addr >> b) & ~(-1 << s);
		LRU_list[idx].put(tag);
	}
};

int get_number(char s[]) {
	if (s == nullptr) return -2;
	int i = 0, res = 0, times = 1;
	while (s[i] != '\0') i++;
	for (int k = i - 1; k >= 0; k--) {
		int cur = s[k] - '0';
		if (cur < 0 || cur > 9) return -2;
		res += times * (s[k] - '0');
		times *= 10;
	}
	return res;
}

int main(int argc, char *argv[])
{
	bool verbose = false;
	int s = -1, e = -1, b = -1;
	std::string path = "";
	

	for (int i = 1; i < argc; i++) {
		if (argv[i][0] == '-') {
			if (argv[i][2] != '\0') {std::cout << "Invalid Input" << std::endl; return 1;}
			switch (argv[i][1]) {
				case 'h': printHelp(argv[0]); return 0;
				case 'v': verbose = true; break;
				case 's':
					s = get_number(argv[++i]);
					if (s == -2) {std::cout << "Invalid Input" << std::endl; return 1;}
					break;
				case 'E':
					e = get_number(argv[++i]);
					if (e == -2) {std::cout << "Invalid Input" << std::endl; return 1;}
					break;
				case 'b':
					b = get_number(argv[++i]);
					if (b == -2) {std::cout << "Invalid Input" << std::endl; return 1;}
					break;
				case 't':
					++i;
					if (argv[i] == nullptr) {std::cout << "Invalid Input" << std::endl; return 1;}
					path = argv[i]; break;
				default: std::cout << "Invalid Input" << std::endl; return 1;
			}
		}
	}
	if (s == -1 || e == -1 || b == -1 || path == "") {std::cout << "Invalid Input" << std::endl; return 1;}
	Cache cache(s, e, b);
	std::fstream fin(path);
	if (!fin) {std::cout << "Invalid Input" << std::endl; return 1;}
	std::string line;
	while (std::getline(fin, line)) {
		char op;
		int64_t addr;
		int _;
		std::sscanf(line.c_str(), " %c %lx,%d %d", &op, &addr, &_, &_);
		cache.operation(addr);
		// 我也不晓得verbose模式要输出什么（readme没写捏），就这样吧，意思一下hhh
		if (verbose == true) printSummary(LRU::hits, LRU::misses, LRU::evictions);
	}

	printSummary(LRU::hits, LRU::misses, LRU::evictions);
	return 0;
}
