package come.poyu.entity;

public class Car
{
    private int id;
    private String name;
    private String number;
    private String id_card;
    private String email;
    private String car_number;
    private String car_sign;
    private String car_style;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getId_card() {
        return id_card;
    }
    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getEmail() {
    return email;
}
    public void setEmail(String email) {
        this.email = email;
    }


    public void setNumber(String number) {
        this.number = number;
    }
    public String getCar_number() {
        return car_number;
    }

    public String getNumber() {
        return number;
    }
    public void setCar_number(String car_number) {
        this.car_number = car_number;
    }


    public String getCar_sign() {
        return car_sign;
    }
    public void setCar_sign(String car_sign) {
        this.car_sign = car_sign;
    }

    public String getCar_style() {
        return car_style;
    }
    public void setCar_style(String car_style) {
        this.car_style = car_style;
    }



    public void setLiuDingSize(int param) {
        this.liuDingSize = param;
    }

    public void setColorThreshold(int param) {
        this.colorThreshold = param;
    }

    public void setBluePercent(float param) {
        this.bluePercent = param;
    }

    public final float getBluePercent() {
        return this.bluePercent;
    }

    public void setWhitePercent(float param) {
        this.whitePercent = param;
    }

    public final float getWhitePercent() {
        return this.whitePercent;
    }

    public boolean getDebug() {
        return this.isDebug;
    }

    public void setDebug(boolean isDebug) {
        this.isDebug = isDebug;
    }

    // 是否开启调试模式常量，默认false代表关闭
    public static boolean DEFAULT_DEBUG = false;

    // preprocessChar所用常量
    public static int CHAR_SIZE = 20;
    public static int HORIZONTAL = 1;
    public static int VERTICAL = 0;

    public static int DEFAULT_LIUDING_SIZE = 7;
    public static int DEFAULT_MAT_WIDTH = 136;

    public static int DEFAULT_COLORTHRESHOLD = 150;
    public static float DEFAULT_BLUEPERCEMT = 0.3f;
    public static float DEFAULT_WHITEPERCEMT = 0.1f;

   public int liuDingSize = DEFAULT_LIUDING_SIZE;
   public int theMatWidth = DEFAULT_MAT_WIDTH;

   public int colorThreshold = DEFAULT_COLORTHRESHOLD;
   public float bluePercent = DEFAULT_BLUEPERCEMT;
   public float whitePercent = DEFAULT_WHITEPERCEMT;

   public boolean isDebug = DEFAULT_DEBUG;
}
