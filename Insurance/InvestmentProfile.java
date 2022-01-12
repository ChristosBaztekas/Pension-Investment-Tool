package Insurance;

public class InvestmentProfile {
    private String quetion;
    private String answer1;
    private String answer2;
    private String answer3;
    private int value1;
    private int value2;
    private int value3;

    // full - args constructor
    public InvestmentProfile(String quetion , String answer1, String answer2, String answer3, int value1, int value2, int value3){
        this.quetion = quetion;
        this.answer1 = answer1;
        this.answer2 = answer2;
        this.answer3 = answer3;
        this.value1 = value1;
        this.value2 = value2;
        this.value3 = value3;

    }

    // getters

    public int getValue1() {
        return value1;
    }

    public int getValue2() {
        return value2;
    }

    public int getValue3() {
        return value3;
    }

    public String getQuetion() {
        return quetion;
    }

    public String getAnswer1() {
        return answer1;
    }
    public String getAnswer2() {
        return answer2;
    }
    public String getAnswer3() {
        return answer3;
    }
    



    
}
