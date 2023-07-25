using System;
struct Teacher {
   public string Name;  // 老师姓名
   public uint Age;  // 老师年龄
   public string Phone;  // 老师电话
   public string Address;  // 老师通讯地址
}
class Test{
   public static void Main()    {
      Teacher t;  // 声明结构类型Teacher的变量t
      t.Name="小刘";
      t.Age=35;
      t.Phone="13381335310";
      t.Address="北京大学";
      Console.WriteLine("该老师姓名={0},年龄={1},电话={2},通讯地址={3}",
             t.Name,t.Age,t.Phone,t.Address);
   }
}
