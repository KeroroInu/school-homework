#include <queue>
using namespace std;
int main(int argc, char const *argv[])
{
	priority_queue<int> qu;
	qu.push(3);qu.push(1);qu.push(2);
	printf("队头元素: %d\n",qu.top());
	printf("出队顺序: ");
	while(!qu.empty()){
		printf("%d ",qu.top());
		qu.pop();
	}
	return 0;
}