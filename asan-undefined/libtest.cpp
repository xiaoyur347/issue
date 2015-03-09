#include <stdio.h>
void print(int *pBuf, int size) {
	for (int i = 0; i < size; ++i)
	{
		printf("%d ", pBuf[i]);
	}
	printf("\n");
}

