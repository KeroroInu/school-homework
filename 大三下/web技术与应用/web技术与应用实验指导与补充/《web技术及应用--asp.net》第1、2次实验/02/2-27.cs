using System;
public class Employee {
   public string name;  // 员工姓名
   public decimal salary;  // 员工薪水 
   // 构造函数
   public Employee(string name, decimal salary)    {
      // 用this关键字给正在构造的对象的name和salary赋值
      this.name = name;
      this.salary = salary;
   }
   // 显示员工姓名及薪水
   public void DiaplayEmployee()    {
      Console.WriteLine("姓名:{0}",name);
      Console.WriteLine("薪水:{0}元",salary);
      // 用this方法将当前对象传给Tax.CalcTax()方法
      Console.WriteLine("个人所得税:{0}元",Tax.CalcTax(this));
   }   
}
public class Tax {
   public static decimal CalcTax(Employee E)    {
      return (0.14m*(E.salary-800.0m));
   }
}
public class Sample{
   public static void Main()    {
      // 声明类Employee的实例e
      Employee e = new Employee("小刘",4123.6m);
      e.DiaplayEmployee();  // 显示员工姓名和薪水
   }
}
