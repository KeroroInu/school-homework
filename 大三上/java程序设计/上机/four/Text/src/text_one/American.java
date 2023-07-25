package text_one;

public class American extends People{
    public void speakHello(){
        System.out.println("How do you do");
    }
    public void averageHeight(){
        height = 176;
        System.out.println("American's average" + height + "cm");
    }
    public void averageWeight(){
        weight = 75;
        System.out.println("American's average weight:" + weight + "kg");
    }
    public void americanBoxing(){
        System.out.println("直拳、勾拳、组合拳");
    }
}

