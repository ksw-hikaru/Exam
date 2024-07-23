package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;
import tool.Action;

public class StudentUpdateAction extends Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        String entYearStr = req.getParameter("entYear");
        String no = req.getParameter("no");
        String name = req.getParameter("name");
        String classNum = req.getParameter("classNum");
        boolean isAttend = req.getParameter("isAttend") != null;

        int entYear = -1;
        if (entYearStr != null && !entYearStr.isEmpty()) {
            try {
                entYear = Integer.parseInt(entYearStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                req.setAttribute("errorMessage", "入学年度の値が不正です。");
                return "error.jsp";
            }
        } else {
            req.setAttribute("errorMessage", "入学年度が指定されていません。");
            return "error.jsp";
        }


        Student student = new Student();
        student.setNo(no);
        student.setName(name);
        student.setEntYear(entYear);
        student.setClassNum(classNum);
        student.setAttend(isAttend);

        StudentDAO dao = new StudentDAO();
        boolean success = dao.update(student);

        if (success) {
            return "student_update_success.jsp";
        } else {
        	req.setAttribute("errorMessage", "更新失敗");
            return "error.jsp";
        }
    }
}
