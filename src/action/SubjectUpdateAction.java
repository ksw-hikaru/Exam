package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Subject;
import dao.SubjectDAO;
import tool.Action;

public class SubjectUpdateAction extends Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
    	HttpSession session = req.getSession();
        String schoolCd = (String) session.getAttribute("schoolCd");
        System.out.println("School Code: " + schoolCd);

        String subjectCode = req.getParameter("cd");
        String subjectName = req.getParameter("name");

        Subject subject = new Subject();
        subject.setSchoolCd(schoolCd);
        subject.setCd(subjectCode);
        subject.setName(subjectName);

        SubjectDAO dao = new SubjectDAO();
        boolean success = dao.update(subject);

        if (success) {
            return "subject_update_success.jsp";
        } else {
        	req.setAttribute("errorMessage", "科目が存在していません");
            return "subject_update.jsp";
        }
    }
}