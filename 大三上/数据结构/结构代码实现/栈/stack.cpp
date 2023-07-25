#include <stdio.h>
#include <stdlib.h>

#define TRUE 		  1
#define	FALSE		  0
#define OK 			  1
#define ERROR 		  0
#define INFEAsIBLE	  -1
#define OVERFLOW	  -2
#define STACK_INT_SIZE 100									
#define STACKINCREMENT 10  									
#define Status int
#define SElemType int

typedef struct  
{
	SElemType * top;
	SElemType * base;
	int stacksize;
}Sqstack;

Status InitStack(Sqstack &S){
	//创建一个空栈S
	S.base = (SElemType *)malloc(STACK_INT_SIZE * sizeof(SElemType));
	if(!S.base)exit(OVERFLOW);//存储分配失败
	S.top = S.base;
	S.stacksize = STACK_INT_SIZE;
	return OK;
}//InitStack

Status GetTop(Sqstack S,SElemType e){
	//若栈不空，则用e返回S的栈顶元素，并返回OK，否则返回ERROR
	if(S.top == S.base)return ERROR;
	e = *(S.top - 1);
	return OK;
}//GetTop



Status Push(Sqstack &S,SElemType e){
	//插入元素e为新的栈顶元素
	if(S.top - S.base >= S.stacksize){//栈满，追加存储空间
		S.base = (SElemType *)realloc(S.base,(S.stacksize + STACKINCREMENT) * sizeof(SElemType));
		if(!S.base)exit(OVERFLOW);//存储分配失败
		S.top = S.base + S.stacksize;
		S.stacksize += STACKINCREMENT;
	}
	*S.top++ = e;
	return OK;
}//Push


Status Pop(Sqstack &S,SElemType &e){
	//若栈不空，则删除S的栈顶元素，用e返回其值，并返回OK，否则返回ERROR
	if(S.top == S.base)return ERROR;
	e = * --S.top;
	return OK;
}//Pop

Status StackEmpty(Sqstack &S){
	if(S.top == S.base) return TRUE;
	else return FALSE;
}


int main(){
	Sqstack s;
	InitStack(s);
	
}















