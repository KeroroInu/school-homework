using System;
public class UnboxingTest {
   public static void Main( )    {
      int i = 123;
      //装箱
      object o = i;
      // 拆箱，必须是显示转换
      int j = (int) o;
      Console.WriteLine("j: {0}", j);
   }
}
