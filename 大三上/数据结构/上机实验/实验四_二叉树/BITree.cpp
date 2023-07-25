#include <stdio.h>
#include <stdlib.h>

typedef  char  TElemType;
typedef struct BiTNode
 {
   TElemType data;
   struct BiTNode  *lchild, *rchild;
 }BiTNode,*BiTree;    

int CreatBiTree(BiTree &T);
int Preorder(BiTree T);
int Inorder(BiTree T);
int Postorder(BiTree T);
int Count(BiTree T);
int Depth(BiTree T);


int main(int argc, char const *argv[])
{
	BiTree t1;
	printf("请输入二叉树，#号表示空:\n");
	CreatBiTree(t1);
	Preorder(t1);
	printf("\n");
	Inorder(t1);
	printf("\n");
	Postorder(t1);
	printf("\n");
	printf("  二叉树节点数为:%d",Count(t1));
	printf("\n");
	printf("  二叉树深度为:%d",Depth(t1));
	printf("\n");
	printf("-----------------------");

	return 0;
}

int CreatBiTree(BiTree &T){
	TElemType ch;
	scanf("%c",&ch);
	if(ch == '#')
		T = NULL;
	else{
		if(!(T = (BiTree)malloc(sizeof(BiTNode))))
			return -1;
		T -> data = ch;
		CreatBiTree(T -> lchild);
		CreatBiTree(T -> rchild);
	}
	return 1;
}

//先序遍历
int Preorder(BiTree T){
	if (T == NULL)
		return 1;
	else{
		printf("%3c",T -> data);
		Preorder(T -> lchild);
		Preorder(T -> rchild);
	}
	return 1;
}

//中序遍历
int Inorder(BiTree T){
	if (T == NULL)
		return 1;
	else{
		Preorder(T -> lchild);
		printf("%3c",T -> data);
		Preorder(T -> rchild);
	}
	return 1;

}

//后序遍历
int Postorder(BiTree T){
	if (T == NULL)
		return 1;
	else{
		Preorder(T -> lchild);
		Preorder(T -> rchild);
		printf("%3c",T -> data);
	}
	return 1;
}

//计算节点数
int Count(BiTree T){
	int n = 0,l = 0,r = 0;
	if(T == NULL)
		return 0;
	else{
		if(T -> lchild != NULL)
			l = Count(T -> lchild);
		if(T -> rchild != NULL)
			r = Count(T -> rchild);
		n = r + l + 1;
	}
	return n;
}

//计算深度
int Depth(BiTree T){
	int l,r;
	if(T == NULL)
		return 0;
	else{
		l = Depth(T -> lchild);
		r = Depth(T -> rchild);
		if(l > r)
			return l + 1;
		else
			return r + 1;
	}
}




