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
#define ElemType int
#define Status int

typedef struct 
{
	ElemType * elem;
	int  length;
	int  listsize;
}SqList;


//***************************基本操作函数*******************************//
//初始化顺序表函数，构造一个空的顺序表
Status InitList(SqList &L){
	L.elem = (ElemType *)malloc(LIST_INT_SIZE * sizeof(ElemType));
	if(!L.elem)
		return ERROR;
	L.length = 0;
	L.listsize = LIST_INT_SIZE;
	return OK;
}
//创建顺序表函数，初始化前n个数据
Status CreateList(SqList &L,int n){
	if(n < 0 || n > LIST_INT_SIZE)
		return FALSE;
	for(int i = 0;i < n;i++){
		printf("请输入第%d个数:",i + 1);
		scanf("%d",&L.elem[i]);
		L.length++;
	}
	return OK;
}
//插入函数 位置i插入数据i及之后元素后移 1 ≤ i ≤ length + 1
Status InsertList(SqList &L,int i,ElemType e){
	if(i < 1 || i > L.length + 1){
		printf("位置无效！\n");
		return ERROR;
	}
	if(L.length >= LIST_INT_SIZE){
		printf("存储空间已满!");
		ElemType * newbase = (ElemType *)realloc(L.elem,(L.listsize + LISTINCREMENT) * sizeof(ElemType));
		if(!newbase) 
			return ERROR;
		L.elem = newbase;
		L.listsize += LISTINCREMENT;
	}
	for(int j = L.length;j >= i;j--){
		L.elem[j] = L.elem[j - 1];
	}
	L.elem[i - 1] = e;
	L.length++;
	return OK;
}

//删除函数 删除位置i的元素 i之后的元素依次前移
Status ListDelete(SqList &L,int i){
	if(i < 1 || i >L.length){
		printf("位置无效！\n");
		return ERROR;
	}
	for(int j = i;j <= L.length - 1;j++){
		L.elem[j - 1] = L.elem[j];
	}
	L.length--;
	return OK;
}

//查找函数 按位置从小到大查找第一个值等于e的元素并返回位置
Status LocateElem(SqList L,ElemType e){
	for(int i = 0;i < L.length;i++){
		if(L.elem[i] == e)
			return i + 1;
	}
	return OK;
}

//清空顺序表
void ClearList(SqList &L){
	L.length = 0;
}

//***************************功能函数*******************************//
//输出功能函数 按位置从小到大输出顺序表所有元素
void PrintList(SqList &L){
	printf("当前顺序表所有元素:");
	for(int i = 0;i < L.length;i++){
		printf("%d ",L.elem[i]);
	}
	printf("\n");
}

//创建顺序表函数
void Create(SqList &L){
	InitList(L);
	int n;
	Status flag;
	L.length = 0;
	printf("请输入要创建的顺序表长度(>1):");
	scanf("%d",&n);
	printf("请输入%d个数(空格隔开):\n",n);
	flag = CreateList(L,n);
	if(flag){
		printf("创建成功!\n");
		PrintList(L);
	}else{
		printf("输入长度非法!\n");
	}
}

//插入功能函数 调用InsertList完成顺序表插入 调用PrintList函数显示插入成功后的结果
void Insert(SqList &L){
	int place;
	ElemType e;
	Status flag;
	printf("请输入要插入的位置(从1开始)及元素(空格隔开):\n");
	scanf("%d %d",&place,&e);
	flag = InsertList(L,place,e);
	if(flag){
		printf("插入成功!\n");
		PrintList(L);
	}else{
		printf("插入失败!\n");
	}
}

//删除功能函数 调用ListDelete函数完成顺序表的删除 调用PrintList函数显示插入成功后的结果
void Delete(SqList &L){
	int place;
	Status flag;
	printf("请输入要删除的位置(从1开始):\n");
	scanf("%d",&place);
	flag = ListDelete(L,place);
	if(flag){
		printf("删除成功!\n");
		PrintList(L);
	}else{
		printf("删除失败!\n");
	}
}
//查找功能函数 调用locateElem查找函数
void Search(SqList L){
	ElemType e;
	Status flag;
	printf("请输入要查找的值:\n");
	scanf("%d",&e);
	flag = LocateElem(L,e);
	if(flag){
		printf("该元素位置为:%d",flag);
	}else{
		printf("未找到该元素!\n");
	}
}

void menu()
{
	printf("********1.创建                        2.插入*********\n");
	printf("********3.删除                        4.查找*********\n");
	printf("********5.输出                        6.清空*********\n");
	printf("********7.退出                              *********\n");
}

int main(){
	SqList L;
	int choice;
	while(1){
		menu();
		printf("请输入菜单序号:");
		scanf("%d",&choice);
		if(choice == 7)break;
		switch(choice){
		case 1:Create(L);break;
		case 2:Insert(L);break;
		case 3:Delete(L);break;
		case 4:Search(L);break;
		case 5:PrintList(L);break;
		case 6:ClearList(L);break;
		default:printf("输入错误!\n");
		}
	}
	return 0;
}