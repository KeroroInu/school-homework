using System;
public class Sample {
   public static void Main()    {
      try {
         Console.WriteLine("ִ��try�Ӿ�!");
         goto leave;  // ��ת��leave��ǩ
      }
      finally       {
         Console.WriteLine("ִ��finally�Ӿ�!");
      }         
      leave:
         Console.WriteLine("ִ��leave��ǩ!");
   }
}
