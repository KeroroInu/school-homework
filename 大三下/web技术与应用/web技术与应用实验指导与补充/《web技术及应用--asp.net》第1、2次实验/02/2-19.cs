using System;
class test{
    public static void Main()    {
       int sum=0;
       int i=1;
       while (true) {
          sum+=i;
          i++;
          if (i>100) break;  // ���i����100,���˳�ѭ��
       }
       Console.WriteLine("��0��100�ĺ���{0}",sum);
    }
}
