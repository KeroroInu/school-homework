#include <stdio.h>
#define MAXN 201
int fset(int n){
	int ans = 1;
	if(n > 1)
		for(int i = 1;i <= n/2;i++)
			ans += fset(i);
	return ans;
}

int main(int argc, char const *argv[])
{
	int n = 6;
	printf("求解结果:\n");
	printf(" n = %d时半数集元素个数=%d\n",n,fset(n));
	return 0;
}