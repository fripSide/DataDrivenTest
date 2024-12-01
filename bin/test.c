#include <stdio.h>
#include <stdlib.h>

int add(int a, int b) {
	return a + b;
}

int main(int args, char* argv[]) {
	if (args < 3) {
		printf("Usage: test <a> <b>\n");
		return -1;
	}
	int a = atoi(argv[1]);
	int b = atoi(argv[2]);
	printf("%d\n", add(a, b));
	return 0;
}