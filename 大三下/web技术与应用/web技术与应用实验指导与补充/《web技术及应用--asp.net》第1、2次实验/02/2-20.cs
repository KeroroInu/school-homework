using System;
class test{
    public static void Main()    {
      for(int n=100;n<=200;n++)   {
         if(n%3==0) 
          continue;
          Console.WriteLine("从100到200的不能被3整除的数是{0}",n);
        }
    }
}
