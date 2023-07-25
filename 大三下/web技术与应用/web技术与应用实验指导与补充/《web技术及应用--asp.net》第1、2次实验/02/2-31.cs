using System;
abstract public class Window{
   public Window(int top, int left)   {
      this.top = top;
      this.left = left;
   }
   abstract public void DrawWindow( );
   protected int top;
   protected int left;
}
public class ListBox : Window{
   public ListBox(
      int top, 
      int left, 
      string contents):
      base(top, left) { //调用基类的构造函数
      listBoxContents = contents;
   }
   public override void DrawWindow( )   {
      Console.WriteLine ("Writing string to the listbox: {0}", listBoxContents);
   }
   private string listBoxContents; 
}
public class Tester{
   static void Main( )   {
      Window[] winArray = new Window[3];
      winArray[0] = new ListBox(1,2,"First List Box");
      winArray[1] = new ListBox(3,4,"Second List Box");
      for (int i = 0;i < 2; i++)      {
         winArray[i].DrawWindow( );
      }
   }
}
