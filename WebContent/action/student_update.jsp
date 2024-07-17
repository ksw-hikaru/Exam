<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<style>
    .form-label {
        margin-bottom: 10px; /* 適切な値を設定してください */
    }
</style>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生情報更新</h2>
        <form action="StudentUpdate.action" method="post">
            <div class="form-label">
                <label for="entYear">入学年度:</label><br>
                <input type="text" id="entYear" name="entYear" value="<%= (request.getParameter("entYear") != null) ? request.getParameter("entYear") : "" %>"><br>
            </div>
            <div class="form-label">
                <label for="no">学籍番号:</label><br>
                <input type="text" id="no" name="no" value="<%= (request.getParameter("no") != null) ? request.getParameter("no") : "" %>"><br>
            </div>
            <div class="form-label">
                <label for="name">氏名:</label><br>
                <input type="text" id="name" name="name" value=""><br>
            </div>
            <div class="form-label">
                <label for="classNum">クラス:</label><br>
                <select id="classNum" name="classNum">
                    <option value="">-------</option>
                    <option value="101">101</option>
                    <option value="102">102</option>
                    <option value="103">103</option>
                </select><br>
            </div>

            <label for="isAttend">在学中:</label>
            <input type="checkbox" id="isAttend" name="isAttend" value="true"><br>

            <button type="submit">変更</button>
        </form>

        <!-- 戻るボタン -->
        <a href="student_list.jsp" style="color: blue;">戻る</a>
    </div>
</div>
<%@include file="../footer.jsp" %>
