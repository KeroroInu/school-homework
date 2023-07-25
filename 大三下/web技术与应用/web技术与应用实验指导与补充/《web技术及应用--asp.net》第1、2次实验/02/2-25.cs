using System;
class Class1{
    public string s;  // 公有成员
    protected int i;  // 保护成员
    private double d;  // 私有成员
    public void F1()    {
       s="Welcome six!";  // 正确，允许访问自身成员
       i=100;  // 正确，允许访问自身成员
       d=18.68;  // 正确，允许访问自身成员
}
   public static void Main() {
       Class1 a=new Class1();
       a.s="six";
       Console.WriteLine("{0}",a.s);
   }
}
class Class2:Class1 {  // 从Class1派生类Class2
    int x;  // 私有成员
    public void F2()    {
       x=100;  // 正确，允许访问自身成员
       s="Hello liu";  // 正确，允许访问类Class1的公有成员
       //d=188.88;  // 错误，不能访问类Class1的私有成员
       i=250;  // 正确，允许访问类Class1的保护成员
    }
}          
class Class3{
    public void F3()  {
       Class1 c=new Class1();  // 声明类Class1的实例C
       c.s="sixAge";  // 正确，允许访问类Class1的公有成员
       //c.d=108.55;  // 错误，不能访问类Class1的保护成员
       //c.i=300;  // 错误，不能访问类Class1的私有成员       
    }
}
