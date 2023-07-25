using System;
class Test{
	static void Main(string[] args)	{
		Base b = new Base();
		b.Draw();
		Derived d = new Derived();
		d.Draw();
		d.Fill();
		Base obj   = new Derived();
		obj.Fill();
		obj.Draw();
	}
}
class Base{
	public void Fill()	{
		System.Console.WriteLine("Base.Fill");
	}
	public virtual void Draw() 	{
		System.Console.WriteLine("Base.Draw");
	}
}
class Derived : Base{
	public override void Draw()	{
		System.Console.WriteLine("Derived.Draw");
	}
	public new void Fill()	{
		System.Console.WriteLine("Derived.Fill");
	}
}
