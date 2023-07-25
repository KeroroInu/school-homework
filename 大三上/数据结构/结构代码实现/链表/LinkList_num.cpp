#include <stdio.h>
#include <stdlib.h>

#define TRUE 		  1
#define	FALSE		  0
#define OK 			  1
#define ERROR 		  0
#define INFEAsIBLE	  -1
#define OVERFLOW	  -2
#define ElemType int
#define Status int
#define MAXSIZE 1000	//链表的最大长度

typedef struct 
{
	ElemType data;
	int cur;
}component,SLinkList[MAXSIZE];

