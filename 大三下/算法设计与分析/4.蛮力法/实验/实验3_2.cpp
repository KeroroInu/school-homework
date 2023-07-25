//·ÇµÝ¹é°æ±¾
#include <stdio.h>
#include <vector>
#include <stack>
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
void dispboard()		//Êä³öÃæ°å
{
	for(int i=0; i<m; i++)
	{
		printf("   ");
		for(int j=0; j<n;j++)
			printf("%c ",board[i][j]);
		printf("\n");
	}
}
void DFS(int i,int j,int m,int n)
{
	stack<Position *> st;
	Position *pos = new Position(i,j);
	st.push(pos);						//³õÊ¼Î»ÖÃ½øÕ»
	board[i][j]='*';					//½øÕ»Î»ÖÃµÄÖµ¸ÄÎª'*',±ÜÃâÖØ¸´ËÑË÷
	while(!st.empty())					//Õ»²»¿ÕÑ­»·
	{
		Position *curp=st.top();		//È¡Õ»¶¥Î»ÖÃ·½¿écurp
		if (curp->x>0 && board[curp->x-1][curp->y]=='O')
		{
			Position *up=new Position(curp->x-1,curp->y);
			st.push(up);
			board[up->x][up->y]='*';
			continue;
		}
		if(curp->x<m-1 && board[curp->x+1][curp->y]=='O')
		{
			Position *down = new Position(curp->x+1,curp->y);
			st.push(down);
			board[down->x][down->y]='*';
			continue;
		}
		if(curp->y>0 && board[curp->x][curp->y-1]=='O')
		{
			Position *left = new Position(curp->x,curp->y-1);
			st.push(left);
			board[left->x][left->y]='*';
			continue;
		}
		if(curp->y<n-1 && board[curp->x][curp->y+1]=='O')
		{
			Position *right = new Position(curp->x,curp->y+1);
			st.push(right);
			board[right->x][right->y]='*';
			continue;
		}
		delete curp;			//ÊÍ·ÅÍËÕ»µÄ½áµã
		st.pop();				//Õ»¶¥·½¿éÃ»ÓÐÂ·¾¶Ê±ÍËÕ»
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
					DFS(i,j,m,n);
			}
	printf("DFS后的面板:\n"); dispboard();
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
