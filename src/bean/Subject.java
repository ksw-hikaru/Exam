package bean;

import java.io.Serializable;

public class Subject implements Serializable {
    private String schoolCd;
    private String cd;
<<<<<<< HEAD
    private String name;
=======
    private String name;
>>>>>>> branch 'master' of https://github.com/ksw-hikaru/Exam.git

    public String getSchoolCd() {
        return schoolCd;
    }
    public void setSchoolCd(String schoolCd) {
        this.schoolCd = schoolCd;
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