<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h1>科目情報削除</h1>

        <form action="SubjectDelete.action" method="post">
	        <label>
	        	<p>「<%= request.getParameter("name") %>（<%= request.getParameter("cd") %>）」を削除してもよろしいですか</p>
	        </label>
	        <input type="hidden" name="cd" value="<%= request.getParameter("cd") %>">
            <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
            <input type="submit" value="削除">
        </form>
		<br><a href="SubjectSearch.action">戻る</a>
    </div>
</div>

<%@include file="../footer.jsp" %>
