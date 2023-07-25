using System;
public class UnboxingTest {
   public static void Main( )    {
      string strDate = "2005-10-1 10:10:55";
      string strDay = strDate.Substring(0,strDate.IndexOf(" "));
      Console.WriteLine("Êä³öÈÕÆÚ: {0}", strDay);
   }
}
