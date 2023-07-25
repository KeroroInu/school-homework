#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SElemtype char
#define Status int 
#define OVERFLOW -2
#define OK 		 1
#define ERROR    0
#define STACK_INIT_SIZE 100
#define STACKINCREMENT 10
#define N 100

typedef struct
{
	SElemtype * top;
	SElemtype * base;
	int stacksize;
}SqStack;

Status InitStack(SqStack &S);
Status Push(SqStack &S,SElemtype e);
Status Pop(SqStack &S,SElemtype &e);
Status EmptyStack(SqStack &S);
void palindromics();

int main(int argc, char const *argv[])
{
	palindromics();
	return 0;
}

//栈的初始化
Status InitStack(SqStack &S){
	S.base = (SElemtype *)malloc(STACK_INIT_SIZE * sizeof(SElemtype));
	if(!S.base)
		exit(OVERFLOW);//存储分配失败
	S.top = S.base;
	S.stacksize = STACK_INIT_SIZE;
	return OK;
}
//进栈
Status Push(SqStack &S,SElemtype e){
	if(S.top - S.base >= S.stacksize){
		S.base = (SElemtype *)realloc(S.base,(S.stacksize + STACKINCREMENT) * sizeof(SElemtype));
		S.top = S.base + S.stacksize;
		S.stacksize += STACKINCREMENT;
	}
	* S.top++ = e;
	return OK;
}
//出栈
Status Pop(SqStack &S,SElemtype &e){
	if(S.top == S.base){
		printf("栈空");
		return ERROR;
	}
	e = *--S.top;
	return OK;
}
//栈空判断
Status EmptyStack(SqStack &S){
	if(S.top - S.base == 0)
		return OK;
	else 
		return ERROR;
}
//栈顶获取
Status GetTop(SqStack &S,SElemtype e){
	if(S.top == S.base)
		return ERROR;
	e = *(S.top - 1);
	return OK;
}	
//回文判断
void palindromics(){
	SqStack S;
	InitStack(S);
	char str[N],rts[N];
	int flag;
	printf("请输入字符串:");
	scanf("%s",str);
	for (int i = 0; i < strlen(str); ++i)
	{
		Push(S,str[i]);
	}
	while(!EmptyStack(S)){
		for (int i = 0; i < strlen(str); ++i)
		{
			Pop(S,rts[i]);
		}
	}
	for (int i = 0; i < strlen(str); ++i)
	{
		if(str[i] == rts[i])
			continue;
		else
			printf("不是回文");
			flag = -1;
			break;
	}
	if(flag == 1)
		printf("是回文");
}








