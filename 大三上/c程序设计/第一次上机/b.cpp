#include <stdio.h>
void three();
int main(){
	int a,b,c;
	for(int i = 100;i <= 999;i++){
		a = i%10;
		b = (i/10)%10;
		c = i/100;
		if((a*a*a + b*b*b + c*c*c) == i)
			printf("%d\n",i);
	}
	printf("--------------------------\n");
	three();
}

void three(){
	for(int i = 1;i <= 9;i++){
		for(int j = 0;j <= 9;j++){
			for(int k = 0;k <=9;k++){
				int num = i*100 + j*10 + k;
				if ((i*i*i + j*j*j + k*k*k) == num)
				{
					printf("%d\n",num);
				}
			}
		}
	}
}	