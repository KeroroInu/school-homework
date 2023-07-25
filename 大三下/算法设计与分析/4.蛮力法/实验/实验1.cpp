# include <stdio.h>
int SQRT(int n){
	int m = 1;
	while (m * m <= n)
		m++;
	return m - 1;
}
int main(int argc, char const *argv[])
{
	printf("求解结果:\n");
	for (int n = 1; n <=20; ++n)
	{
		printf("\tSQRT(%d)=%d",n,SQRT(n));
		if(n % 2 == 0)
			printf("\n");
	}
	return 0;
}