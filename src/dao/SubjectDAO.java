package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Subject;

public class SubjectDAO extends DAO {

	public List<Subject> filter(String schoolcd, String cd, String name) throws Exception {
	    List<Subject> list = new ArrayList<>();

	    String query = "SELECT * FROM SUBJECT WHERE school_cd = ?";

	    try (Connection con = getConnection();
        	 PreparedStatement st = con.prepareStatement(query)) {

	    	st.setString(1, schoolcd);

	        try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
		            Subject s = new Subject();
		            s.setCd(rs.getString("cd"));
		            s.setName(rs.getString("name"));
		            s.setSchoolCd(rs.getString("school_cd"));
		            list.add(s);
                }
	        }
	        }
	    return list;
	}
}