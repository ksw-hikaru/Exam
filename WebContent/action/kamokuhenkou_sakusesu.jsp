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
    .container {
        display: flex;
    }
    .menu {
        width: 20%;
    }
    .content {
        width: 80%;
    }
    .status {
        margin-top: 10px;
        background-color: lightgreen;
        padding: 10px;
        border: 1px solid green;
    }
</style>
<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
        <h1>科目情報変更</h1>
        <div class="status">変更が完了しました</div>

    </div>
</div>
<%@ include file="../footer.jsp" %>
