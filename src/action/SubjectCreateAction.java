package action;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Subject;
import dao.SubjectDAO;
import tool.Action;

public class SubjectCreateAction extends Action {
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception{
        HttpSession session = req.getSession();
        String schoolCd =(String) session.getAttribute("schoolCd");
        System.out.println("School Code: " + schoolCd);

		String subjectCode = req.getParameter("cd");
		String subjectName = req.getParameter("name");


        Subject subject = new Subject();
        subject.setSchoolCd(schoolCd);
        subject.setCd(subjectCode);
        subject.setName(subjectName);


        SubjectDAO subjectDAO = new SubjectDAO();

        try {
            boolean isSaved = subjectDAO.save(subject);
            if (isSaved) {
                res.sendRedirect("kamokutouroku_sakusesu.jsp");
            } else {
                res.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            throw new ServletException("Error saving subject", e);
        }

        return "kamokutouroku.jsp";
	}
}