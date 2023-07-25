//顺序表
#include <stdio.h>
#include <stdlib.h>

#define TRUE 		  1
#define	FALSE		  0
#define OK 			  1
#define ERROR 		  0
#define INFEAsIBLE	  -1
#define OVERFLOW	  -2

#define LIST_INT_SIZE 100									//线性表存储空间的初始分配量
#define LISTINCREMENT 10  									//线性表存储空间的分配增量

typedef int Status;
typedef int ElemType;

typedef struct
{
	ElemType * elem;										//存储空间基址
	int length;												//当前长度
	int listSize;											//当前分配的存储容量(以sizeof(ElemType)为单位)
}SqList;	

Status Cmpsame(ElemType data,ElemType e);
Status InitList_Sq(SqList &L);
Status ListInsert_Sq(SqList &L,int i,ElemType e);
Status ListDelete_Sq(SqList &L,int i,ElemType &e);
Status LocateElem_Sq(SqList L,ElemType e,Status(* compare)(ElemType,ElemType));
void MergeList_Sq(SqList La,SqList Lb,SqList &Lc);

//主函数
int main(){
	SqList L1,L2,L3;
	InitList_Sq(L1);InitList_Sq(L2);InitList_Sq(L3);
	for(int i = 1;i <= 10;i++){
		ListInsert_Sq(L1,i,i);
	}
	printf("\n%d\n",LocateElem_Sq(L1,5,Cmpsame));
	for(int i = 0;i <= L1.length - 1;i++){
		printf("%d ",L1.elem[i]);
	}
	printf("\n");
	for(int i = 1;i <= 20;i++){
		ListInsert_Sq(L2,i,i);
	}
	for(int i = 0;i <= L2.length - 1;i++){
		printf("%d ",L2.elem[i]);
	}
	printf("\n");
	MergeList_Sq(L1,L2,L3);
	for(int i = 0;i <= L3.length - 1;i++){
		printf("%d ",L3.elem[i]);
	}
}

Status Cmpsame(ElemType data,ElemType e){
	return data  == e ? TRUE:FALSE;
}

Status InitList_Sq(SqList &L){
	L.elem = (ElemType *)malloc(LIST_INT_SIZE * sizeof(ElemType));
	if(!L.elem)
		exit(OVERFLOW);										//存储分配失败
	L.length = 0;											//空表长度为0
	L.listSize = LIST_INT_SIZE;								//初始存储容量

	return OK;
}//InitList_Sq

Status ListInsert_Sq(SqList &L,int i,ElemType e){
	//在L中第i个位置之前插入新的数据元素e，L的长度加1
	if(i < 1 || i > L.length + 1)
		return ERROR;										//i值不合法
	if(L.length >= L.listSize){								//当前存储空间已满，增加分配
		ElemType * newbase = (ElemType *)realloc(L.elem,(L.listSize + LISTINCREMENT) * sizeof(ElemType));
		if(!newbase)
			exit(OVERFLOW);									//存储分配失败
		L.elem = newbase;									//新地址
		L.listSize += LISTINCREMENT;						//增加存储容量
	} 
	ElemType * q = &(L.elem[i - 1]);						//q为插入位置
	for(ElemType * p = &(L.elem[L.length - 1]);p >= q;--p)	//出入位置及之后的元素右移
		*(p + 1) = * p;
	* q = e;												//插入e
	++L.length;												//表长增长1
	return OK;
}//ListInsert_Sqs


Status ListDelete_Sq(SqList &L,int i,ElemType &e){
	//在顺序线性表中L中删除第i个元素并用e返回其值
	//i的合法值为 1 ≤ i ≤ ListLength_Sq(L)
	if((i < 1) || (i > L.length)) 
		return ERROR;										//i值不合法
	ElemType * p = &(L.elem[i - 1]);						//p为被删除元素的位置
	e = *p;													//被删除元素的值符给e
	ElemType * q = L.elem + L.length - 1;					//表尾元素的位置
	for(++p;p <= q;++p)												
		*(p - 1) = *p;										//被删除元素之后的元素左移动
	--L.length;												//表长减1
	return OK;
}//ListDelete_Sq


Status LocateElem_Sq(SqList L,ElemType e,Status(* compare)(ElemType,ElemType)){
	//在顺序线性表L中查找第1个值与e满足compare()的元素的位序
	//若找到，则返回其在L中的位序，否则返回0
	ElemType i = 1;											//i的初值为第1个元素的位序
	ElemType * p = L.elem;									//p的初值为第1个元素的存储位置
	while(i <= L.length && !compare(* p++,e))
		++i;
	if(i <= L.length)
		return i;
	else 
		return 0;
}//LocateElem_Sq


void MergeList_Sq(SqList La,SqList Lb,SqList &Lc){
	//已知顺序表线性表La和Lb的元素按值非递减排列
	//归并La和Lb得到新的顺序线性表Lc，Lc的元素也按值非递减排列
	ElemType * pa = La.elem,* pb = Lb.elem;
	Lc.listSize  = Lc.length = La.length + Lb.length;
	ElemType * pc = Lc.elem = (ElemType *)malloc(Lc.listSize * sizeof(ElemType));
	if(!Lc.elem)		
		exit(OVERFLOW);										//存储分配失败
	ElemType * pa_last = La.elem[La.length - 1];
	ElemType * pb_last = Lb.elem[Lb.length - 1];
	while(pa <= pa_last && pb <= pb_last){					//归并
		if(* pa <= * pb){
			* pc++ = * pa++;
		}
		else
			* pc++ = * pb++;
	}
	while(pa <= pa_last) * pc++ = * pa++;					//插入La的剩余元素
	while(pb <= pb_last) * pc++ = * pb++;					//插入Lb的剩余元素
}//MergeList_Sq
















