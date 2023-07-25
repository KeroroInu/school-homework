#include <bits/stdc++.h>

using namespace std;

#define Status int
#define ERROR 0
#define OK 1
//定长顺序存储
#define MAXSTRLEN 255
typedef unsigned char SString[MAXSTRLEN + 1];//0号单元存放串的长度
typedef char myString[MAXSTRLEN];//正常数组

void Traversal(SString S);
bool Concat(SString &T,SString S1,SString S2);
Status SubString(SString &Sub,SString S,int pos,int len);
Status Index(SString S,SString T,int pos);
Status mate(myString B,myString A,int pos);

int main(int argc, char const *argv[])
{
	myString t = "abcababcabaabcba",p = "abcabaa";
	printf("%d",mate(t,p,1));
}

//字符串遍历
void Traversal(SString S){
	for(int i = 0;i <= S[0];i++){
		printf("%-2d",S[i]);
	}
}
//串联接
bool Concat(SString &T,SString S1,SString S2){
	bool uncut;
	//用T返回由S1和S2联接而成新串，若未截断返回TURE否则FALSE
	if(S1[0] + S2[0] <= MAXSTRLEN){//未截断
		for (int i = 1; i <= S1[0]; ++i)
		{
			T[i] = S1[i];
		}
		for(int i = 1; i <= S2[0];++i){
			T[S1[0] + i] = S2[i];
		}
		T[0] = S1[0] + S2[0];
		uncut = true;
	}else if(S1[0] < MAXSTRLEN){
		for (int i = 1; i <= S1[0]; ++i)
		{
			T[i] = S1[i];
		}
		for (int i = 1; i <= MAXSTRLEN - S1[0]; ++i)
		{
			T[S1[0] + i] = S2[i];
		}
		T[0] = MAXSTRLEN;
		uncut = false;
	}else{
		for(int i = 1;i <= MAXSTRLEN;i++){
			T[i] = S1[i];
		}
		uncut = false;
	}
	return uncut;
}

//求子串
Status SubString(SString &Sub,SString S,int pos,int len){
	//用sub返回串S的第pos个字符起长度为len的子串
	//其中，i ≤ pos ≤ StrLenth(S) 且 0 ≤ len ≤ StrLength(S) - pos + 1
	if(pos < 1 || pos > S[0] || len < 0 || len > S[0] - pos + 1)
		return ERROR;
	for (int i = 1; i <= len; ++i)
	{
		Sub[i] = S[pos++];
	}
	Sub[0] = len;
	return OK;
}

//求子串位置(1为起始,0存储字符串字数)
Status Index(SString S,SString T,int pos){
	//返回子串T在主串S中第pos个字符之后的位置。若不存在，则函数值为0
	//其中，T非空，1≤pos≤StrLength(S)
	int i = pos;
	int j = 1;
	while(i <= S[0] && j <= T[0]){
		if(S[i] == T[j]){//继续比较后继字符
			++i;
			++j;
		}else{//指针后退重新开始匹配
			i = i - j + 2;
			j = 1;
		}
	}
	if(j > T[0])
		return i - T[0];
	else return 0;
}

//正常BF算法
Status mate(char * B,char *A,int pos){
	int i = pos - 1,j = 0;
	while(i < strlen(B) && j < strlen(A)){
		if(B[i] == A[j]){
			i++;
			j++;
		}else{
			i = i - j + 1;
			j = 0;
		}
	}
	if(j == strlen(A)){
		return i - strlen(A) + 1;
	}else
	return 0;
}










