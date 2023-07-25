 #include"c1.h"
 #define MAX_NAME 5 // 顶点字符串的最大长度+1
 #define MAX_INFO 20 // 相关信息字符串的最大长度+1
 typedef int VRType;
 typedef char InfoType;
 typedef char VertexType[MAX_NAME];
 

 #define INFINITY INT_MAX // 用整型最大值代替∞
 #define MAX_VERTEX_NUM 26 // 最大顶点个数
 enum GraphKind{DG,DN,UDG,UDN}; // {有向图,有向网,无向图,无向网}
 typedef struct
 {
   VRType adj; // 顶点关系类型。对无权图，用1(是)或0(否)表示相邻否；对带权图，则为权值
   InfoType *info; // 该弧相关信息的指针(可无)
 }ArcCell,AdjMatrix[MAX_VERTEX_NUM][MAX_VERTEX_NUM]; // 二维数组
 struct MGraph
 {
   VertexType vexs[MAX_VERTEX_NUM]; // 顶点向量
   AdjMatrix arcs; // 邻接矩阵
   int vexnum,arcnum; // 图的当前顶点数和弧数
   GraphKind kind; // 图的种类标志
 };


int LocateVex(MGraph G,VertexType u)
 { // 初始条件：图G存在，u和G中顶点有相同特征
   // 操作结果：若G中存在顶点u，则返回该顶点在图中位置；否则返回-1
   int i;
   for(i=0;i<G.vexnum;++i)
     if(strcmp(u,G.vexs[i])==0)
       return i;
   return -1;
 }

 // 邻接矩阵存储表示
         
 typedef int PathMatrix[MAX_VERTEX_NUM][MAX_VERTEX_NUM]; // 路径矩阵，二维数组
 typedef int ShortPathTable[MAX_VERTEX_NUM]; // 最短距离表，一维数组

