#include <deque>
using namespace std;
void disp(deque<int> &dq){
	deque<int>::iterator iter;
	for(iter = dq.begin();iter != dq.end();iter++)
		printf("%d ",*iter);
	printf("\n");
}
int main(int argc, char const *argv[])
{
	deque<int>dq;
	dq.push_front(1);
	dq.push_back(2);
	dq.push_front(3);
	dq.push_back(4);
	printf("dq: ");disp(dq);
	dq.pop_front();
	dq.pop_back();
	printf("dq: ");disp(dq);
	return 0;
}
