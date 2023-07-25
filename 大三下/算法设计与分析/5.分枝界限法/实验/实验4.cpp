#include <stdio.h>
#include <string.h>
#include <math.h>
#include <queue>
using namespace std;
#define MAX 31
int n;
char b[MAX][MAX];

int bite;
int visited[MAX][MAX];
int px,py,ax,ay;
int H[4] = {0, 1, 0, -1};
int V[4] = {-1, 0, 1, 0};
struct NodeType{
  int x,y;
  int length;
  double lb;
  bool operator<(const NodeType & s) const {
    return lb > s.lb;
  }
};
void bound(NodeType &e) {
  double d = sqrt((e.x-ax) * (e.x-ax) + (e.y-ay)*(e.y-ay));
  e.lb = e.length + d;
}
bool bfs() {
   priority_queue < NodeType> qu;
   NodeType e,e1;
   e.x = px;
   e.y = py;
   e.length = 0;
   bound(e);
   visited[px][py] = 1;
   qu.push(e);
   while (!qu.empty()){
    e = qu.top();
    qu.pop();
    if (e.x == ax && e.y == ay)
      return true;
    for(int i = 0; i < 4; i++) {
      e1.x = e.x + H[i];
      e1.y = e.y + V[i];
      if (e1.x < 0 || e1.x >= n || e1.y < 0 || e1.y >= n) 
        continue;
      if(visited[e1.x][e1.y] == 1) 
        continue;
      if(b[e1.x][e1.y] == 'k')
        continue;
      if(b[e1.x][e1.y] == 'r' || b[e1.x][e1.y] == 'a') {
        e1.length = e.length + 1;
        bound(e1);
        visited[e1.x][e1.y] = 1;
        qu.push(e1);
      } else if (b[e1.x][e1.y] == 'd') {
        if (bite == 0) {
          e1.length = e.length + 1;
          bound(e1);
          visited[e1.x][e1.y] = 1;
          qu.push(e1);
          bite++;
        }
      }
    }
   }
   return false;
}

int main() {
  int t,i,j,x,y;
  scanf("%d",&t);
  while (t--){
    bite = 0;
    memset(visited, 0, sizeof(visited));
    scanf("%d", &n);
    for (i = 0; i < n;i++) 
      scanf("%s",b[i]);
    for(i = 0; i < n; i++) 
      for(j =0 ; j< n; j ++) {
        if(b[i][j] == 'p') {
          px = i;
          py = j;
        }
        if(b[i][j] == 'a') {
          ax = i;
          ay = j;
        }
      }
    if(bfs())
      printf("Yes\n");
    else
      printf("No\n");
  }
  
}