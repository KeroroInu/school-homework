public class Person
{

   public string name;  
 
   public Person()  
 
    {  
        name = "unknown";  
    }  

    public void SetName(string newName) 
    { 
       name = newName;   
 }
}
class TestPerson
{    
static void Main() 
   {     
    Person person1 = new Person();      
    System.Console.WriteLine(person1.name);  
    person1.SetName("John Smith");       
    System.Console.WriteLine(person1.name);    
    }
}