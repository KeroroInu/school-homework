	#include <stdio.h>
	#include <queue>
	using namespace std;

	int slove(queue<int> &qu,int k){			
		queue<int> tmpqu;
		int e;
		for (int i = 0; i < k - 1; ++i)
		{
			tmpqu.push(qu.front());
			qu.pop();
		}
		e = qu.front();
		qu.pop();
		while(!qu.empty()){
			tmpqu.push(qu.front());
			qu.pop();
		}
		qu = tmpqu;
		return e;
	}

	void disp(queue<int> &qu){
		while(!qu.empty()){
			printf("%d ",qu.front());
			qu.pop();
		}
		printf("\n");
	}


	int main(int argc, char const *argv[])
	{
		printf("实验结果\n");
		queue<int>qu;
		qu.push(1);
		qu.push(2);
		qu.push(3);
		qu.push(4);
		printf("元素1，2，3，4，依次进队qu\n");
		int k = 3;
		int e = slove(qu,k);
		printf("出队第%d个元素是：%d\n",k,e);
		printf("qu中其余元素出队顺序：");
		disp(qu);
		return 0;
	}