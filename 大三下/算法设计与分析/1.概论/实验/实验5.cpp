#include <stdio.h>
#include <queue>
using namespace std;
priority_queue<int,vector<int>,greater<int>> A;	//小根堆
priority_queue<int> B;							//大根堆
void Insert(int x){
	if(A.size() == 0)
		A.push(x);
	else if(x > A.top()){
		A.push(x);
		if(A.size() > B.size()){
			int e = A.top();
			A.pop();
			B.push(e);
		}
	}	
	else{
		B.push(x);
		if(B.size() > A.size()){
			int e = B.top();
			B.pop();
			A.push(e);
		}
	}
}

int Middle(){
	if(A.size() > B.size())
		return A.top();
	else
		return B.top();
}

int main(int argc, char const *argv[])
{
	printf("求解结果\n");
	printf(" 插入2，6，1\n");
	Insert(2);
	Insert(6);
	Insert(1);
	printf(" 中位数=%d\n",Middle());
	printf(" 插入5，7\n");
	Insert(5);
	Insert(7);
	printf(" 中位数= %d\n",Middle());
	return 0;
}