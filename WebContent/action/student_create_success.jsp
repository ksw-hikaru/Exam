<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生情報登録</h2>
        <div class="message">
            登録が完了しました
        </div>
        <div class="actions">
            <a href="student_create.jsp">戻る</a>
            <a href="student_list.jsp">学生一覧</a>
        </div>
    </div>
</div>
<%@include file="../footer.jsp" %>
