#include <stdio.h>
#include <string.h>

typedef char String[100];

int Index(String,String,int);

int main(int argc, char const *argv[])
{
	String t,s;
	int pos;
	printf("输入主串:");
	gets(t);
	printf("输入子串:");
	gets(s);
	printf("从第几个字符开始匹配:");
	scanf("%d",&pos);
	if(Index(t,s,pos))
		printf("从第%d个字符开始匹配成功\n",Index(t,s,pos));
	else
		printf("匹配失败");	
	return 0;
}

//字符串匹配
int Index(String T,String S,int pos){
	int i = pos - 1;
	int j = 0;
	while(i < strlen(T) && j < strlen(S)){
		if(T[i] == S[j]){
			i++;
			j++;
		}else{
			i = i - j + 1;
			j = 0;
		}
	}
	if(j == strlen(S))
		return i - strlen(S) + 1;
	else
		return 0;
}

