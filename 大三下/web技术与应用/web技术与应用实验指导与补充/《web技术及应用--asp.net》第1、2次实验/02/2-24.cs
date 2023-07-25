using System;
class BaseA{
   public void FuncA()   {
      System.Console.WriteLine( "Funciton A" );
   }
}
class DerivedA : BaseA{
   public void FuncB()   {
      System.Console.WriteLine( "Function B" );
   }
}
class Tester{
   public static void Main( string[] args )   {
      DerivedA aDerived = new DerivedA();
      aDerived.FuncA();
      aDerived.FuncB();
   }
}
