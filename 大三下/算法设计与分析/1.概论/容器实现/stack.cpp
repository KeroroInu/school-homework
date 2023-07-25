#include <stack>
using namespace std;
int main(int argc, char const *argv[])
{
	stack<int>st;
	st.push(1);st.push(2);st.push(3);
	printf("栈顶元素：%d\n",st.top());
	printf("出栈顺序: ");
	while(!st.empty()){
		printf("%d ",st.top());
		st.pop();
	}
	return 0;
}