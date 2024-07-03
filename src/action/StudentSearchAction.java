package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

        if (isAttendStr != null && isAttendStr.equals("true")) {
            isAttend = true;
        }

        HttpSession session = req.getSession();
        String schoolCd = (String) session.getAttribute("schoolCd");

        if (schoolCd == null) {
            req.setAttribute("errorMessage", "学校コードが取得できませんでした。ログインしてください。");
            return "error.jsp";
        }

        System.out.println("School Code: " + schoolCd);

        List<Student> list = dao.filter(entYear, classNum, isAttend, schoolCd);

        req.setAttribute("students", list);

        return "student_list.jsp";
    }
}
