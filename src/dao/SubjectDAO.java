	package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Subject;

public class SubjectDAO extends DAO {

	public List<Subject> filter(String schoolCd) throws Exception {
		List<Subject> list = new ArrayList<>();

		Connection con = getConnection();
	    PreparedStatement st = con.prepareStatement("SELECT * FROM SUBJECT WHERE school_cd = ?");

	    st.setString(1, schoolCd);

	    ResultSet rs = st.executeQuery();
	    while (rs.next()) {
	    	Subject s = new Subject();
	        s.setCd(rs.getString("cd"));
	        s.setName(rs.getString("name"));
	        s.setSchoolCd(rs.getString("school_cd"));
	        list.add(s);
	    }

	    st.close();
	    con.close();

	    return list;
	}

    public boolean save(Subject subject) throws Exception{
    	String query = "INSERT INTO SUBJECT (SCHOOL_CD,CD,NAME) VALUES(?,?,?)";

    	try(Connection con=getConnection();
    			 PreparedStatement st = con.prepareStatement(query)) {

    		st.setString(1, subject.getSchoolCd());
    		st.setString(2, subject.getCd());
    		st.setString(3, subject.getName());

    		int rowsAffected=st.executeUpdate();
    		return rowsAffected > 0;

    	} catch (SQLException e) {
    		e.printStackTrace();
    		return false;
    	}
    }

    public boolean delete(Subject subject) throws Exception {
        String query = "DELETE FROM SUBJECT WHERE SCHOOL_CD = ? AND CD = ? AND NAME = ?";

        try (Connection con = getConnection();
             PreparedStatement st = con.prepareStatement(query)) {

            st.setString(1, subject.getSchoolCd());
            st.setString(2, subject.getCd());
            st.setString(3, subject.getName());

            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean update(Subject subject) throws Exception{
    	String query = "UPDATE SUBJECT SET NAME = ? WHERE SCHOOL_CD = ? AND CD = ?";

    	try (Connection con = getConnection();
                PreparedStatement st = con.prepareStatement(query)) {

    		st.setString(1, subject.getName());
            st.setString(2, subject.getSchoolCd());
            st.setString(3, subject.getCd());

            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
    	} catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    	}
}