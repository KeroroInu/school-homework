#include <stdio.h>
#include <vector>
#include <queue>
using namespace std;
//问题表示
int n = 4;
//求解结果表示
int Count = 1;
struct NodeType
{
	int no;
	int row;
	vector<int>cols;
};
void dispnode(NodeType e){
	if(e.row != -1)
		printf("编号:%d,定位置(%d,%d)\n",e.no,e.row,e.cols[e.row]);
	else
		printf("编号:%d,定位置(%d,*)\n",e.no,e.row);
}
bool Valid(vector<int>cols,int i,int j){
	int k = 0;
	while(k < i){
		if((cols[k] == j) || (abs(cols[k] - j) == abs(k - i)))
			return false;
		k++;
	}
	return true;
}
void solve(){
	int i,j;
	NodeType e,e1;
	queue<NodeType>qu;
	e.no = Count++;
	e.row = -1;
	qu.push(e);
	printf(" 进队: ");dispnode(e);
	while(!qu.empty()){
		e = qu.front();qu.pop();
		printf(" 出队: ");dispnode(e);
		if(e.row == n - 1){
			printf(" 产生一个解:");
			for(i = 0;i < n;i++)
				printf("[%d,%d] ",i + 1,e.cols[i] + 1);
			printf("\n");
			return;
		}
		else{
			for(j = 0;j < n;j++){
				i = e.row + 1;
				if(Valid(e.cols,i,j)){
					e1.no = Count++;
					e1.row = i;
					e1.cols = e.cols;
					e1.cols.push_back(j);
					qu.push(e1);
					printf(" 进队子结点: ");dispnode(e1);
				}
			}
		}
	}
}
int main(int argc, char const *argv[])
{
	printf("%d皇后问题求解过程:\n",n);
	solve();
	return 0;
}













