<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>

<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>科目情報変更</h2>
        <form action="SubjectUpdate.action" method="post">
            <table>
                <tr>
                    <td>科目コード</td>
                    <td><input type="text" name="subjectCode" value="F02"></td> <!-- 初期値を設定 -->
                </tr>
                <tr>
                    <td>科目名</td>
                    <td><input type="text" name="subjectName" value="Javaプログラミング基礎"></td> <!-- 初期値を設定 -->
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="変更">
                    </td>
                </tr>
            </table>
        </form>
        <a href="previousPage.action">戻る</a>
    </div>
</div>

<%@include file="../footer.jsp" %>
