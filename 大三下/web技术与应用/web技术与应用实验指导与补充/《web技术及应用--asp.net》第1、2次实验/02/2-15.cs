using System;
class Sample{
    public static void Main()    {
       int myage=10;       
       string mystr; 
       switch (myage) {
         case 10: mystr="����С��!"; break;    
         case 25: mystr="���Խ����!"; break;
         default: mystr="���԰ɣ��㵽�׶��"; break;
       }
       Console.WriteLine("С�ӣ���{0}",mystr);
    }
}
