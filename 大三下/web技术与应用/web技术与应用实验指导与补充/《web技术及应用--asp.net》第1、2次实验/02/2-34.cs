using System;
public class UnboxingTest {
   public static void Main( )    {
      int i = 123;
      //װ��
      object o = i;
      // ���䣬��������ʾת��
      int j = (int) o;
      Console.WriteLine("j: {0}", j);
   }
}
