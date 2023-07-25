#include <stdio.h>
#include <stdlib.h>

#define OK 			  1
#define ERROR 		  0
#define OVERFLOW	  -2
#define LIST_INT_SIZE 100									
#define LISTINCREMENT 10  								

typedef int Status;
typedef int ElemType;

typedef struct 
{
	ElemType * elem;										
	int length;												
	int listSize;	
}SqList;

//函数声明
Status InitSqList_Sq(SqList &L);
Status InsertSqList_Sq(SqList &L,int i,ElemType e);
Status MergeList_Sq(SqList La,SqList Lb,SqList &Lc);
Status CreateSqList_Sq(SqList &L,int i);
Status ShowSqList_Sq(SqList &L);




int main(){
	SqList L1,L2,L3;
	InitSqList_Sq(L1);
	InitSqList_Sq(L2);
	InitSqList_Sq(L3);
	
	for(int i = 1;i <= 2;i++){
		int num;
		printf("创建第%d个顺序表的长度:",i);
		scanf("%d",&num);
		switch(i){
		case 1:CreateSqList_Sq(L1,num);break;
		case 2:CreateSqList_Sq(L2,num);break;
		default:return ERROR;
		}
	}
	printf("顺序表合成:");
	MergeList_Sq(L1,L2,L3);
	ShowSqList_Sq(L3);

}

//基本函数
//顺序表的初始化
Status InitSqList_Sq(SqList &L){
	L.elem = (ElemType *)malloc(LIST_INT_SIZE * sizeof(ElemType));
	if(!L.elem)
		exit(OVERFLOW);
	L.length = 0;
	L.listSize = LIST_INT_SIZE;
	return OK;
}

//顺序表的插入
Status InsertSqList_Sq(SqList &L,int i,ElemType e){
	if(i < 1 || i > L.length + 1){
		return ERROR;
	}
	if(L.length >= L.listSize){
		ElemType * newbase = (ElemType *)realloc(L.elem,(L.listSize + LISTINCREMENT) * sizeof(ElemType));
		if(!newbase)
			exit(OVERFLOW);
		L.elem = newbase;
		L.listSize += LISTINCREMENT;
	}
	ElemType * q = &(L.elem[i - 1]);
	for(ElemType * p = &(L.elem[L.length - 1]);p >= q;--p)
		*(p + 1) = * p;
	* q = e;
	++L.length;
	return OK;
}

//有序顺序表的合并
Status MergeList_Sq(SqList La,SqList Lb,SqList &Lc){
	ElemType * pa = La.elem;
	ElemType * pb = Lb.elem;
	Lc.listSize = Lc.length = La.length + Lb.length;
	ElemType * pc = Lc.elem = (ElemType *)malloc(Lc.listSize * sizeof(ElemType));
	if(!Lc.elem)
		exit(OVERFLOW);
	ElemType * pa_last = La.elem + La.length - 1;
	ElemType * pb_last = Lb.elem + Lb.length - 1;
	while(pa <= pa_last && pb <= pb_last){
		if(* pa <= * pb)
			* pc++ = * pa++;
		else
			* pc++ = * pb++;
	}
	while(pa <= pa_last) *pc++ = *pa++;
	while(pb <= pb_last) *pc++ = *pb++;
	return OK;
}

//功能函数
//创建顺序表
Status CreateSqList_Sq(SqList &L,int i){
	for(int j = 1;j <= i;j++){
		int num;
		printf("请输入第%d个数:",j);
		scanf("%d",&num);
		InsertSqList_Sq(L,j,num);
	}
	return OK;
}
//遍历顺序表
Status ShowSqList_Sq(SqList &L){
	for(int i = 0;i < L.length;i++){
		printf("%d ",L.elem[i]);
	}
	printf("\n");
	return OK;
}