#include <stdio.h>

int main(){
	int n,count = 0,a;
	scanf("%d",&n);
	
	while(n){
		//逆序
		a = n%10;
		count++;
		printf("%d",a);
		n = n/10;
	}
	printf("\n位数为%d",count);

}