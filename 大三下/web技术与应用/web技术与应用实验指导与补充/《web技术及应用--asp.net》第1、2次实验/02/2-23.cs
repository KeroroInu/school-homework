using System;
class Sample{
    public static void Main()    {
       try {
          throw(new ArgumentNullException()); // 引发异常
       }
       catch(ArgumentNullException e) {
          Console.WriteLine("Exception:{0}",e.Message);
       }
       finally {
          Console.WriteLine("执行finally子句");
       }
    }
}
