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
        if (schoolCd == null) {

                    req.setAttribute("errorMessage", "学校コードが取得できませんでした。ログインしてください。");

                    return "error.jsp";

                }
        System.out.println("School Code: " + schoolCd);


        // SubjectDAOを使用してデータベースから結果を取得
        SubjectDAO dao = new SubjectDAO();
        List<Subject> list = dao.filter(schoolCd);

        // 取得した結果をリクエスト属性に設定
        req.setAttribute("subjects", list);

        // 次のページに転送
        return "Subject_list.jsp"; // 転送先のJSPページを指定
    }
}
