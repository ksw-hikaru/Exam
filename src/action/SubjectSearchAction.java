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
        SubjectDAO dao = new SubjectDAO();

        // リクエストからパラメータを取得

        String cd = req.getParameter("cd");
        String name = req.getParameter("name");

        HttpSession session = req.getSession();
        String schoolcd =(String) session.getAttribute("schoolcd");

        if (schoolcd == null) {
            // schoolCdが取得できなかった場合の処理（例：エラーメッセージを設定して戻る）
            req.setAttribute("errorMessage", "学校コードが取得できませんでした。ログインしてください。");
            return "error.jsp";
        }

        System.out.println("School Code: " + schoolcd); // ログでschoolCdを確認

        // SubjectDAOを使用してデータベースから結果を取得
        List<Subject> list = dao.filter(schoolcd, cd, name);

        // 取得した結果をリクエスト属性に設定
        req.setAttribute("subjects", list);

        // 次のページに転送
        return "Subject_list.jsp"; // 転送先のJSPページを指定
    }
}
