#include <stdio.h>
#include <stdarg.h>		//标准头文件，提供宏va_start、va_arg、va_end
						//用于存取变长参数表
#define MAX_ARRAY_DIM 8	//假设数组饿位数的最大值为8
#define Elemtype int
typedef struct 
{
	Elemtype *base;		//数组元素基址，由InitArray分配
	int dim;			//数组维数
	int *bounds;		//数组维界基址，由IniArray分配
	int *constants;		//数组映像函数常量基址，由InitArray分配
}Array;
int main(int argc, char const *argv[])
{
	
	return 0;
}

