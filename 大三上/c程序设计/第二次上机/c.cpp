#include <stdio.h>
#include <string.h>

int strcmp(char * a,char * b);
int main(int argc, char const *argv[])
{
	char str1[10] = "ABC";
	char str2[10] = "ABC";

	printf("%d\n",strcmp(str1,str2));
	
	return 0;
}

int strcmp(char * a,char * b){
	int ans;
	for(int i = 0;i < strlen(a);i++){
			ans = a[i] - b[i];
			if(ans == 0)
				continue;
			else
				return ans;
	}
	return 0;
}