using System;
struct Teacher {
   public string Name;  // ��ʦ����
   public uint Age;  // ��ʦ����
   public string Phone;  // ��ʦ�绰
   public string Address;  // ��ʦͨѶ��ַ
}
class Test{
   public static void Main()    {
      Teacher t;  // �����ṹ����Teacher�ı���t
      t.Name="С��";
      t.Age=35;
      t.Phone="13381335310";
      t.Address="������ѧ";
      Console.WriteLine("����ʦ����={0},����={1},�绰={2},ͨѶ��ַ={3}",
             t.Name,t.Age,t.Phone,t.Address);
   }
}
