using System;
enum WeekDay {
  Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
};
class Test {
   static void Main()  {
      WeekDay day;    // 声明WeekDay的实例day;
      day=WeekDay.Sunday;
      Console.WriteLine("day的值是{0}",day);
   }
}
