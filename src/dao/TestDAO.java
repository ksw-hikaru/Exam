package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Student;
import bean.Test;

public class TestDAO extends DAO{
    public List<Test> selectTestResults(int entYear, String classNum, String cd, int no, String schoolCd) {
        List<Test> testResults = new ArrayList<>();

        String query =
        		"SELECT STUDENT.ENT_YEAR, STUDENT.CLASS_NUM, STUDENT.NO, STUDENT.NAME, TEST.POINT " +
                "FROM TEST " +
                "JOIN STUDENT ON TEST.STUDENT_NO = STUDENT.NO " +
                "JOIN SUBJECT ON TEST.SUBJECT_CD = SUBJECT.CD " +
                "WHERE STUDENT.ENT_YEAR = ? AND STUDENT.CLASS_NUM = ? AND SUBJECT.CD = ? AND TEST.NO = ? AND STUDENT.SCHOOL_CD = ?";

        try (Connection con = getConnection();
             PreparedStatement st = con.prepareStatement(query)) {
            st.setInt(1, entYear);
            st.setString(2, classNum);
            st.setString(3, cd);
            st.setInt(4, no);
            st.setString(5, schoolCd);

            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    Student student = new Student();
                    student.setEntYear(rs.getInt("ENT_YEAR"));
                    student.setClassNum(rs.getString("CLASS_NUM"));
                    student.setNo(rs.getString("NO"));
                    student.setName(rs.getString("NAME"));

                    Test test = new Test();
                    test.setStudent(student);
                    test.setPoint(rs.getInt("POINT"));

                    testResults.add(test);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return testResults;
    }
}
