using System;
class Sample{
    public static void Main()    {
       try {
          throw(new ArgumentNullException()); // �����쳣
       }
       catch(ArgumentNullException e) {
          Console.WriteLine("Exception:{0}",e.Message);
       }
       finally {
          Console.WriteLine("ִ��finally�Ӿ�");
       }
    }
}
