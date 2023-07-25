using System;
class Overload{
   public void Func()   {
      System.Console.WriteLine( "Func()" );
   }
   public void Func( int x, int y )   {
      System.Console.WriteLine( "Func( int x, int y )" );
   }
   public void Func( long x, long y )   {
      System.Console.WriteLine( "Func( long x, long y )" );
   }
   public static void Main( string[] args )   {
      Overload myOverload = new Overload();
      myOverload.Func();
      myOverload.Func(1,1);
      myOverload.Func(1L, 1L);
      // 会调用哪个重载函数呢？
      myOverload.Func(1L,1);
   }
}
