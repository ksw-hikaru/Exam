package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Subject;
import dao.SubjectDAO;
import tool.Action;

public class SubjectSearchAction extends Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

        HttpSession session = req.getSession();
        String schoolCd =(String) session.getAttribute("schoolCd");

<<<<<<< HEAD
        System.out.println("School Code サーチアクション: " + schoolCd);
=======
        System.out.println("School Code: サーチアクション " + schoolCd);
>>>>>>> branch 'master' of https://github.com/ksw-hikaru/Exam.git

        SubjectDAO dao = new SubjectDAO();
        List<Subject> list = dao.filter(schoolCd);

        req.setAttribute("subjects", list);

        return "Subject_list.jsp";
    }
}
