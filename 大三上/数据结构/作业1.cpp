#include <stdio.h>
#include <stdlib.h>

typedef struct Node
{
	int num;
	struct Node *next;
}Node;


Node * Init(Node *);//头指针初始化函数声明
void Insert(Node *,int);//尾插入函数声明
void Show(Node *);//链表遍历声明
void ListInsert(Node *,int);//元素插入函数声明
Node * Merge(Node *,Node *,Node *);//合并函数声明


int main(){
	int n; 

	Node *One = Init(One);

	//元素插入
	printf("请输入链表长度:");
	scanf("%d",&n);
	Insert(One,n);

	//链表遍历
	Show(One);

	//在第五个位置后插入元素
	ListInsert(One,5);

	//链表遍历
	Show(One);

	//创建第二个链表
	Node *Two = Init(Two);
	printf("\n请输入链表长度：");
	scanf("%d",&n);
	Insert(Two,n);

	//合并链表
	Node *Three = Init(Three);
	Three = Merge(One,Two,Three);

	//遍历合并链表
	Show(Three);

}
//链表初始化
Node * Init(Node *head){
	head = (Node *)malloc(sizeof(Node));
	head->next = NULL;
	return head;
}

//尾插入函数
void Insert(Node *head,int n){
	int m;
	Node *tail;
	tail = (Node *)malloc(sizeof(Node));
	Node *p;
	tail = head;//尾指针初始化
	for(int i = 0;i < n;i++){
		printf("第%d个数为:",i+1);
		scanf("%d",&m);
		p = (Node *)malloc(sizeof(Node));
		p->num = m;
		tail->next = p;
		tail = p;
	}
}

//链表遍历
void Show(Node *head){
	Node * p = head ->next;
	while(p){
		printf("%2d",p->num);
		p= p->next;
	}
	printf("\n");
}

//在第n个位置后插入元素
void ListInsert(Node *head,int n){
	int m,j = 0;
	Node *p;
	p = (Node *)malloc(sizeof(Node));
	p = head->next;
	printf("\n输入要插入的元素值：");
	scanf("%d",&m);
	while(p&&j < n - 1){
		p = p->next;
		++j;
	}

	Node *s;
	s = (Node *)malloc(sizeof(Node));
	s->num = m;
	s->next = p->next;
	p->next = s;
}

//合并两个递增链表
Node * Merge(Node *h1,Node *h2,Node *h3){
	Node *pa = h1->next,*pb = h2->next,*pc = h3 = h1;
	while (pa && pb){
		if(pa->num <= pb->num){
			if(pa->num == pb->num)
				pb = pb->next;
			pc->next = pa;
			pc = pa;
			pa = pa->next;
		}else{
			pc->next = pb;
			pc = pb;
			pb = pb->next;
		}
	}
	pc->next = pa?pa:pb;
	free(h2);

	return h3;
}