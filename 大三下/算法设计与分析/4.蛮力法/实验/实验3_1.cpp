#include <stdio.h>
#include <vector>
#include <stack>
#include <string>
using namespace std;
int H[4] = {0, 1, 0, -1};			
int V[4] = {-1, 0, 1, 0};			
vector<vector<char> > board;		
int m;							
int n;							
void dispboard()					
{
	int m=board.size();
	int n=board[0].size();
	for(int i=0; i<m; i++)
	{
		printf("   ");
		for(int j=0; j<n;j++)
			printf("%c ",board[i][j]);
		printf("\n");
	}
}
void DFS(int i,int j)			
{
	int ni,nj;
	board[i][j]='*';				
	for (int k=0;k<4;k++)			
	{
		ni=i+V[k]; nj=j+H[k];		
		if(ni>=0 && ni<m && nj>=0 && nj<n && board[ni][nj]=='O')
		{	
			board[ni][nj]='*';		
			DFS(ni,nj);;			
		}
	}
}
void solve()						
{
	int i,j;
	if(board.empty() || board[0].empty())
		return;
	for(i=0; i<m; i++)
		for(j=0; j<n;j++)
			if(board[i][j]=='O')
			{
				if(i==0 || i==m-1 || j==0 || j==n-1)
					DFS(i,j);	
			}
	printf("DFS后的面板:\n"); dispboard();
	for(i=0; i<m; i++)
		for(j=0; j<n; j++)
		{
			if(board[i][j]=='O')		
				board[i][j]='X';
			else if(board[i][j]=='*')	
				board[i][j]='O';
        }
}
int main()
{
	string str[]={"XXXX","XOOX","XXOX","XOXX"};
	m=4; n=4;
	for (int i=0;i<m;i++)
	{
		vector<char> s;
		for (int j=0;j<n;j++)
			s.push_back(str[i][j]);
		board.push_back(s);
	}
	printf("原始面板:\n"); dispboard();
	solve();
	printf("最后面板:\n"); dispboard();
}
