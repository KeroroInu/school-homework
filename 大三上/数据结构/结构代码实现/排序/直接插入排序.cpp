#include <stdio.h>

int main(int argc, char const *argv[])
{
	int a[8] = {10,5,25,8,50,30,40,20};
	int i,j,x;
	for(i = 1;i < 8;i++){
		if(a[i] < a[i - 1]){
			x = a[i];
			for(j = i - 1;x < a[j];j--)
				a[j + 1] = a[j];
			a[j + 1] = x;
		}
		printf("第%d趟排序后的结果为:\n",i);
		for(j = 0;j < 8;j++)
			printf("%5d",a[j]);
		printf("\n");
	}
	printf("\n直接插入排序后的结果:\n");
	for(i = 0;i < 8;i++)
		printf("%5d",a[i]);
	printf("\n");
	return 0;
}