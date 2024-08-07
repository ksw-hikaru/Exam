package action;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Student;
import dao.StudentDAO;
import tool.Action;

public class StudentCreateAction extends Action{
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        Student student = new Student();

		HttpSession session = req.getSession();
        String schoolCd =(String) session.getAttribute("schoolCd");
        System.out.println("School Code: " + schoolCd);

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


        student.setNo(no);
        student.setName(name);
        student.setEntYear(entYear);
        student.setClassNum(classNum);
        student.setAttend(isAttend);
        student.setSchoolCd(schoolCd);

        StudentDAO studentDAO = new StudentDAO();

        try {
            boolean isSaved = studentDAO.save(student);
            if (isSaved) {
                res.sendRedirect("student_create_success.jsp");
            } else {
                res.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            throw new ServletException("", e);
        }

		 return "student_create.jsp";
	}
}
