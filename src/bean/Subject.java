package bean;

import java.io.Serializable;

public class Subject implements Serializable {
    private String schoolcd;
    private String cd;
    private String name;

    public String getSchoolCd() {
        return schoolcd;
    }

    public void setSchoolCd(String schoolcd) {
        this.schoolcd = schoolcd;
    }

    public String getCd() {
        return cd;
    }

    public void setCd(String cd) {
        this.cd = cd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
