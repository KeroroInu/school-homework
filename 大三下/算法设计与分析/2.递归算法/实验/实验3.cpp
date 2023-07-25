#include "BTree.cpp"
int maxsum = 0;
vector <int> maxpath;
void Findmaxpath(BTNode *bt,vector <int> apath,int asum){
//求从根结点到叶子结点的路径和最大的路径
	if(bt == NULL)
		return;
	apath.push_back(bt->data);
	asum += bt->data;
	if(bt->lchild == NULL && bt->rchild == NULL){
		if(asum > maxsum){
			maxsum = asum;
			maxpath.clear();
			maxpath = apath;
		}
	}
	Findmaxpath(bt->lchild,apath,asum);
	Findmaxpath(bt->rchild,apath,asum);
}

int main(int argc, char const *argv[])
{
	BTNode *bt;
	ElemType a[] = {5,2,3,4,1,6};
	ElemType b[] = {2,3,5,1,4,6};
	int n = sizeof(a)/sizeof(a[0]);
	bt = CreateBTree(a,b,n);
	printf("实验结果:\n");
	printf(" 二叉树bt:");DispBTree(bt);printf("\n");
	printf(" 最大路径");
	vector <int> apath;
	int asum = 0;
	Findmaxpath(bt,apath,asum);
	printf(" 路径和: %d 路径: ",maxsum);
	for (int i = 0; i < maxpath.size(); ++i){
		printf("%d ",maxpath[i]);
	}
	printf("\n");
	printf(" 销毁树 bt\n");
	DestroyBTree(bt);
	return 0;
}