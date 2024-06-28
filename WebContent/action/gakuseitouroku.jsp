<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>

<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生情報登録</h2>
        <form action="StudentCreate.action" method="post">
            <table>
                <tr>
                    <td>入学年度</td>
                    <td>
                        <select name="enrollmentYear">
                            <option value="">-------</option>
                            <!-- 必要に応じて年度を追加 -->
                            <option value="2024">2024</option>
                            <option value="2023">2023</option>
                            <option value="2022">2022</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>学生番号</td>
                    <td><input type="text" name="studentNumber" placeholder="学生番号を入力してください"></td>
                </tr>
                <tr>
                    <td>氏名</td>
                    <td><input type="text" name="studentName" placeholder="氏名を入力してください"></td>
                </tr>
                <tr>
                    <td>クラス</td>
                    <td>
                        <select name="class">
                            <option value="101">101</option>
                            <option value="102">102</option>
                            <option value="103">103</option>
                            <!-- 必要に応じてクラスを追加 -->
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="登録して終了">
                    </td>
                </tr>
            </table>
        </form>
        <a href="previousPage.action">戻る</a>
    </div>
</div>

<%@include file="../footer.jsp" %>
