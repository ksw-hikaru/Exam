package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
}