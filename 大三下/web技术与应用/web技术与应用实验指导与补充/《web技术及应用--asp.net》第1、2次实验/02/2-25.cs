using System;
class Class1{
    public string s;  // ���г�Ա
    protected int i;  // ������Ա
    private double d;  // ˽�г�Ա
    public void F1()    {
       s="Welcome six!";  // ��ȷ��������������Ա
       i=100;  // ��ȷ��������������Ա
       d=18.68;  // ��ȷ��������������Ա
}
   public static void Main() {
       Class1 a=new Class1();
       a.s="six";
       Console.WriteLine("{0}",a.s);
   }
}
class Class2:Class1 {  // ��Class1������Class2
    int x;  // ˽�г�Ա
    public void F2()    {
       x=100;  // ��ȷ��������������Ա
       s="Hello liu";  // ��ȷ�����������Class1�Ĺ��г�Ա
       //d=188.88;  // ���󣬲��ܷ�����Class1��˽�г�Ա
       i=250;  // ��ȷ�����������Class1�ı�����Ա
    }
}          
class Class3{
    public void F3()  {
       Class1 c=new Class1();  // ������Class1��ʵ��C
       c.s="sixAge";  // ��ȷ�����������Class1�Ĺ��г�Ա
       //c.d=108.55;  // ���󣬲��ܷ�����Class1�ı�����Ա
       //c.i=300;  // ���󣬲��ܷ�����Class1��˽�г�Ա       
    }
}
