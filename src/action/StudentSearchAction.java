package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;
import tool.Action;

public class StudentSearchAction extends Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        StudentDAO dao = new StudentDAO();

        String entYearStr = req.getParameter("entYear");
        String classNum = req.getParameter("classNum");
        String isAttendStr = req.getParameter("isAttend");

        int entYear = -1;
        boolean isAttend = false;


        if (entYearStr != null && !entYearStr.isEmpty()) {
            try {
                entYear = Integer.parseInt(entYearStr);
            } catch (NumberFormatException e) {}
        }


        if (isAttendStr != null && isAttendStr.equals("true")) {
            isAttend = true;
        }

        List<Student> list = dao.filter(entYear, classNum, isAttend);


        req.setAttribute("students", list);

        return "student_list.jsp";
    }
}
