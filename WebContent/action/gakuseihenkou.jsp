<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生情報変更</h2>
        <form action="StudentUpdate.action" method="post">
            <table>
                <tr>
                    <td>入学年度</td>
                    <td>
                        <input type="text" name="admissionYear" value="2023" />
                    </td>
                </tr>
                <tr>
                    <td>学生番号</td>
                    <td>
                        <input type="text" name="studentNumber" value="123456" />
                    </td>
                </tr>
                <tr>
                    <td>氏名</td>
                    <td>
                        <input type="text" name="name" value="大原次郎" />
                    </td>
                </tr>
                <tr>
                    <td>クラス</td>
                    <td>
                        <input type="text" name="class" value="201" />
                    </td>
                </tr>
                <tr>
                    <td>在学中</td>
                    <td>
                        <input type="checkbox" name="status" value="在学中" checked />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="変更" />
                        <button type="button" onclick="window.location.href='main.action'">戻る</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<%@include file="../footer.jsp" %>
