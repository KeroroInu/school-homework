package Text_two;

public class Family {
    TV homeTV;
    void buyTV(TV tv){
        this.homeTV = tv;
    }
    void remoteControl(int m){
        homeTV.setChannel(m);
    }
    void seeTV(){
        homeTV.showProgram();
    }
}
