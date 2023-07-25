#include <stdio.h>
#include <stdlib.h>

#define TRUE 		  1
#define	FALSE		  0
#define OK 			  1
#define ERROR 		  0
#define INFEASIBLE	  -1
#define OVERFLOW	  -2
#define ElemType int
#define Status int

typedef struct LNode
{
	ElemType data;
	LNode * next;
}LNode,* LinkList;

//函数声明
Status InitLinkList_L(LinkList &L);
Status ListInsert_L(LinkList &L,int i,ElemType e);
void ListMerge_L(LinkList &La,LinkList &Lb,LinkList &Lc);
void ListCreate_L(LinkList &L,int n);
Status LinkShow_L(LinkList &L);

int main(){
	LinkList L1,L2,L3;
	InitLinkList_L(L1);
	InitLinkList_L(L2);
	InitLinkList_L(L3);

	for(int i = 1;i <= 2;i++){
		int num;
		printf("创建第%d个链表的长度:",i);
		scanf("%d",&num);
		switch(i){
		case 1:ListCreate_L(L1,num);break;
		case 2:ListCreate_L(L2,num);break;
		default:return ERROR;
		}
	}
	printf("链表合成:");
	ListMerge_L(L1,L2,L3);
	LinkShow_L(L3);
}


//基本函数
//链表初始化
Status InitLinkList_L(LinkList &L){
	L = (LinkList)malloc(sizeof(LNode));
	if(!L->data)
		return ERROR;
	L->next = NULL;
	return OK;
}

//链表的插入
Status ListInsert_L(LinkList &L,int i,ElemType e){
	LinkList p = L;
	ElemType j = 0;
	while(p->next && j < i - 1){
		p = p->next;
		j++;
	}
	if(!(p->next) || j > i - 1)
		return ERROR;
	LinkList s = (LinkList)malloc (sizeof(LNode));
	s->data = e;
	s->next = p->next;
	p->next = s;
	return OK;
}

//链表的合并
void ListMerge_L(LinkList &La,LinkList &Lb,LinkList &Lc){
	LinkList pa = La->next;
	LinkList pb = Lb->next;
	LinkList pc;
	pc = Lc = La;
	while(pa && pb){
		if(pa->data <= pb->data){
			pc->next = pa;
			pc = pa;
			pa = pa->next;
		}else{
			pc->next = pb;
			pc = pb;
			pb = pb->next;
		}
	}
	pc->next = pa?pa:pb;
	free(Lb);
}

//功能函数
//创建链表
void ListCreate_L(LinkList &L,int n){
	InitLinkList_L(L);
	LinkList tail;
	tail = (LinkList)malloc(sizeof(LNode));
	tail = L;
	for(int i = 1;i <=n;i++){
		LinkList p = (LinkList)malloc(sizeof(LNode));
		printf("输入第%d个结点的数值:",i);
		scanf("%d",&p->data);				
		tail->next = p;
		tail = p;	
	}
}

//遍历链表
Status LinkShow_L(LinkList &L){
	LinkList p = L->next;
	while(p){
		printf("%d ",p->data);
		p = p->next;
	}
	return OK;
}














