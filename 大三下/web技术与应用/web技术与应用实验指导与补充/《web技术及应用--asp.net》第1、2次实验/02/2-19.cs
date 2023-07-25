using System;
class test{
    public static void Main()    {
       int sum=0;
       int i=1;
       while (true) {
          sum+=i;
          i++;
          if (i>100) break;  // 如果i大于100,则退出循环
       }
       Console.WriteLine("从0到100的和是{0}",sum);
    }
}
