<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="template.css" %>
<style>
    .button-change {
        background-color: blue;
        color: white;
        border: none;
        padding: 5px 5px;
        cursor: pointer;
    }
    .button-back {
        background-color: white;
        color: blue;
        border: none;
        text-decoration: underline;
        cursor: pointer;
    }
</style>
<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
        <h1>科目情報変更</h1>
        <form action="changeSubject" method="post">
            <table>
                <tr>
                    <td>科目コード</td>
                    <td><input type="text" name="cd" required></td>
                </tr>
                <tr>
                    <td>科目名</td>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="変更" class="button-change"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="button" value="戻る" class="button-back" onclick="history.back()"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<%@ include file="../footer.jsp" %>
