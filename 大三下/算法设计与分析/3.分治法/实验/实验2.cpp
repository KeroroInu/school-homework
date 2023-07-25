#include <stdio.h>
int num;
int maxcnt = 0;
void split(int a[],int low,int high,int &mid,int &left,int &right){
	mid = (low + high)/2;
	for(left = low;left <= high;left++)
		if(a[left] == a[mid])
			break;
	for(right = left + 1;right <= high;right++)
		if(a[right] != a[mid])
			break;
	right--;
}
void Getmaxcnt(int a[],int low,int high){
	if(low <= high){
		int mid,left,right;
		split(a,low,high,mid,left,right);
		int cnt = right - left + 1;
		if(cnt > maxcnt){
			num = a[mid];
			maxcnt = cnt;
		}
		Getmaxcnt(a,low,left - 1);
		Getmaxcnt(a,right + 1,high);
	}
}
int main(int argc, char const *argv[])
{
	int a[] = {1,2,2,2,3,3,5,6,6,6,6};
	int n = sizeof(a)/sizeof(a[0]);
	printf("求解结果\n");
	printf(" 递增序列：");
	for (int i = 0; i < n; ++i)
	{
		printf("%d",a[i]);
	}
	printf("\n");
	Getmaxcnt(a,0,n - 1);
	printf(" 众数：%d,重数：%d\n",num,maxcnt);
	return 0;
}