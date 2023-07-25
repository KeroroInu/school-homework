import java.util.Scanner;
public class d {
    public static void main(String[] args) {
        int num;
        Scanner scan = new Scanner(System.in);
        System.out.print("请输入一个数:");
        num = scan.nextInt();
        while(num != 0){
            int temp;
            temp = num % 10;
            System.out.print(temp);
            num /=10;
        }


    }
}
