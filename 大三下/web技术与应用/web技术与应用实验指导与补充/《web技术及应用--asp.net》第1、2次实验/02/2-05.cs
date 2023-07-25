using System;
class Hello{
    static void Main()    {
        /* 声明一个DateTime变量t并将当前日期赋给t */
        DateTime t=DateTime.Today;
        string str_Time;  // 声明一个字符串变量str_Time
        str_Time=t.ToLongDateString();
        Console.WriteLine("当前日期是:{0}",str_Time);       
    }
}
