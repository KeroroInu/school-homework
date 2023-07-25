#include <bits/stdc++.h>

using namespace std;

#define OK 1
#define ERROR 0
#define Status int
#define CHUNKSIZE 80 		//可由用户自定义的块大小
typedef struct Chunk{
	char ch[CHUNKSIZE];
	struct Chunk * next;
}Chunk;

typedef struct{
	Chunk * head,* tail;	//串的头和尾指针
	int curlen;				//串的当前长度
}LString;

void InitString_L(LString *T);
Status StrAssign_L(LString *T,char *chars);
Status StrCopy_L(LString *T,LString S);
Status StrEmpty_L(LString S);
int StrCompare_L(LString S,LString T);
int StrLength_L(LString S);
void ClearString_L(LString *S);
void Concat_L(LString *T,LString S1,LString S2);
Status SubString_L(LString *Sub,LString S,int pos,int len);
int Index_L(LString S,LString T,int pos);
Status Replace_L(LString *S,LString T,LString V);
Status StrInsert_L(LString *S,int pos,LString T);
Status StrDelete_L(LString *S,int pos,int len);
void DestroyString_L(LString *S);
void StrPrint_L(LString S);
Status GetChar_L(LString S,char *c,int i);

int main(int argc, char const *argv[])
{
	LString *S1;
	char a[] = "hello";
	StrAssign_L(S1,a);

	return 0;
}


//初始化块链
void InitString_L(LString *T){
	T->head = NULL;
	T->tail = NULL;
	T->curlen = 0;
}

//生成一个其值等于常量chars的串T
Status StrAssign_L(LString *T,char *chars){
	int len,i,j,k,count;
	Chunk *r;

	InitString_L(T);

	len = strlen(chars);
	if(!len)
		return ERROR;

	i = len/CHUNKSIZE;
	j = len % CHUNKSIZE;
	if(j)
		i++;
	for (k = 0; k <= i; k++)
	{
		r = (Chunk *)malloc(sizeof(Chunk));
		if(!r)
			exit(OVERFLOW);
		r->next = NULL;

		if(k == 1)
			T->head = T->tail = r;
		else{
			T->tail->next = r;
			T->tail = r;
		}
		for(count = 0;count < CHUNKSIZE && count + (k - 1) * CHUNKSIZE < len ;count++)
			T->tail->ch[count] = chars[count + (k - 1) * CHUNKSIZE];
	}

	while(count < CHUNKSIZE){
		T->tail->ch[count] = '\0';
		count++;	
	}
	T->curlen = len;

	return OK;
}




















