package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
            s.setSchoolcd(rs.getString("school_cd"));
            list.add(s);
        }

        rs.close();
        st.close();
        con.close();

        return list;
    }
    public boolean save(Subject subject) throws Exception{
    	String query = "INSERT INTO SUBJECT (SCHOOL_CD,CD,NAME) VALUES(?,?,?)";

    	try(Connection con=getConnection();
    			 PreparedStatement st = con.prepareStatement(query)) {

    		st.setString(1, subject.getCd());
    		st.setString(2, subject.getName());
    		st.setString(3, subject.getSchoolcd());

    		int rowsAffected=st.executeUpdate();
    		return rowsAffected > 0;
    	} catch (SQLException e) {
    		e.printStackTrace();
    		return false;
    	}
    }
}