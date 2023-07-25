using System;
class test{
    public static void Main() {
       int sum = 0;
      for(int i= 1;i <= 100; i++) {
          sum += i;
       }
	Console.WriteLine("从0到100的和是{0}\n",sum);
	sum = 0;
	int j= 1;
      for(;;) {
          if(j > 100) break;
          sum += j;
	  j++;
       }
	Console.WriteLine("从0到100的和是{0}",sum);

    }
}
