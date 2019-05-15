package come.poyu.entity;
public class Photo {
    private String username;
    private String car_number;
    private String unrule_recorde;
    private String time;
    private byte[] picture;
    private  String path;

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getCar_number() { return car_number; }
    public void setCar_number(String car_number) {
        this.car_number = car_number;
    }

    public String getUnrule_recorde() {
        return unrule_recorde;
    }
    public String setUnrule_recorde(String unrule_recorde) {
        this.unrule_recorde = unrule_recorde;
        return unrule_recorde;
    }

    public String getTime() {
        return time;
    }
    public void setTime(String time) {
        this.time = time;
    }

    public byte[] getPicture() {
        return picture;
    }
    public void setPicture(byte[] picture) {
        this.picture = picture;
    }

    public String getPath() {
        return path;
    }
    public void setPath(String path) {
        this.path = path;
    }

}
