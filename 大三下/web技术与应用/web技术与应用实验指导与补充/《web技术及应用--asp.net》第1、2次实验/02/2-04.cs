using System;
public class Hello{
   public static void Main(string[] args)   {
       Console.WriteLine("你共有{0}个朋友",args.Length);
       Console.WriteLine("你的朋友列表为：");
       for(int i=0; i<args.Length; i++)  {
          Console.WriteLine("Arg[{0}]=[{1}]", i, args[i]);
       }
   }
}
