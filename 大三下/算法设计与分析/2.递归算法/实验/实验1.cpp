#include "LinkList.cpp"

LinkNode * Reverse(LinkNode * L){
	LinkNode * p;
	if(L == NULL || L->next == NULL)
		return L;
	p = Reverse(L->next);
	L->next->next = L;
	L->next = NULL;
	return p;
}

int main(int argc, char const *argv[])
{
	ElemType a[] = {1,2,3,4,5};
	int n = sizeof(a)/sizeof(a[0]);
	LinkNode * L;
	CreateList(L,a,n);
	printf("实验结果:\n");
	printf("  逆置前L:");DispList(L);
	printf("  执行 L = Reverse(L)\n");
	L = Reverse(L);
	printf("  逆置后L:");DispList(L);
	printf("  销毁L\n");
	DestroyList(L);
	return 0;
}