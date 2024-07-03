package action;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Subject;
import dao.SubjectDAO;
import tool.Action;

public class SubjectCreateAction extends Action {
	public  String execute(HttpServletRequest req, HttpServletResponse res	) throws Exception{
		 	String subjectCode = req.getParameter("cd");
	        String subjectName = req.getParameter("name");
	        String schoolCd = "your_school_code"; // 学校コードを適切に設定

	        Subject subject = new Subject();
	        subject.setCd(subjectCode);
	        subject.setName(subjectName);
	        subject.setSchoolCd(schoolCd);

	        SubjectDAO subjectDAO = new SubjectDAO();  // DAOのインスタンスを作成

	        try {
	            boolean isSaved = subjectDAO.save(subject);  // 非staticメソッドをインスタンスから呼び出す
	            if (isSaved) {
	                res.sendRedirect("successPage.jsp");
	            } else {
	                res.sendRedirect("errorPage.jsp");
	            }
	        } catch (Exception e) {
	            throw new ServletException("Error saving subject", e);
	        }

	        return "kamokutouroku.jsp";
}
	}


