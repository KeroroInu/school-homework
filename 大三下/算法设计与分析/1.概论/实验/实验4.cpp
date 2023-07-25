#include <iostream>
#include <string>
#include <vector>
#include <map>
using namespace std;
struct DataStruct			//定义的数据结构
{
	vector<string>data;		//用向量存放元素
	map<string,int>ht;		//用map存放元素的下标
};

void Insert(DataStruct &ds,string str){
	ds.data.push_back(str);
	int i = ds.data.size() - 1;
	ds.ht[str] = i;
}

bool Searchi(DataStruct ds,int i,string &str){
	if(i < 0 || i >= ds.data.size())
		return false;
	str = ds.data[i];
	return true;
}

int Searchs(DataStruct ds,string &str){
	map<string,int>::iterator it;
	it = ds.ht.find(str);
	if(it != ds.ht.end())
		return it -> second;
	else
		return -1;
}

bool Delete(DataStruct &ds,string str){
	int i = Searchs(ds,str);
	if(i == -1)
		return false;
	int j = ds.data.size() - 1;
	ds.data[i] = ds.data[j];
	ds.ht[ds.data[j]] = i;
	ds.data.pop_back();
	return true;
}

void Display(DataStruct ds){
	vector<string>::iterator it;
	for(it = ds.data.begin();it != ds.data.end();it++)
		cout << *it << " ";
	cout << endl;
}

int main(int argc, char const *argv[])
{
	DataStruct ds;
	string str;
	cout << "实验结果" << endl;
	Insert(ds,"Mary");
	Insert(ds,"Smitch");
	Insert(ds,"John");
	Insert(ds,"Anany");
	cout << " " << "依次插入Mary,Smitch,John,Anany" << endl;
	cout << " 元素表";
	Display(ds);
	str = "John";
	cout << " " << str << "的下标：" << Searchs(ds,str) << endl;
	cout << " 删除" << str << endl;
	Delete(ds,str);
	cout << " 删除后的元素表：";
	Display(ds);
	return 0;
}














