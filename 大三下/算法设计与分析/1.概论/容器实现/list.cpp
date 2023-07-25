#include <list>
using namespace std;
void disp(list<int> &lst){
	list<int>::iterator it;
	for(it = lst.begin();it != lst.end();it++)
		printf("%d ",*it);
	printf("\n");
}
int main(int argc, char const *argv[])
{
	list<int>lst;
	list<int>::iterator it,start,end;
	lst.push_back(5);
	lst.push_back(2);
	lst.push_back(4);
	lst.push_back(1);
	lst.push_back(3);
	printf("初始lst: ");disp(lst);
	it=lst.begin();
	start=++lst.begin();
	end=--lst.end();
	lst.insert(it,start,end);
	printf("执行lst.insert(it,start,end)\n");
	printf("插入后list: ");disp(lst);
	return 0;
}