package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;
import tool.Action;

public class StudentUpdateAction extends Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        // フォームから受け取ったパラメータを取得
        String entYearStr = req.getParameter("entYear");
        String no = req.getParameter("no");
        String name = req.getParameter("name");
        String classNum = req.getParameter("classNum");
        boolean isAttend = req.getParameter("isAttend") != null; // チェックボックスはnullかどうかで判断する

        // 入学年度を数値に変換
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


        // 学生情報を更新するためのStudentオブジェクトを作成
        Student student = new Student();
        student.setNo(no);
        student.setName(name);
        student.setEntYear(entYear);
        student.setClassNum(classNum);
        student.setAttend(isAttend);

        // DAOを使用してデータベースに更新を反映
        StudentDAO dao = new StudentDAO();
        boolean success = dao.update(student);

        if (success) {
            // 更新成功時の処理
            return "student_update_success.jsp";
        } else {
            // 更新失敗時の処理
        	req.setAttribute("errorMessage", "更新失敗");
            return "error.jsp";
        }
    }
}
