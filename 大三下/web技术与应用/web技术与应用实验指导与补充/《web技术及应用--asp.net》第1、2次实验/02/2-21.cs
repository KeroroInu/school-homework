using System;
class Sample{
   public static void Main(string[] args)   {
      long factorial=1;
      long num=Int64.Parse(args[0]);
      try {
        checked {
           // 计算数num的阶乘
           for (long cur=1;cur<=num;cur++)
           factorial*=cur;
        }
      }
      catch (OverflowException oe) {
        Console.WriteLine("计算{0}的阶乘时引发溢出异常",num);
        Console.WriteLine("{0}",oe.Message);
        return;
      }
      Console.WriteLine("{0}的阶乘是{1}",num,factorial);
   }
}
