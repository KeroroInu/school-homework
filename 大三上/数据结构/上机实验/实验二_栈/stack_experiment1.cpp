#include <stdio.h>
#include <stdlib.h>

#define Status int
#define SElemtype int
#define OVERFLOW -2
#define OK		 1 
#define ERROR    0
#define TRUE	 1
#define FALSE    0
#define STACK_INIT_SIZE 100
#define STACKINCREMENT 10

typedef struct
{
	SElemtype * base;
	SElemtype * top;
	int stacksize;
}SqStack;

Status InitStack(SqStack &S);
Status Push(SqStack &S,SElemtype e);
Status Pop(SqStack &S);
Status StackEmpty(SqStack &S);
void conversion();


int main(int argc, char const *argv[])
{
	conversion();
	return 0;
}

Status InitStack(SqStack &S){
	S.base = (SElemtype *)malloc(STACK_INIT_SIZE * sizeof(SElemtype));
	if(!S.base)
		exit(OVERFLOW);
	S.top = S.base;
	S.stacksize = STACK_INIT_SIZE;
	return OK;
}


Status Push(SqStack &S,SElemtype e){
	if(S.top - S.base >= S.stacksize){
		S.base = (SElemtype *)realloc(S.base,(S.stacksize + STACKINCREMENT) * sizeof(SElemtype));
		S.top = S.base + S.stacksize;
		S.stacksize += STACKINCREMENT;
	}
	*S.top++ = e;
	return OK;
}

Status Pop(SqStack &S,SElemtype &e){
	if(S.top == S.base){
		printf("栈空");
		return ERROR;
	}
	e = *--S.top;
	return OK;
}

Status StackEmpty(SqStack &S){
	if (S.top - S.base == 0)
		return TRUE;
	else
		return FALSE;
}

void conversion(){
	SqStack S;
	SElemtype num,flag;
	InitStack(S);
	printf("输入十进制整数");
	scanf("%d",&num);
	printf("选择转换进制:\n");
	printf("1.二进制\n");
	printf("2.八进制\n");
	printf("3.十六进制\n");

L1:	scanf("%d",&flag);
	if(flag == 1 || flag == 2 || flag == 3){
	switch(flag){
		case 1:
			while(num){
				Push(S,num % 2);
				num /= 2;
			}
			break;
		case 2:
			while(num){
				Push(S,num % 8);
				num /= 8;
			}
			break;
		case 3:
			while(num){
				Push(S,num % 16);
				num /= 16;
			}
			break;
		}		
	}else{
		printf("请重新选择进制:");
		goto	L1;
	}

	while(!StackEmpty(S)){
		Pop(S,flag);
		printf("%d",flag);
	}
}









