<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="template.css" %>
<style>
    .submit-button {
        border: 2px solid blue;
        background-color: white;
        color: blue;
        padding: 5px 15px;
        cursor: pointer;
    }

    .back-button {
        background-color: transparent;
        color: blue;
        border: none;
        text-decoration: underline;
        cursor: pointer;
        padding: 5px 15px;
    }

    .back-button:hover {
        text-decoration: none;
    }
</style>
<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
        <h1>科目情報登録</h1>
        <form action="SubjectCreate.action" method="post">
            <table>
                <tr>
                    <td>科目コード</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="cd" placeholder="科目コードを入力してください" required><br><br>
                    </td>
                </tr>
                <tr>
                    <td>科目名</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="name" placeholder="科目名を入力してください" required><br><br>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="登録" class="submit-button"><br><br>
                        <input type="button" value="戻る" class="back-button" onclick="window.location.href='menu.jsp'">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<%@ include file="../footer.jsp" %>
