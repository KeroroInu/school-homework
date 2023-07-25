#include <stdio.h>

int main(){
	double n = 100,sum;
	int count = 0;
	while(n){
		n = n/2;
		sum+=n;
		count++;
		if(count == 10)
			goto	L1;
	}
L1:	printf("%f",sum);
}