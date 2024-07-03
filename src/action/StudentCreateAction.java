package action;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;
import tool.Action;

public class StudentCreateAction extends Action{
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		StudentDAO dao = new StudentDAO();

		 return "gakuseitouroku.jsp";
	}
}
