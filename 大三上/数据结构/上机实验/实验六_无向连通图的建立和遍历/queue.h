//
// Created by CYL on 2022/10/30.
//

// 使用数组实现队列（占用一个队列空间判断栈空或栈满）

typedef int Status;
#define OK 1
#define ERROR 0
#define TRUE 1
#define FALSE 0

#define MAX_SIZE 15
typedef int DATA_TYPE;

typedef struct {
    DATA_TYPE arr[MAX_SIZE];
    int front; // 头指针
    int rear; // 尾指针
} CircularQueue;

// 初始化循环队列
Status InitQueue(CircularQueue &q) {
    q.rear = q.front = 0;
    return OK;
}

// 获取循环队列长度
int GetQueueLength(CircularQueue &q) {
    return (q.rear - q.front + MAX_SIZE) % MAX_SIZE;
}

// 入队
Status EntryQueue(CircularQueue &q, DATA_TYPE data) {
    if ((q.rear + 1) % MAX_SIZE == q.front) return ERROR; // 队满
    q.arr[q.rear] = data;
    q.rear = (q.rear + 1) % MAX_SIZE;
    return OK;
}

// 出队
Status DeleteQueue(CircularQueue &q, DATA_TYPE &data) {
    if (q.rear == q.front) return ERROR;  // 队空
    data = q.arr[q.front];
    q.front = (q.front + 1) % MAX_SIZE;
    return OK;
}

// 判断循环队列是否为空
int QueueEmpty(CircularQueue &q) {
    return q.rear == q.front;
}