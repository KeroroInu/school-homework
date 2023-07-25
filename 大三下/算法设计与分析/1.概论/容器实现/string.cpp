#include <iostream>
#include <string>
using namespace std;
int main(int argc, char const *argv[])
{
	string s1 = "",s2,s3 = "Bye";
	s1.append("Good morning");
	s2 = s1;
	int i  = s2.find("morning");
	s2.replace(i,s2.length() - i,s3);
	cout << "s1:" << s1 << endl;
	cout << "s2:" << s2 << endl;
	return 0;
}
