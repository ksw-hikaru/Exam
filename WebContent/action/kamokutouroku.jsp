<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目登録</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <%@ include file="../header.jsp" %>
    <div class="content">
        <h1>科目登録</h1>
        <form action="registerSubject" method="post">
            <table>
                <tr>
                    <td>学校コード:</td>
                    <td><input type="text" name="school_cd" required></td>
                </tr>
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

    <%@ include file="../footer.jsp" %>
</body>
</html>
