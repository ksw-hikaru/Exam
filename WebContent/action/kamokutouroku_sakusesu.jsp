<<<<<<< HEAD
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>success</h2>
        <br><a href="SubjectSearch.action">戻る</a>
=======
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp" %>
<%@ include file="template.css" %>
>>>>>>> branch 'master' of https://github.com/ksw-hikaru/Exam.git

<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
        <h2>科目情報変更</h2>
        <div class="message">
            変更が完了しました
        </div>
        <a href="subjectList.action" class="back-link">科目一覧</a>
    </div>
</div>
<%@ include file="../footer.jsp" %>