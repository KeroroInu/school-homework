using System;
class Hello{
    static void Main()    {
        /* ����һ��DateTime����t������ǰ���ڸ���t */
        DateTime t=DateTime.Today;
        string str_Time;  // ����һ���ַ�������str_Time
        str_Time=t.ToLongDateString();
        Console.WriteLine("��ǰ������:{0}",str_Time);       
    }
}
