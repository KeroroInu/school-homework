using System;
class test{
    public static void Main()    {
       int sum=0;  //��ʼֵ����Ϊ0
       int i=1;    //������ʼֵΪ1
       do {
          sum+=i;
          i++;
       } while (i<=100);
       Console.WriteLine("��0��100�ĺ���{0}",sum);
    }
}
