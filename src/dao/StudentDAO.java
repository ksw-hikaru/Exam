package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class StudentDAO extends DAO {

    public List<Student> filter(int entYear, String classNum, boolean isAttend) throws Exception {
        List<Student> list = new ArrayList<>();

        String query = "SELECT * FROM student WHERE ent_year = ? AND class_num = ? AND is_attend = ?";

        try (Connection con = getConnection();
             PreparedStatement st = con.prepareStatement(query)) {

            st.setInt(1, entYear);
            st.setString(2, classNum);
            st.setBoolean(3, isAttend);

            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    Student s = new Student();
                    s.setNo(rs.getInt("no"));
                    s.setName(rs.getString("name"));
                    s.setEntYear(rs.getInt("ent_year"));
                    s.setClassNum(rs.getString("class_num"));
                    s.setAttend(rs.getBoolean("is_attend"));
                    s.setSchoolCd(rs.getString("school_cd"));
                    list.add(s);
                }
            }
        }

        return list;
    }

}
