#include <stdio.h>

#define MAXSIZE 1000	//待排序顺序表最大长度
typedef int KeyType;	//关键字类型为整数类型

typedef struct 
{
	KeyType key;		//关键字项
}RcdType;				//记录类型

typedef struct{
	RcdType r[MAXSIZE + 1];//r[0]闲置
	int length;			   //顺序表长度
}SqList;				   //顺序表类型

void ShellInsert(SqList &L,int dk){
	int i,j;
	//对顺序表L进行一趟增量为dk的Shell排序，dk为步长因子
	for(i = dk + 1;i <= L.length;i++)//开始将r[i]常茹有序增量子表
		if(L.r[i].key < L.r[i - dk].key){
			L.r[0] = L.r[i];	//暂存在r[0]
			for(j = i - dk;j > 0 && (L.r[0].key < L.r[j].key);j = j - dk)
				L.r[j + dk] = L.r[j];	//关键字较大的记录在子表中后移
			L.r[j + dk] = L.r[0];		//在本趟结束时将r[i]插入到正确位置
		}
}

void ShellSort(SqList &L,int dlta[],int t){
	//按增量序列dlta[0..t-1]对顺序表L作Shell排序
	for(int k = 0;k < t;k++)
		ShellInsert(L,dlta[k]);
	//增量为dlta[k]的一趟插入排序
}//ShellSort



int main(int argc, char const *argv[])
{
	SqList L;
  	int d[3]={5,3,1};
  	int i,n;
  	printf("请输入n的值，并输入n个整数:\n"); 
	scanf("%d",&n);
 	for(i=1;i<=n;i++)
    	scanf("%d",&L.r[i].key);
    L.length=n;
   
 	ShellSort(L,d,3);      //调用shel lSort
 	for(int i = 1;i <= ;i++){
 		printf("%d ",L.r[i]);
 	}
  	return 0;
}