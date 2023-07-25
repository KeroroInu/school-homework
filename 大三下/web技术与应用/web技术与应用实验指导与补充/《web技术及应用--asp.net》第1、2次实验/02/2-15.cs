using System;
class Sample{
    public static void Main()    {
       int myage=10;       
       string mystr; 
       switch (myage) {
         case 10: mystr="还是小孩!"; break;    
         case 25: mystr="可以结婚了!"; break;
         default: mystr="不对吧！你到底多大！"; break;
       }
       Console.WriteLine("小子，你{0}",mystr);
    }
}
