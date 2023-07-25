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

Status InitList_L(LinkList &L){
	L = (LinkList)malloc(sizeof(LNode));
	//L = new LNode;	//c++
	if(!L)
		return ERROR;
	L->next = NULL;
	return OK;
}//InitList_L

Status ListInsert_L(LinkList &L,int i,ElemType e){
	//在带头结点的单链线性表L中第i个位置之前插入元素e
	LinkList p = L;
	ElemType j = 0;
	while(p && j < i - 1){
		p = p->next;
		++j;
	}//寻找第i - 1个结点
	if(!p || j > i - 1)
		return ERROR;
	LinkList s = (LinkList)malloc (sizeof(LNode));
	s->data = e;
	s->next = p->next;
	p->next = s;
	return OK;
}//ListInsert_L

Status ListDelete_L(LinkList &L,int i,ElemType &e){
	//在带头结点的单链线性表L中，删除第i歌元素，并由e返回其值
	LinkList p = L;
	ElemType j = 0;
	while(p->next && j < i - 1){
		p = p->next;
		++j;
	}//寻找第i个结点，并令p指向其前驱
	if(!(p->next) || j > i - 1)
		return ERROR;						//删除位置不合理
	LinkList q = p->next; p->next = q->next;//删除并释放结点
	e = p->data;
	free(q);
	return OK;
}//ListDelete_L(

Status GetElem_L(LinkList &L,int i,ElemType &e){
	//L为带头结点的单链表的头指针
	//当第i个元素存在时，其赋值给e并返回OK，否则返回ERROR
	LinkList p = L->next;
	ElemType j = 1;
	while(p && j < i){
		p = p->next;
		++j;
	}
	if(!p || j > i)
		return ERROR;
	e = p->data;
	return OK;
}//GetElem_L

void CreateList_L(LinkList &L,int n){
	//逆位序输入n个元素的值,建立代表头结点的单链线性表
	InitList_L(L);
	// L = (LinkList)malloc(sizeof(LNode));
	// L->next = NULL;//先建立一个带头结点的单链表
	for(int i = 0;i < n;i++){
		LinkList p = (LinkList)malloc(sizeof(LNode));//生成新结点
		scanf("%d",&p->data);				//输入元素值
		p->next = L->next;L->next = p;		//插入到表头
	}
}//CreateList_L

void MergeList_L(LinkList &La,LinkList &Lb,LinkList &Lc){
	//已知单链表线性表La和Lb的元素按值非递减排序
	//归并La和Lb得到新的单链线性表Lc,Lc的元素也按值非递减排序
	LinkList pa = La->next;
	LinkList pb = Lb->next;
	LinkList pc;
	pc = Lc = La;//用La的头结点作为Lc的头结点
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
}//MergeList_L


Status ShowList_L(LinkList &L){
	LinkList p = L->next;
	ElemType j = 1;
	while(p){
		printf("%d %d\n",j,p->data);
		j++;
		p = p->next;
	}
	return OK;
}//ShowList_L


int main(){
	LinkList l1;
	printf("%d",InitList_L(l1));
}
