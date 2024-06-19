package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;

public class StudentSearchAction extends Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        String entYearStr = req.getParameter("entYear");
        String classNum = req.getParameter("classNum");
        String isAttendStr = req.getParameter("isAttend");

        int entYear = (entYearStr != null && !entYearStr.isEmpty()) ? Integer.parseInt(entYearStr) : -1;
        boolean isAttend = isAttendStr != null && isAttendStr.equals("true");

        StudentDAO dao = new StudentDAO();
        List<Student> list = dao.filter(entYear, classNum, isAttend);

        req.setAttribute("students", list);
        return "student_list.jsp";
    }
}
