using System;
enum WeekDay {
  Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
};
class Test {
   static void Main()  {
      WeekDay day;    // ����WeekDay��ʵ��day;
      day=WeekDay.Sunday;
      Console.WriteLine("day��ֵ��{0}",day);
   }
}
