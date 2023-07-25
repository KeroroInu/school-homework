public class b {
    public static void main(String[] args) {
        int sum = 0,t = 1;
        for(int i = 1;i <= 15;i++){
            sum += i/t;
            t = t + i;
        }
        System.out.println(sum);
    }
}
