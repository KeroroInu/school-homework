#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SElemtype char
#define Status int
#define OK 1
#define ERROR 0

typedef struct
{
	SElemtype str[100];
	int top;
}SqStack;

Status InitStack(SqStack &S);
Status Push(SqStack &S,SElemtype e);
Status Pop(SqStack &S);
void brackets();
Status panduan(char brackets[],SqStack &S);

int main(int argc, char const *argv[])
{
	brackets();
	return 0;
}

Status InitStack(SqStack &S){
	S.top = 0;
	return OK;
}

Status Push(SqStack &S,SElemtype e){
	if(S.top >= 100){
		return ERROR;
	}
	S.str[S.top++] = e;
	return OK;
}


Status Pop(SqStack &S){
	if(S.top == 0)
		printf("栈空");
	S.top--;
	return OK;
}

void brackets(){
	SqStack S;
	InitStack(S);
	char brackets[100];
	printf("输入括号:");
	scanf("%s",brackets);
	if(panduan(brackets,S))
		printf("ok");
	else
		printf("wrong");
}

Status panduan(char brackets[],SqStack &S){
	for (int i = 0; i < strlen(brackets); ++i)
	{
		if(brackets[i] == '(' || brackets[i] == '['){
			Push(S,brackets[i]);
		}else{
			if(S.top == 0)
			{
				return ERROR;
			}else if(S.str[S.top - 1] == '(' && brackets[i] == ')'){
				Pop(S);
			}else if(S.str[S.top - 1] == '[' && brackets[i] == ']'){
				Pop(S);
			}
		}
	}
	if (S.top != 0)
	{
		return ERROR;
	}else
		return OK;
}













