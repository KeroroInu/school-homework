//回文数的判断
#include <stdio.h>
#include <string.h>
#define ok 1
#define no 0

typedef char SElemType;

typedef struct 
{
	char stack[100];
	int top;
	int base;
}SqStack;

void InitStack(SqStack &S){
	S.top = S.base = 0;
}

void Push(SqStack &S,SElemType e){
	if(S.top > 100)
		printf("栈满");
	S.stack[S.top++] = e;
}

void Pop(SqStack &S,SElemType &e){
	if(S.top == 0)
		printf("栈空");
	e = S.stack[S.top - 1];
	S.top--;
}

int panlindromics(SqStack &P){
	while(P.base != P.top && (P.base) != (P.top - 1)){
		char ans;
		Pop(P,ans);
		if(P.stack[P.base++] == ans){
			continue;
		}else{
			return no;
			break;
		}
	}
	return ok;
}

void add(SqStack &P,SElemType * ch){
	for(int i = 0;i < strlen(ch);i++){
		Push(P,ch[i]);
	}
}



int main(){
	SqStack P;
	InitStack(P);
	char ch[100];
	scanf("%s",ch);
	add(P,ch);
	if(panlindromics(P))
		printf("是回文");
	else
		printf("不是回文");
	
}