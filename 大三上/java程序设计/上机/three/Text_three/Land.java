package Text_three;

public class Land {
    public static void main(String[] args) {
        Village.setWaterAmount(200);
        int leftWater = Village.waterAmount;
        System.out.println("水井中有:" + leftWater + "水");
        Village zhaoZhuang,maJiaHeZi;
        zhaoZhuang = new Village("赵庄");
        maJiaHeZi = new Village("马家河子");
        zhaoZhuang.setPeopleNumber(80);
        maJiaHeZi.setPeopleNumber(120);
        zhaoZhuang.drinkwater(50);
        leftWater = maJiaHeZi.lookWaterAmount();
        String name = maJiaHeZi.name;
        System.out.println(name + "发现水井中有 " + leftWater + " 升水");
        maJiaHeZi.drinkwater(100);
        leftWater = zhaoZhuang.lookWaterAmount();
        name = zhaoZhuang.name;
        System.out.println(name + "发现水井中有 " + leftWater + " 升水");
        int peopleNumber = zhaoZhuang.peopleNumber;
        System.out.println("赵庄的人口:" + peopleNumber);
        peopleNumber = maJiaHeZi.peopleNumber;
        System.out.println("马家河子的人口:" + peopleNumber);
    }
}
