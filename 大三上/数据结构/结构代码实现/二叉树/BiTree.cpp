#include <stdio.h>
#include <stdlib.h>

#define TElemType char
#define OVERFLOW -1
#define Status int
#define OK 1

typedef struct BiNode
{
	TElemType data;
	struct BiNode *lchild,*rchild;//左右孩子指针

}BiNode,*BiTree;

Status CreateBiTree(BiTree &T);
Status PrintElement(TElemType e);
void Preorder(BiTree T,Status(* visit)(TElemType e));
Status PreOrderTraverse(BiTree T);
void Inorder(BiTree T,Status(* visit)(TElemType e));
Status InOrderTraverse(BiTree T);
void Postorder(BiTree T,Status (* visit)(TElemType e));
Status PostorderTraverse(BiTree T);
int countND(BiTree T);
int Depth(BiTree T);


int main(int argc, char const *argv[])
{
	BiTree t1;
	CreateBiTree(t1);
	// Preorder(t1,PrintElement);
	// Inorder(t1,PrintElement);
	// Postorder(t1,PrintElement);
	// printf("%d",countND(t1));
	// printf("%d",Depth(t1));
	return 0;

}

Status CreateBiTree(BiTree &T){
	TElemType ch;
	scanf("%c",&ch);
	if(ch == ' ')
		T = NULL;
	else{
		if(!(T = (BiTree)malloc(sizeof(BiNode))))
			exit(OVERFLOW);
		T -> data = ch;				//生成跟结点
		CreateBiTree(T -> lchild);	//构造左子树
		CreateBiTree(T -> rchild);	//构造右子树
	}
	return OK;
}

Status PrintElement(TElemType e){
	printf("%c",e);
	return OK;
}

void Preorder(BiTree T,Status(* visit)(TElemType e)){
	//先序遍历二叉树
	if(T){
		visit(T->data);
		Preorder(T->lchild,visit);
		Preorder(T->rchild,visit);
	}
}

Status PreOrderTraverse(BiTree T){
	//先序遍历二叉树(不需要外部函数)
	if(T == NULL) 
		return OK;
	else{
		printf("%c",T -> data);
		PreOrderTraverse(T -> lchild);
		PreOrderTraverse(T -> rchild);
	}
	return OK;
}

void Inorder(BiTree T,Status(* visit)(TElemType e)){
	if(T){
		Inorder(T -> lchild,visit);
		visit(T -> data);
		Inorder(T -> rchild,visit);
	}
}

Status InOrderTraverse(BiTree T){
	if(T == NULL)
		return OK;
	else{
		InOrderTraverse(T -> lchild);
		printf("%c",T->data);
		InOrderTraverse(T -> rchild);
	}
	return OK;
}


void Postorder(BiTree T,Status (* visit)(TElemType e)){
	if(T){
		Postorder(T -> lchild,visit);
		Postorder(T -> rchild,visit);
		visit(T -> data);
	}
}

Status PostorderTraverse(BiTree T){
	if(T == NULL)
		return OK;
	else{
		PostorderTraverse(T -> lchild);
		PostorderTraverse(T -> rchild);
		printf("%c",T -> data);
	}
	return OK;
}

//计算节点数
int countND(BiTree T){
	int n = 0,k = 0,m = 0;
	if(T == NULL)
		return 0;
	else{
		if(T -> lchild != NULL)
			k = countND(T -> lchild);
		if(T -> rchild != NULL)
			m = countND(T -> rchild);
		n = m + k + 1;
	}

	return n;
}

//计算叶子节点
int countTD(BiTree T){
	if(T == NULL)
		return 0;
	else{
		if((countTD(T -> lchild) == NULL) && (countTD(T -> rchild) == NULL)){
			return 1;
		}
		else
			return countTD(T -> lchild) + countTD(T -> rchild);
	}
}

//计算深度
int Depth(BiTree T){
	int m,n;
	if(T == NULL)
		return 0;
	else{
		m = Depth(T -> lchild);
		n = Depth(T -> rchild);
		if(m > n)
			return m + 1;
		else
			return n + 1;
	}
}

//计算节点值之和






