<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
    <h1>エラーが発生しました</h1>
    <p>申し訳ありませんが、処理中にエラーが発生しました。</p>
    <p>エラーメッセージ: <%= request.getAttribute("errorMessage") %></p>
    <a href="index.jsp">ホームに戻る</a>
    </div>
</div>
<%@include file="../footer.jsp" %>