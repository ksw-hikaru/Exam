<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
	<div class="content">
    <h1>科目登録</h1>
	    <form action="SubjectCreate.action" method="post">
	        <table>
	            <tr>
	                <td>科目コード:</td>
	                <td><input type="text" name="cd" required></td>
	            </tr>
	            <tr>
	                <td>科目名:</td>
	                <td><input type="text" name="name" required></td>
	            </tr>
	            <tr>
	                <td colspan="2"><input type="submit" value="登録"></td>
	            </tr>
	        </table>
	    </form>
	</div>
</div>
<%@ include file="../footer.jsp" %>

