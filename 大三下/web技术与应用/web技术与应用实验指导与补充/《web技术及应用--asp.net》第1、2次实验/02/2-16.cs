using System;
class test{
    public static void Main()    {
       int sum=0;  //初始值设置为0
       int i=1;    //加数初始值为1
       do {
          sum+=i;
          i++;
       } while (i<=100);
       Console.WriteLine("从0到100的和是{0}",sum);
    }
}
