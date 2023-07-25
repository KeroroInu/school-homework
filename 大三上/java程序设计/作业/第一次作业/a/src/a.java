public class a {
    public static void main(String[] args) {
        int sum = 0,flag = 1;
        for(int i = 1;i <= 100;i++){
            sum += flag * i;
            flag *= -1;
        }
        System.out.println(sum);
    }
}