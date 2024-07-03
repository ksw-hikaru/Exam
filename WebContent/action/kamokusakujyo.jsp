<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<style>
    .delete-button {
        background-color: red;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 15px; /*
    }
    .back-link {
        color: blue;
        text-decoration: none;
        display: inline-block;
        margin-top: 10px;
    }
</style>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>科目情報削除</h2>
        <form action="SubjectDelete.action" method="post">
            <input type="hidden" name="subjectCode" value="F02" />
            <input type="submit" class="delete-button" value="削除" />
        </form>
        <a href="main.action" class="back-link">戻る</a>
    </div>
</div>
<%@include file="../footer.jsp" %>
