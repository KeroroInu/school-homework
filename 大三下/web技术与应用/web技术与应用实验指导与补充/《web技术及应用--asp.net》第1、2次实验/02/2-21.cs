using System;
class Sample{
   public static void Main(string[] args)   {
      long factorial=1;
      long num=Int64.Parse(args[0]);
      try {
        checked {
           // ������num�Ľ׳�
           for (long cur=1;cur<=num;cur++)
           factorial*=cur;
        }
      }
      catch (OverflowException oe) {
        Console.WriteLine("����{0}�Ľ׳�ʱ��������쳣",num);
        Console.WriteLine("{0}",oe.Message);
        return;
      }
      Console.WriteLine("{0}�Ľ׳���{1}",num,factorial);
   }
}
