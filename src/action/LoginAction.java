package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Teacher;
import dao.TeacherDAO;
import tool.Action;

public class LoginAction extends Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();

        String id = request.getParameter("id");
        String password = request.getParameter("password");
        TeacherDAO dao = new TeacherDAO();
        Teacher teacher = dao.login(id, password);

        if (teacher != null) {
            session.setAttribute("teacher", teacher);
            session.setAttribute("schoolCd", teacher.getSchoolCd());
            return "index.jsp";
        } else {
            request.setAttribute("message", "IDまたはパスワードが違います");
            request.setAttribute("id", id);
            return "login-in.jsp";
        }
    }
}
