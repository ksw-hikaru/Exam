<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<style>
    .form-label {
        margin-bottom: 10px;
    }
</style>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>科目情報変更</h2>
        <form action="SubjectUpdate.action" method="post">
        	<div>
        	<label>科目コード</label><br>
        	<input type="hidden" name="cd" value="<%= request.getParameter("cd") %>"><%= request.getParameter("cd") %><br>
        	</div>
        	${errorMessage}
        	<div>
        	<label>科目名</label><br>
        	<input type="text"id="name"name="name"value=""required><br>
        	</div>
            <button type="submit">変更</button>
        </form>
        <a href="SubjectSearch.action" style="color: blue;">戻る</a>
    </div>
</div>
<%@include file="../footer.jsp" %>
