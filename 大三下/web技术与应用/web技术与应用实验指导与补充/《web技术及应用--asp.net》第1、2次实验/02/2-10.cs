using System;
class test{
   static void Main()     {
        int[] arr1=new int[2];
        int[] arr2=new int[]{1,2,3};
        string[] arr3={"six"," is ","me"};
        int[,] arr4={{1,2},{3,4}};
        int[,] arr5=new int[3,4];
        for(int i=0;i<arr1.Length;i++)  {
              arr1[i]=i*i*i;
              Console.WriteLine("arr1[{0}]={1}",i,arr1[i]);
           }
        for (int i=0;i<4;i++)    {
             for(int j=0;j<3;j++)   {
                  arr5[j,i]=i*j;
                  Console.WriteLine("arr5[{0},{1}]={2}",j,i,arr5[j,i]);
                 }
           }
      }
 }               
