using System;
class Sample{
    public static void Main()    {
       int sum=0;
       int i=1;
       while (i<=100) {
          sum+=i;
          i++;
       }
       Console.WriteLine("从0到100的和是{0}",sum);
    }
}
