<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生情報変更</h2>
        <p>学生情報の変更が完了しました。</p>
        <a href="student_list.jsp">学生一覧</a>
    </div>
</div>
<%@include file="../footer.jsp" %>
