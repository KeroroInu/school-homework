#include <stdio.h>

#define MaxSize 12500			//假设非零元个数的最大值为12500
#define ElemType int
#define Status int
#define ok 1
#define error 0

typedef struct 
{
	int i,j;
	ElemType v;
}Triple;

typedef struct{
	Triple data[MaxSize + 1];	//非零元三元组表，data[0]未用
	int mu,nu,tu;				//矩阵的行数，列数，非零元个数
}TSMatrix;
 

void createMatrix(TSMatrix &M);
void showMatrix(TSMatrix M);
Status FastTransposeSMatrix(TSMatrix M,TSMatrix &T);
void makeMatrix(TSMatrix M);


int main(int argc, char const *argv[])
{
	TSMatrix m,t;
	createMatrix(m);
	printf("初始数组组如下:\n");
	showMatrix(m);
	FastTransposeSMatrix(m,t);
	printf("转置数组组如下:\n");	
	showMatrix(t);
	printf("\n");
	makeMatrix(t);
	return 0;
}

void createMatrix(TSMatrix &M){
	printf("请输入矩阵的行数,列数,以及非零元素:");
	scanf("%d %d %d",&M.mu,&M.nu,&M.tu);
	printf("输入三元组对应位置元素:\n");
	for (int k = 1; k <= M.tu; ++k)
	{
		scanf("%d %d %d",&M.data[k].i,&M.data[k].j,&M.data[k].v);
	}
}

void showMatrix(TSMatrix M){
	for(int k = 1;k <= M.tu;k++){
		printf("%d %d %d\n",M.data[k].i,M.data[k].j,M.data[k].v);
	}
}

Status FastTransposeSMatrix(TSMatrix M,TSMatrix &T){
	T.mu = M.nu;
	T.nu = M.mu;
	T.tu = M.tu;

	int col,num[MaxSize],cpot[MaxSize];

	if(T.tu){
		for(col = 1;col <= M.nu;++col)
			num[col] = 0;				//将每一列的元素个数初始化为0
		for(int t = 1;t <= M.tu;++t)
			++num[M.data[t].j];			//利用num数组记录每列出现的元素个数

		cpot[1] = 1;					//利用cpot来记录从第一列开始的元素的新的下标
		for(col = 2;col <= M.nu;++col)
			cpot[col] = num[col - 1] + cpot[col - 1];//从第二列开始新的下标等同于 前一列元素个数加上上一元素的下标
		for(int p = 1;p <= M.tu;++p){
			col = M.data[p].j;			//col保存M矩阵每一元素的列码
			int q = cpot[col];			//q利用cpot记录 M中每一个列元素到T中的下标

			T.data[q].i = M.data[p].j;
			T.data[q].j = M.data[p].i;
			T.data[q].v = M.data[p].v;

			++cpot[col];				//下标加一,为添加当前同列元素作准备
		}
	}
	return ok;
}

void makeMatrix(TSMatrix m){
	int k = 1;
	for(int p = 1;p <= m.mu;p++){
		for(int q = 1;q <= m.nu;q++){
			if(m.data[k].i == p && m.data[k].j == q){
				printf("%3d",m.data[k++].v);
			}else{
				printf("%3d",0);
			}
		}
		printf("\n");
	}
}











