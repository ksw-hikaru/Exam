package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Subject;
import dao.SubjectDAO;

public class SubjectSearchAction extends Action {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        // リクエストからパラメータを取得
        String school_cd = req.getParameter("school_cd");
        String cd = req.getParameter("cd");
        String name = req.getParameter("name");

        // SubjectDAOを使用してデータベースから結果を取得
        SubjectDAO dao = new SubjectDAO();
        List<Subject> subjects = dao.filter(school_cd, cd, name);

        // 取得した結果をリクエスト属性に設定
        req.setAttribute("subjects", subjects);

        // 次のページに転送
        return "subject_list.jsp"; // 転送先のJSPページを指定
    }
}
