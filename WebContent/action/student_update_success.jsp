<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>

    <meta charset="UTF-8">
    <title>学生情報変更</title>
    <style>
        .background-info {
            background-color: #d3d3d3;
            padding: 10px;
            width: 280%; /* 横のサイズを変更 */
            height: 30px; /* 縦のサイズを変更 */
            margin: auto; /* 中央揃え */
        }

        .background-success {
            background-color: #d4edda;
            padding: 10px;
            width: 280%; /* 横のサイズを変更 */
            height: 20px; /* 縦のサイズを変更 */
            margin: auto; /* 中央揃え */
        }
    </style>
<body>
    <div class="container">
        <%@include file="menu.jsp" %>
        <div>
            <h2 class="background-info">学生情報変更</h2>
            <p class="background-success">学生情報の変更が完了しました。</p>
            <p><a href="student_list.jsp">学生一覧</a></p>
        </div>

    </div>
    <%@include file="../footer.jsp" %>
</body>
</html>