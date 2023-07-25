#include <stdio.h>
#include <vector>
#include <queue>
#include <string>
using namespace std;
//ÎÊÌâ±íÊ¾
vector<vector<char> > board;			//´æ·ÅÃæ°å
int m;									//Ãæ°åmÐÐ
int n;									//Ãæ°ånÁÐ
struct Position							//Î»ÖÃ½á¹¹Ìå
{
    int x;
    int y;
    Position(int x1,int y1): x(x1), y(y1) {} //¹¹Ôìº¯Êý
};
void dispboard()						//Êä³öÃæ°å
{
	for(int i=0; i<m; i++)
	{
		printf("   ");
		for(int j=0; j<n;j++)
			printf("%c ",board[i][j]);
		printf("\n");
	}
}
void BFS(int i,int j,int m,int n)		//¹ã¶ÈÓÅÏÈ±éÀú
{
	queue<Position *> qu;
	Position *pos = new Position(i,j);
	qu.push(pos);						//³õÊ¼Î»ÖÃ½ø¶Ó
	board[i][j]='*';					//½ø¶ÓÎ»ÖÃµÄÖµ¸ÄÎª'*',±ÜÃâÖØ¸´ËÑË÷
	while(!qu.empty())					//¶Ó²»¿ÕÑ­»·
	{
		Position *curp=qu.front();
		qu.pop();						//³ö¶ÓÎ»ÖÃcurp
		if (curp->x>0 && board[curp->x-1][curp->y]=='O')
		{
			Position *up=new Position(curp->x-1,curp->y);
			qu.push(up);
			board[up->x][up->y]='*';
		}
		if(curp->x<m-1 && board[curp->x+1][curp->y]=='O')
		{
			Position *down = new Position(curp->x+1,curp->y);
			qu.push(down);
			board[down->x][down->y]='*';
		}
		if(curp->y>0 && board[curp->x][curp->y-1]=='O')
		{
			Position *left = new Position(curp->x,curp->y-1);
			qu.push(left);
			board[left->x][left->y]='*';
		}
		if(curp->y<n-1 && board[curp->x][curp->y+1]=='O')
		{
			Position *right = new Position(curp->x,curp->y+1);
			qu.push(right);
			board[right->x][right->y]='*';
		}
		delete curp;					//ÊÍ·ÅcurpÖ¸ÏòµÄ½áµã
    }
}
void solve()						//ÎÊÌâÇó½âËã·¨
{
	int i,j;
	for(i=0; i<m; i++)
		for(j=0; j<n;j++)
			if(board[i][j]=='O')
			{
				if(i==0 || i==m-1 || j==0 || j==n-1)
					BFS(i,j,m,n);
			}
	printf("BFS后的面板:\n"); dispboard();
	for(i=0; i<m; i++)
		for(j=0; j<n; j++)
		{
			if(board[i][j]=='O')		//½«'O'¸ÄÎª'X'
				board[i][j]='X';
			else if(board[i][j]=='*')	//½«'*'»Ö¸´Îª'O'
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
