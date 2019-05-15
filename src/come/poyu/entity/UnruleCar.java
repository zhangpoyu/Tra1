package come.poyu.entity;

public class UnruleCar {
    private int id;
    private String name;
    private String number;
    private String car_number;
    private String unrule_record;
    private String unrule_reason;

    public int getId() {
        return id;
    }

    public int setId(int id) {
        this.id = id;
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getCar_number() {
        return car_number;
    }

    public void setCar_number(String car_number) {
        this.car_number = car_number;
    }

    public String getUnrule_record() {
        return unrule_record;
    }

    public void setUnrule_record(String unrule_record) {
        this.unrule_record = unrule_record;
    }


    public String getUnrule_reason() {
        return unrule_reason;
    }

    public void setUnrule_reason(String unrule_reason) {
        this.unrule_reason = unrule_reason;
    }
}
