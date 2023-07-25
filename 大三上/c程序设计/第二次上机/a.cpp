#include <stdio.h>

int main(int argc, char const *argv[])
{
	int i,j;
	int num[11] = {0};
	num[1] = 1;
	for (int i = 1; i <= 10; ++i)
	{
		for(int j = i;j >= 1;j--){
			if(j == 1 || j == i){
				num[j] = 1;
				printf("%4d",num[j]);
			}else{
				num[j] = num[j - 1] + num[j];
				printf("%4d",num[j]);
			}
		}
		printf("\n");
	}
}