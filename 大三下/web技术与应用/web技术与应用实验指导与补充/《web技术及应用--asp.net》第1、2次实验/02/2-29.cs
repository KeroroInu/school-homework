using System;
public class Person {
	private int id;
	private static int total = 0;
	public static int getTotalPerson() { 
		return total;
	}
	public Person() {
		total++;
		id = total;
	}
}	
public class TestPerson {
   public static void Main()    {
		Console.WriteLine (Person.getTotalPerson());
		Person p1 = new Person();
		Console.WriteLine (Person.getTotalPerson());
	}
}
