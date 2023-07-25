#include <bits/stdc++.h>

using namespace std;

#define MaxInt 0					//表示极大值,即♾️
#define MVNum 100						//最大顶点数
#define Status int 	
#define OK 1

//{有向图、有向网、无向图、无向网}
typedef enum {DG,DN,UDG,UDN} grapkind;
typedef char VerTexType;
typedef int ArcType;
typedef struct
{
	VerTexType vexs[MVNum];				//定点表
	ArcType arcs[MVNum][MVNum];			//邻接矩阵
	int vexnum,arcnum;					//图的当前点数和边数
	grapkind kind;
}MGraph;

int FirstAdjVex(MGraph G,int V);
int NextAdjVex(MGraph G,int V,int W);

int LocateVex(MGraph G,VerTexType v){
	for(int i = 0;i < G.vexnum;i++){
		if(v == G.vexs[i])
			return i;
	}
	return -1;
}

//邻接矩阵的创建
Status CreateUDN(MGraph &G){
	//采用邻接矩阵表示法，创建无向网G
	cin >> G.vexnum >> G.arcnum;		//输入总顶点树，总边数
	for(int i = 0;i < G.vexnum;i++){
		cin >> G.vexs[i];				//依次输入点的信息
	}

		
	for(int i = 0;i < G.vexnum;i++){	//初始化邻接矩阵，边的权值均置为极大值
		for(int j = 0;j < G.vexnum;j++){
			G.arcs[i][j] = 0;
		}
	}
	for(int k = 0;k < G.arcnum;k++){	//构造邻接矩阵
		char v1,v2;
		int w,i,j;
		cin >> v1 >> v2 >> w;			//输入一条边依附的顶点及权值
		i = LocateVex(G,v1);
		j = LocateVex(G,v2);			//确定v1和v2在G中的位置
		G.arcs[i][j] = w;				//边<v1,v2>的权值置为w
		G.arcs[j][i] = G.arcs[i][j];	//置<v1,v2>的对称变<v2,v1>的权值为w
	}
	return OK;
}

bool visited[MVNum];//访问标记数组，用于遍历时的标记

//深度优先遍历
void DFS(MGraph G,int V){
	//从顶点v出发，深度优先搜索遍历连通图G
	cout << G.vexs[V];//访问结点
	visited[V] = true;
	for(int W = FirstAdjVex(G,V);W != 0;W = NextAdjVex(G,V,W)){
		if(!visited[W])
			DFS(G,W);
	}
}

//--------------------------------------------------------------------
//打印图的顶点表
void PrintVex(MGraph G){
	for(int i = 0; i < G.vexnum;i++)
		cout << G.vexs[i] << " ";
	cout << endl;
}
//打印的图的边矩阵
void PrintEdge(MGraph G){
	for(int i = 0;i < G.vexnum;i++){
		for(int j = 0;j < G.vexnum;j++){
			cout << G.arcs[i][j] << " ";
		}
		cout << endl;
	}
}
//在图G中找V的第一个邻结点
int FirstAdjVex(MGraph G,int V){
	for(int i = 0;i < G.vexnum;i++)
		if(G.arcs[V][i].adj == 1)
			return i;
	return -1;
}

//返回v的(相对于w的)下一个邻结点
int NextAdjVex(MGraph G,int V,int W){
	for(int i = V;i < G.vexnum;i++){
		if(G.arcs[W][i] == 1 && !visited[i])
			return i;
	}
	return -1;
}
//--------------------------------------------------------------------
int main(int argc, char const *argv[])
{
	MGraph G,G1;
	CreateUDN(G);
	PrintVex(G);
	PrintEdge(G);
	DFS(G,1);

	// G1.vexnum = 3;
	// for(int i = 0;i < G1.vexnum;i++){
	// 	printf("%d:",i);
	// 	scanf("%c",&G1.vexs[i]);
	// }
	// for (int i = 0; i < G1.vexnum; ++i)
	// {
	// 	printf("%c ",G1.vexs[i]);
	// }



	return 0;
}











