import java.util.Scanner;
public class c {
    public static void main(String[] args) {
        int a,b;
        int temp;
        Scanner scan = new Scanner(System.in);
        System.out.print("输入整数a:");
        a = scan.nextInt();
        System.out.print("输入整数b:");
        b = scan.nextInt();

        for(int i = 0;i < 70;i++){
            temp = a/b;
            System.out.print(temp);
            if(i == 0)
                System.out.print(".");
            temp = a%b;
            temp *= 10;
            a = temp;
        }
    }
}
