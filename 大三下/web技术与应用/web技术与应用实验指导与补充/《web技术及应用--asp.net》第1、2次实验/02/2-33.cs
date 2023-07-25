using System;
class CtorOverloadDemo{
   static void Main(String[] args)   {
      MyInt i = new MyInt(2);
      System.Console.WriteLine(i.i);
      MyInt j = new MyInt();
      System.Console.WriteLine(j.i);
   }
}
class MyInt{
   public int i;
   public MyInt()   {
      i = 0;
   }
   public MyInt( int i )   {
      this.i = i;
   }
}
