#include <stdio.h>

typedef char SElemType;

typedef struct {
	char stack[100];
	int top;
}SqStack;

void InitStack(SqStack &S);
int StackEmpty(SqStack S);
int GetTop(SqStack S,SElemType &e);
void Push(SqStack &S,SElemType e);
void Pop(SqStack &S,SElemType &e);

int main(){
	
}

void InitStack(SqStack &S){
	S.top = 0;
}

int StackEmpty(SqStack S){
	if(S.top == 0){
		printf("栈为空");
		return true;
	}
	else{
		printf("栈不为空");
		return false;
	}
}

int GetTop(SqStack S,SElemType &e){
	if(S.top > 0){
		e = S.stack[S.top - 1];
		return true;
	}else{
		printf("无法获取栈顶元素");
		return false;
	}
}

void Push(SqStack &S,SElemType e){
	if(S.top > 100){
		printf("栈满!");
	}else{
		S.stack[S.top++] = e;
	}
}

void Pop(SqStack &S,SElemType &e){
	if(S.top == 0){
		printf("栈空!");
	}else{
		e = S.stack[S.top - 1];
		S.top--;
	}
}




