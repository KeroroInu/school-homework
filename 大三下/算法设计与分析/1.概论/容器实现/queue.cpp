#include <queue>
using namespace std;
int main(int argc, char const *argv[])
{
	queue<int>qu;
	qu.push(1);qu.push(2);qu.push(3);
	printf("队头元素:%d\n",qu.front());
	printf("队尾元素：%d\n",qu.back());
	printf("出队顺序: ");
	while(!qu.empty()){
		printf("%d ",qu.front());
		qu.pop();
	}
	return 0;
}