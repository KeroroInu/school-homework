#include <map>
using namespace std;
int main(int argc, char const *argv[])
{
	map<char,int> mymap;
	mymap.insert(pair<char,int>('a',1));
	mymap.insert(map<char,int>::value_type('b',2));
	mymap['c']=3;
	map<char,int>::iterator it;
	for(it = mymap.begin();it!=mymap.end();it++)
		printf("[%c,%d]",it->first,it->second);
	printf("\n");
	return 0;
}