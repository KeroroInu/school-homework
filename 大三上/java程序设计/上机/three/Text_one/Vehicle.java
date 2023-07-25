package Text_one;

public class Vehicle {
    double speed;
    int power;
    void speedUp(int s){
        this.speed = speed + s;
    }
    void speedDown(int d){
        this.speed = speed - d;
    }
    void setPower(int p){
        this.power = p;
    }
    int getPower(){
        return power;
    }
    double getSpeed(){
        return speed;
    }
}
