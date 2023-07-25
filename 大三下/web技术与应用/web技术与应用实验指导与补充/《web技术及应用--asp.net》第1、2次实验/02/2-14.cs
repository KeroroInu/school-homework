using System;
class Hello {
   public static void Main()    {  
      Console.Write("请输入你的名字：");
      string str_userName=Console.ReadLine();
      if(str_userName=="six"){ 
      Console.WriteLine("您好!{0},哎呀，是您啊！ ",str_userName);
      }
      else{
      Console.WriteLine("{0}是哪棵葱？ ",str_userName);
      }
   }
}
