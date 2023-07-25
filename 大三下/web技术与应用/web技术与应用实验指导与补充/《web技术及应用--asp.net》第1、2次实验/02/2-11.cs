using System;
delegate int mydelegate(); 
class myclass { 
   public int InstMethod()    { 
      Console.WriteLine("Call the InstMethod."); 
      return 0; 
   } 
} 
class Test 
{ 
   static public void Main() 
   { 
      myclass p=new myclass(); 
      mydelegate d=new mydelegate(p.InstMethod); 
      d(); //Ö¸´úp.InstMethod
   } 
}
