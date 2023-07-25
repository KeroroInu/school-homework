using System;
public class Person {
	private int id;
	public static int total = 0;
	public Person() {
		 total++;
		 id = total;
	}
}
public class OtherClass {
   public static void Main()    {
		Person.total = 100;
		Console.WriteLine (Person.total);
		Person c = new Person();
		Console.WriteLine (Person.total);
	}
}
