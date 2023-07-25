using System;
public class Sample {
   public static void Main()    {
      try {
         Console.WriteLine("执行try子句!");
         goto leave;  // 跳转到leave标签
      }
      finally       {
         Console.WriteLine("执行finally子句!");
      }         
      leave:
         Console.WriteLine("执行leave标签!");
   }
}
