using System;
enum Weekday {
   Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
};
class test {
   static void Main()  {  
      string mystr1 = "ÄãºÃ£¡";
      string mystr2 = "Ğ¡Áõ";
      string mystr3 = mystr1 + mystr2;
      Weekday d1 = Weekday.Sunday;
      Weekday d2 = d1 + 3;
      Console.WriteLine("d1={0},d2={1}",d1,d2);
      Console.WriteLine(mystr3);
   }
}