void CreateDN(MGraph &G)
 { // 采用数组(邻接矩阵)表示法，构造有向网G
   int i,j,k,w,IncInfo;
   char s[MAX_INFO];
   VertexType va,vb;
   printf("请输入有向网G的顶点数,弧数,弧是否含其它信息(是:1,否:0): ");
   scanf("%d%d%d",&G.vexnum,&G.arcnum,&IncInfo);
   printf("请输入%d个顶点的值(<%d个字符):\n",G.vexnum,MAX_NAME);
   for(i=0;i<G.vexnum;++i) // 构造顶点向量
     scanf("%s",G.vexs[i]);
   for(i=0;i<G.vexnum;++i) // 初始化邻接矩阵
     for(j=0;j<G.vexnum;++j)
     {
       G.arcs[i][j].adj=INFINITY; // 网
       G.arcs[i][j].info=NULL;
     }
   printf("请输入%d条弧的弧尾 弧头 权值(以空格作为间隔): \n",G.arcnum);
   for(k=0;k<G.arcnum;++k)
   {
     scanf("%s%s%d%*c",va,vb,&w);  // %*c吃掉回车符
     i=LocateVex(G,va);
     j=LocateVex(G,vb);
     G.arcs[i][j].adj=w; // 有向网
     if(IncInfo)
     {
       printf("请输入该弧的相关信息(<%d个字符): ",MAX_INFO);
       scanf("%s",s);
       w=strlen(s);
       if(w)
       {
         G.arcs[i][j].info=(char*)malloc((w+1)*sizeof(char)); // 有向
         strcpy(G.arcs[i][j].info,s);
       }
     }
   }
   G.kind=DN;
 }

 void Display(MGraph G)
 { // 输出邻接矩阵存储表示的图G
   int i,j;
   char s[10];
   switch(G.kind)
   {
     case DG: strcpy(s,"有向图");
              break;
     case DN: strcpy(s,"有向网");
              break;
     case UDG:strcpy(s,"无向图");
              break;
     case UDN:strcpy(s,"无向网");
   }
   printf("%d个顶点%d条边或弧的%s。顶点依次是: ",G.vexnum,G.arcnum,s);
   for(i=0;i<G.vexnum;++i) // 输出G.vexs
     printf("%s ",G.vexs[i]);
   printf("\nG.arcs.adj:\n"); // 输出G.arcs.adj
   for(i=0;i<G.vexnum;i++)
   {
     for(j=0;j<G.vexnum;j++)
       printf("%11d",G.arcs[i][j].adj);
     printf("\n");
   }
   printf("G.arcs.info:\n"); // 输出G.arcs.info
   printf("顶点1(弧尾) 顶点2(弧头) 该边或弧的信息：\n");
   for(i=0;i<G.vexnum;i++)
     if(G.kind<2) // 有向
     {
       for(j=0;j<G.vexnum;j++)
         if(G.arcs[i][j].info)
           printf("%5s %11s     %s\n",G.vexs[i],G.vexs[j],G.arcs[i][j].info);
     } // 加括号为避免if-else对配错
     else // 无向,输出上三角
       for(j=i+1;j<G.vexnum;j++)
         if(G.arcs[i][j].info)
           printf("%5s %11s     %s\n",G.vexs[i],G.vexs[j],G.arcs[i][j].info);
 }


 void ShortestPath_DIJ(MGraph G,int v0,PathMatrix P,ShortPathTable D)
 { // 用Dijkstra算法求有向网G的v0顶点到其余顶点v的最短路径P[v]及带权长度
   // D[v]。若P[v][w]为TRUE，则w是从v0到v当前求得最短路径上的顶点。
   // final[v]为TRUE当且仅当v∈S，即已经求得从v0到v的最短路径 算法7.15
   int v,w,i,j,min;
   Status final[MAX_VERTEX_NUM]; // 辅助矩阵，为真表示该顶点到v0的最短距离已求出，初值为假
   for(v=0;v<G.vexnum;++v)
   {
     final[v]=FALSE; // 设初值
     D[v]=G.arcs[v0][v].adj; // D[]存放v0到v的最短距离，初值为v0到v的直接距离
     for(w=0;w<G.vexnum;++w)
       P[v][w]=FALSE; // 设P[][]初值为FALSE，没有路径
     if(D[v]<INFINITY) // v0到v有直接路径
       P[v][v0]=P[v][v]=TRUE; // 一维数组p[v][]表示源点v0到v最短路径通过的顶点
   }
   D[v0]=0; // v0到v0距离为0
   final[v0]=TRUE; // v0顶点并入S集
   for(i=1;i<G.vexnum;++i) // 其余G.vexnum-1个顶点
   { // 开始主循环，每次求得v0到某个顶点v的最短路径，并将v并入S集
     min=INFINITY; // 当前所知离v0顶点的最近距离，设初值为∞
     for(w=0;w<G.vexnum;++w) // 对所有顶点检查
       if(!final[w]&&D[w]<min) //在S集之外的顶点中找离v0最近的顶点，并将其赋给v，距离赋给min
       {
   v=w;
   min=D[w];
       }
     final[v]=TRUE; // 将v并入S集
     for(w=0;w<G.vexnum;++w) // 根据新并入的顶点，更新不在S集的顶点到v0的距离和路径数组
       if(!final[w]&&min<INFINITY&&G.arcs[v][w].adj<INFINITY&&(min+G.arcs[v][w].adj<D[w]))
       { // w不属于S集且v0→v→w的距离＜目前v0→w的距离
         D[w]=min+G.arcs[v][w].adj; // 更新D[w]
   for(j=0;j<G.vexnum;++j) // 修改P[w]，v0到w经过的顶点包括v0到v经过的顶点再加上顶点w
     P[w][j]=P[v][j];
   P[w][w]=TRUE;
       }
   }
 }

 int  main()
 {
   int i,j;
   MGraph g;
   PathMatrix p; // 二维数组，路径矩阵
   ShortPathTable d; // 一维数组，最短距离表
   CreateDN(g); // 构造有向网g
   Display(g); // 输出有向网g
   ShortestPath_DIJ(g,0,p,d);//以g中位置为0的顶点为源点，球其到其余各顶点的最短距离。存于d中
   printf("最短路径数组p[i][j]如下:\n");
   for(i=0;i<g.vexnum;++i)
   {
     for(j=0;j<g.vexnum;++j)
       printf("%2d",p[i][j]);
     printf("\n");
   }
   printf("%s到各顶点的最短路径长度为：\n",g.vexs[0]);
   for(i=0;i<g.vexnum;++i)
     if(i!=0)
       printf("%s-%s:%d\n",g.vexs[0],g.vexs[i],d[i]);
       return 0;
 }