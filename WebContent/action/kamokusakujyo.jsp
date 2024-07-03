<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h1>科目削除</h1>
        <form action="deleteSubject" method="post">
        	<input type="submit" value="削除">
        </form>
    </div>
</div>

<%@include file="../footer.jsp" %>


