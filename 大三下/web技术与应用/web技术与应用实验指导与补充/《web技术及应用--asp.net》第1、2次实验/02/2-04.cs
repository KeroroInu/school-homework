using System;
public class Hello{
   public static void Main(string[] args)   {
       Console.WriteLine("�㹲��{0}������",args.Length);
       Console.WriteLine("��������б�Ϊ��");
       for(int i=0; i<args.Length; i++)  {
          Console.WriteLine("Arg[{0}]=[{1}]", i, args[i]);
       }
   }
}
