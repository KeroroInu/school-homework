#include <stdio.h>
#include <queue>
using namespace std;
int thk(int a[],int n,int k){
	int i,e;
	priority_queue<int,vector<int>,greater<int>>pg;
	for(i=0;i<n;i++)
		pg.push(a[i]);
	for(i=0;i<k;i++){
		e=pg.top();
		pg.pop();
	}
	return e;
}
int main(int argc, char const *argv[])
{
	int a[]={1,2,4,5,3};
	int n=sizeof(a)/sizeof(a[0]);
	printf("实验结果\n");
	for(int k=1;k<=n;k++)
		printf("第%d小的元素:%d\n",k,thk(a,n,k));
	return 0;
}