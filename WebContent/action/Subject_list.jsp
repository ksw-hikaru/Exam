<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" type="text/css" href="template.css">

<style>

</style>

<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
<<<<<<< HEAD
        <h1>科目管理</h1>
        <a href="kamokutouroku.jsp">新規登録</a>
        <table border="1">
            <tr>
                <th>科目コード</th>
                <th>科目名</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="subject" items="${subjects}">
=======
        <div class="banner">
            <h1>科目管理</h1>
            <a href="kamokutouroku.jsp" class="register-link">新規登録</a> <!-- 新規登録リンクを追加 -->
        </div>
        <div class="Subject_list">
            <table>
>>>>>>> branch 'master' of https://github.com/ksw-hikaru/Exam.git
                <tr>
<<<<<<< HEAD
                    <td>${subject.cd}</td>
                    <td>${subject.name}</td>
                    <td><a href="kamokuhenko.jsp">変更</a></td>
                    <td><a href="kamokusakujyo.jsp?cd=${subject.cd}&name=${subject.name}">削除</a></td>
=======
                    <th>科目コード</th>
                    <th>科目名</th>
                    <th></th>
                    <th></th>
>>>>>>> branch 'master' of https://github.com/ksw-hikaru/Exam.git
                </tr>
                <c:forEach var="subject" items="${subjects}">
                    <tr>
                        <td>${subject.cd}</td>
                        <td>${subject.name}</td>
                        <td><a href="kamokuhenko.jsp?cd=${subject.cd}">変更</a></td>
                        <td><a href="kamokusakujyo.jsp?cd=${subject.cd}">削除</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
