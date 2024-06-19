package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class StudentDAO extends DAO {
    public List<Student> search(String keyword) throws Exception {
        List<Student> list = new ArrayList<>();
        Connection con = getConnection();

        PreparedStatement st = con.prepareStatement(
            "SELECT * FROM student WHERE name LIKE ?");
        st.setString(1, "%" + keyword + "%");
        ResultSet rs = st.executeQuery();

        while (rs.next()) {
            Student s = new Student();
            s.setNo(rs.getInt("no"));
            s.setName(rs.getString("name"));
            s.setEntYear(rs.getInt("entyear"));
            s.setClassNum(rs.getString("classnum"));
            s.setAttend(rs.getBoolean("isattend"));
            s.setSchoolCd(rs.getString("schoolcd"));
            list.add(s);
        }

        rs.close();
        st.close();
        con.close();

        return list;
    }


    public List<Student> filter(int entYear, String classNum, boolean isAttend) throws Exception {
        List<Student> list = new ArrayList<>();
        Connection con = getConnection();

        String query = "SELECT * FROM student WHERE entyear = ? AND classnum = ? AND isattend = ?";
        PreparedStatement st = con.prepareStatement(query);
        st.setInt(1, entYear);
        st.setString(2, classNum);
        st.setBoolean(3, isAttend);
        ResultSet rs = st.executeQuery();

        while (rs.next()) {
            Student s = new Student();
            s.setNo(rs.getInt("no"));
            s.setName(rs.getString("name"));
            s.setEntYear(rs.getInt("entyear"));
            s.setClassNum(rs.getString("classnum"));
            s.setAttend(rs.getBoolean("isattend"));
            s.setSchoolCd(rs.getString("schoolcd"));
            list.add(s);
        }

        rs.close();
        st.close();
        con.close();

        return list;
    }
}
