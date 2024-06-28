<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>

<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>科目情報登録</h2>
        <form action="SubjectCreate.action" method="post">
            <table>
                <tr>
                    <td>科目コード</td>
                    <td><input type="text" name="subjectCode" placeholder="科目コードを入力してください"></td>
                </tr>
                <tr>
                    <td>科目名</td>
                    <td><input type="text" name="subjectName" placeholder="科目名を入力してください"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="登録">
                    </td>
                </tr>
            </table>
        </form>
        <a href="previousPage.action">戻る</a>
    </div>
</div>

<%@include file="../footer.jsp" %>
