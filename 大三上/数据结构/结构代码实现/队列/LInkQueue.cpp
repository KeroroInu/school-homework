#include <bits/stdc++.h>

using namespace std;

#define TRUE 		  1
#define	FALSE		  0
#define OK 			  1
#define ERROR 		  0
#define INFEASIBLE	  -1
#define OVERFLOW	  3
#define QElemType int
#define Status int

//结点定义
typedef struct QNode
{
	QElemType data;
	struct QNode *next;
}QNode,*QueuePtr;

//单链队列定义
typedef struct{
	QueuePtr front;
	QueuePtr rear;
}LinkQueue;

//-----基本操作的函数原型说明-----
Status InitQueue(LinkQueue &Q);//创建一个空队列
Status DestroyQueue(LinkQueue &Q);//销毁队列Q，Q不在存在
Status EnQueue(LinkQueue &Q,QElemType e);//插入元素e为Q的新的队尾元素
Status DeQueue(LinkQueue &Q,QElemType &e);//删除队首元素,并用e返回

int main(){
	
}

//-----基本操作的算法描述-----
Status InitQueue(LinkQueue &Q){
	//构造一个空队列Q
	Q.front = Q.rear = (QueuePtr)malloc(sizeof(QNode));
	if(!Q.front)
		exit(OVERFLOW);//存储分配失败
	Q.front->next = NULL;
	return OK;
}

Status DestroyQueue(LinkQueue &Q){
	//销毁队列Q
	while(Q.front){
		Q.rear = Q.front->next;
		free(Q.front);
		Q.front = Q.rear;
	}
	return OK;
}

Status EnQueue(LinkQueue &Q,QElemType e){
	//插入元素e为Q的新的队尾元素
	QueuePtr p = (QueuePtr)malloc(sizeof(QNode));
	if(!p)
		exit(OVERFLOW);//存储分配失败
	p->data = e;
	p->next = NULL;
	Q.rear->next = p;
	Q.rear = p;
	return OK;
}

Status DeQueue(LinkQueue &Q,QElemType &e){
	//若队列不空，则删除Q的队头元素，用e返回其值，并返回OK
	//否则返回ERROR
	QueuePtr p = (QueuePtr)malloc(sizeof(QNode));
	if(!p)
		exit(OVERFLOW);//存储分配失败
	if(Q.front == Q.rear)
		return ERROR;
	p = Q.front->next;
	e = p->data;
	Q.front->next = p->next;
	if(Q.rear == p)
		Q.rear = Q.front;
	free(p);
	return OK;
}












