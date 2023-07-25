#include <stdio.h>

int main(){
	int j = 1,k = 5;
	for(int i = 3;i >= 0;i--){
		int a = i,b = j;
		while(a){
			printf(" ");
			a--;
		}
		while(b){
			printf("*");
			b--;
		}
		j += 2;
		printf("\n");
	}
	for(int i = 1;i <= 3;i++){
		int a = i; int b = k;
		while(a){
			printf(" ");
			a--;
		}
		while(b){
			printf("*");
			b--;
		}
		k -= 2;
		printf("\n");
	}
}