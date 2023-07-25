#include <bits/stdc++.h>

using namespace std;

#define Status int
#define OK 1
#define ERROR 0

typedef struct
{
	char *ch;	//若是非空串，则按串长分配存储区，否则ch为NULL
	int length;	//串长度
}HString;//堆分配存储方式

//基本操作的函数原型说明
Status StrAssign(HString &T,char * chars);
int StrLength(HString S);
int StrCompare(HString S,HString T);
Status Concat(HString &T,HString S1,HString S2);
Status SubString(HString &Sub,HString S,int pos,int len);


int main(int argc, char const *argv[])
{
	char kero[] = "abcde";
	char keroro[] = "fgh";
	
	HString T,K,M,Sub;
	StrAssign(T,kero);
	StrAssign(K,keroro);
	Concat(M,T,K);
	SubString(Sub,M,3,1);
	for (int i = 0; i < Sub.length; ++i)
	{
		printf("%c ",Sub.ch[i]);
	}
	return 0;
}

Status StrAssign(HString &T,char * chars){
	//生成一个其值等于串常量chars的串T
	int i;
	char * c;	
	//if(T.ch) free(T.ch);					//释放T原有的空间
	for (i = 0,c = chars; *c ; ++i,++c);	//求chars的长度i
	if(!i){T.ch = NULL;T.length = 0;}
	else{
		if(!(T.ch = (char *)malloc(i * sizeof(char))))
			exit (OVERFLOW);
		for (int j = 0; j < i; ++j)
		{
			T.ch[j] = chars[j];
		}
		T.length = i;
	}
	return OK;
}

int StrLength(HString S){
	//返回S的元素个数，称为串的长度
	return S.length;
}

int StrCompare(HString S,HString T){
	//若S>T,则返回值>0;若S=T,则返回值=0；若S<T,则返回值<0
	for (int i = 0; i < S.length && i < T.length; ++i)
	{
		if(S.ch[i] != T.ch[i])
			return S.ch[i] - T.ch[i];
	}
	return S.length - T.length;
}

Status ClearString(HString &S){
	//将S清为空串
	if(S.ch){
		free(S.ch);
		S.ch = NULL;
	}
	S.length = 0;
	return OK;
}

Status Concat(HString &T,HString S1,HString S2){
	//用T返回由S1和S2联接而成的新串
	if(T.ch) free(T.ch);
	if(!(T.ch = (char *)malloc((S1.length + S2.length) * sizeof(char))))
		exit(OVERFLOW);
	for (int i = 0; i < S1.length; ++i)
	{
		T.ch[i] = S1.ch[i];
	}
	T.length = S1.length + S2.length;
	for (int i = S1.length,j = 0; i < T.length; ++i,++j)
	{
		T.ch[i] = S2.ch[j];
	}
	return OK;
}

Status SubString(HString &Sub,HString S,int pos,int len){
	//用Sub返回串S的第pos个字符起长度为len的子串
	//其中，1≤pos≤StrLength(S)且0≤len≤StrLength(S)-pos+1
	if(pos < 1 || pos > S.length || len < 0 || len > S.length - pos + 1)
		return ERROR;
	if(Sub.ch) free(Sub.ch);
	if(!len){Sub.ch = NULL;Sub.length = 0;}
	else{
		Sub.ch = (char *)malloc(len * sizeof(char));
		for (int i = 0; i < len; ++i)
		{
			Sub.ch[i] = S.ch[pos++ - 1];
		}
		Sub.length = len;
	}
	return OK;
}








