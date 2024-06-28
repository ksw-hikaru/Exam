package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Subject;

public class SubjectDAO extends DAO {


    public List<Subject> filter(String school_cd, String cd, String name) throws Exception {
        List<Subject> list = new ArrayList<>();
        Connection con = getConnection();

        String query = "SELECT * FROM SUBJECT WHERE SCHOOL_CD= ?";
        PreparedStatement st = con.prepareStatement(query);
        st.setString(1, school_cd);
        ResultSet rs = st.executeQuery();

        while (rs.next()) {
            Subject s = new Subject();
            s.setCd(rs.getString("cd"));
            s.setName(rs.getString("name"));
            s.setSubjectcd(rs.getString("school_cd"));
            list.add(s);
        }

        rs.close();
        st.close();
        con.close();

        return list;
    }

