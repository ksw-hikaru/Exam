package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class StudentDAO extends DAO {
    public List<Student> filter(int entYear, String classNum, boolean isAttend, String schoolCd) throws Exception {
        List<Student> list = new ArrayList<>();

        String query = "SELECT * FROM student WHERE ent_year = ? AND class_num = ? AND is_attend = ? AND school_cd = ?";

        try (Connection con = getConnection();
             PreparedStatement st = con.prepareStatement(query)) {

            st.setInt(1, entYear);
            st.setString(2, classNum);
            st.setBoolean(3, isAttend);
            st.setString(4, schoolCd);

            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    Student s = new Student();
                    s.setNo(rs.getString("no"));
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

    public boolean save(Student student) throws Exception {
        String query = "INSERT INTO STUDENT (NO, NAME, ENT_YEAR, CLASS_NUM, IS_ATTEND, SCHOOL_CD) VALUES (?, ?, ?, ?, ?, ?)";

        try(Connection con=getConnection();
        		PreparedStatement st = con.prepareStatement(query)) {

            st.setString(1, student.getNo());
            st.setString(2, student.getName());
            st.setInt(3, student.getEntYear());
            st.setString(4, student.getClassNum());
            st.setBoolean(5, student.isAttend());
            st.setString(6, student.getSchoolCd());

            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
     public boolean update(Student student) throws Exception {
        String query = "UPDATE STUDENT SET NAME = ?, CLASS_NUM = ?, IS_ATTEND = ? WHERE NO = ? AND ENT_YEAR = ?";

        try (Connection con = getConnection();
             PreparedStatement st = con.prepareStatement(query)) {

            st.setString(1, student.getName());
            st.setString(2, student.getClassNum());
            st.setBoolean(3, student.isAttend());
            st.setString(4, student.getNo());
            st.setInt(5, student.getEntYear());

            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            throw e; // 例外を呼び出し元に投げる
        }
    }
}