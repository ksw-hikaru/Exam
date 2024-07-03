package bean;

import java.io.Serializable;

public class Subject implements Serializable {
    private String school_cd;
    private String cd;
    private String name;

    public String getSchoolcd() {
        return school_cd;
    }

    public void setSchoolcd(String school_cd) {
        this.school_cd = school_cd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCd() {
        return cd;
    }

    public void setCd(String cd) {
        this.cd = cd;
    }
}