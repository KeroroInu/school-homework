using System;
namespace InterfaceTest{
	interface IPoint 	{
		int x 		{
			get; 
			set; 
		}
		int y 		{
			get; 
			set; 
		}
	}
	class MyPoint : IPoint 	{
		private int myX;
		private int myY;
		public MyPoint(int x, int y) 	{
			myX = x;
			myY = y;
		}
		public int x 	{
			get 	{
				return myX;
			}
			set 	{
				myX = value; 
			}
		}
		public int y {
			get {
				return myY; 
			}
			set {
				myY = value; 
			}
		}
	}
	class Class1{
		static void Main(string[] args){
			MyPoint p = new MyPoint(2,3);
			Console.Write("My Point: ");
			PrintPoint(p);
		}
		private static void PrintPoint(IPoint p) {
			Console.WriteLine("x={0}, y={1}", p.x, p.y);
		}
	}
}
