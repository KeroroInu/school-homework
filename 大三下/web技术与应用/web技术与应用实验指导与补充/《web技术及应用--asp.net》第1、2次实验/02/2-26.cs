using System;
class Desk{//���캯��������һ������������ǰ���~ 
public Desk(){
	Console.WriteLine("Constructing Desk");
	weight=6;
	high=3;
	width=7;
	length=10;
	Console.WriteLine("{0},{1},{2},{3}",weight,high,width,length);
}
~Desk(){
	Console.WriteLine("Destructing Desk ");
}
	protected int weight;
	protected int high;
	protected int width;
	protected int length;
public static void Main(){
	Desk aa=new Desk();
	Console.WriteLine("back in main() ");
}  
}; 
