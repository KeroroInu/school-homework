#include <stdio.h>
#include <stdlib.h>


#define OK 1
#define ERROR 0
#define INFEASIBLE -1
#define OVERFLOW -2

#define LIST_INIT_SIZE 100 //最大长度
#define LISTINCREMENT 	50 //增长长度

typedef int Status;
typedef int Elemtype;

typedef struct {
	Elemtype *elem;	//指向数据元素的基地址
	int length;		//线性表的当前长度
	int listsize;	//顺序表预留的最大空间
}SqList;			//SqList是顺序表的类型



//1.初始化操作
Status InitList(SqList &L){
	//构造一个空的线性表
	L.elem = (Elemtype*)malloc(LIST_INIT_SIZE*sizeof(Elemtype));
	if(!L.elem)exit(OVERFLOW);
	L.length = 0;
	L.listsize = LIST_INIT_SIZE;
	return OK;
}

//2.插入元素
Status ListInsert_Sq(SqList &L,int i,Elemtype e){
	//在L中第i个位置之前插入新的元素e，i的合法值为i ≤ i ≤ L.lenght + 1
	if(i < 1 || i > L.length + 1)
		return ERROR;//i值不合法
	if(L.length >= L.listsize){
		//当前存储空间已满，增加分配
		Elemtype* newbase = (Elemtype*)recalloc(L.elem,(L.listsize + LISTINCREMENT)*sizeof(Elemtype));
	}
	if(!newbase)exit(OVERFLOW);//存储分配失败
	L.elem = newbase;//新地址
	L.listsize += LISTINCREMENT;//增加存储容量
}

//3.删除操作
Status ListDelete_Sq(SqList &L,int i,Elemtype &e){
	if((i < 1) || (i > L.length))
		return ERROR;				//删除位置不合法
	p = &(L.elem[i - 1]);			//p为被删除元素的位置
	e = *p;							//被删除元素的值赋给e
	q = L.elem + L.length + 1;		//表尾元素的位置
	for(++p;p <= q;++p)
		*(p - 1) = *p;				//被删除元素之后的元素左移
	--L.length;						//表长减1
	return OK;
}//ListDelete_Sq

int main(int argc, char const *argv[])
{
	SqList L;
	InitList(L);

	return 0;
}