using System;
public class Employee {
   public string name;  // Ա������
   public decimal salary;  // Ա��нˮ 
   // ���캯��
   public Employee(string name, decimal salary)    {
      // ��this�ؼ��ָ����ڹ���Ķ����name��salary��ֵ
      this.name = name;
      this.salary = salary;
   }
   // ��ʾԱ��������нˮ
   public void DiaplayEmployee()    {
      Console.WriteLine("����:{0}",name);
      Console.WriteLine("нˮ:{0}Ԫ",salary);
      // ��this��������ǰ���󴫸�Tax.CalcTax()����
      Console.WriteLine("��������˰:{0}Ԫ",Tax.CalcTax(this));
   }   
}
public class Tax {
   public static decimal CalcTax(Employee E)    {
      return (0.14m*(E.salary-800.0m));
   }
}
public class Sample{
   public static void Main()    {
      // ������Employee��ʵ��e
      Employee e = new Employee("С��",4123.6m);
      e.DiaplayEmployee();  // ��ʾԱ��������нˮ
   }
}
