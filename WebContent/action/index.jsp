<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp" %>
<%@ include file="template.css" %>
<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
        <h2>メニュー</h2>
        <div class="menu">
            <div class="menu-item" style="background-color: lightcoral;">
                <a href="student_list.jsp">学生管理</a>
            </div>
            <div class="menu-item" style="background-color: lightgreen;">
                <div>成績管理
                <a href="">成績登録</a>
                <a href="">成績参照</a>
                </div>
            </div>
            <div class="menu-item" style="background-color: lightblue;">
                <a href="SubjectSearch.action">科目管理</a>
            </div>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>