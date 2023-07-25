using System;
namespace Web {
    class MyString {
        String str;
        public MyString(String str) {
            this.str = str;
        }
        //查找指定字符的索引
        public int apiIndexof(char searchChar) {
            int i;
            for (i = 0; i < str.Length; i++) {
                if (str[i] == searchChar) {
                    return i;
                }
            }
            return -1;

        }

        //字符串比较
        public static int apiCompare(String str1, String str2) {
            int i = 0, j = 0;
            while (i <str1.Length && j < str2.Length) {
                if (str1[i] == str2[j])
                {
                    i++;
                    j++;
                }
                else {
                    return str1[i] - str2[j];
                }
            }
            if (i == str1.Length && j == str2.Length){
                return 0;
            }
            else if (i < str1.Length){
                return 1;
            }
            else if(j < str2.Length){
                return -1;
            }
            return 0;
       
        }

        //求子串
        public String apiSubstring(int start, int len) {
            char[] newChar = new char[len];
            for (int i = 0; i <len; i++) {
                newChar[i] = str[i + start];
            }
            return new String(newChar);
        }

        //删除部分字符串
        public String apiRemove(int start, int len) {
            char[] newChar = new char[len];
            for (int i = 0; i < str.Length - len; i++) {
                newChar[i] = str[start + i];
            }
            return new string(newChar);

        }
        //插入部分字符串
        public String apiInsert(int pos, String subStr) {
            if (pos < 0 || pos > str.Length) {
                return "Error";
            }
            int j = 0, k = 0 ;
            char[] arr = new char[str.Length + subStr.Length];
            for (int i = 0; i < arr.Length; i++) {
                if (i > pos - 1 && i < pos + subStr.Length) {
                    arr[i] = subStr[j];
                    j++;
                    continue;
                }
                arr[i] = str[k++];
            }
            return new string(arr);

        }

        //大小写转换
        public String apiToLower() {
            char[] arr = new char[str.Length];
            for (int i = 0; i < str.Length; i++) {
                if (str[i] >= 'A' && str[i] <= 'Z'){
                    arr[i] = (char)((int)str[i]+ 32);
                    continue;
                }
                arr[i] = str[i];
            }
            return new string(arr);
        }

        public String apiToUpper()
        {
            char[] arr = new char[str.Length];
            for (int i = 0; i < str.Length; i++)
            {
                if (str[i] >= 'a' && str[i] <= 'z')
                {
                    arr[i] = (char)((int)str[i] - 32);
                    continue;
                }
                arr[i] = str[i];
            }
            return new string(arr);
        }
    }


    class Promgrame{
        public static void Main1(String[] args) {
            MyString str =  new MyString("Abc");
            Console.WriteLine(str.apiSubstring(0, 1));
            Console.WriteLine(str.apiInsert(3, "ABC"));
            Console.WriteLine(MyString.apiCompare("abcde", "abcd"));
            Console.WriteLine(str.apiToLower());
            Console.WriteLine(str.apiToUpper());
        }
    }



}

