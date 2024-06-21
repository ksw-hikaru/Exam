<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>

    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: auto;
        }
        header {
            text-align: center;
            padding: 10px;
            background-color: #f0f0f0;
        }
        .nav {
            margin-top: 20px;
        }
        .nav a {
            display: block;
            margin: 10px 0;
            text-decoration: none;
            color: #0000ee;
        }
        .main {
            margin-top: 20px;
            padding: 20px;
            background-color: #f9f9f9;
        }
        .form-inline {
            display: flex;
            align-items: center;
            margin-top: 20px;
        }
        .form-inline .form-group {
            margin-right: 10px;
        }
        .form-inline label {
            margin-right: 5px;
        }
        .form-inline select {
         margin-right: 10px;
         }
            .form-inline #subject {
        width: 180px;
        }
    .form-inline {
        display: flex; /* 横並びにするための追加 */
        align-items: center;
        margin-top: 20px;
    }
    .form-inline .form-group {
        margin-right: 10px;
    }
    .form-inline button {
        padding:3px 7px;
        margin-left: 5px; /* ボタンと他の要素の間隔を設定 */
    }
    .container {
        width: 100%; /* 例: 幅を広げる */
        margin: auto;
    }
        .footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
        }
    </style>

<div class="container">
<%@include file="menu.jsp" %>
    <h2>成績管理</h2>
    <div class="form-inline">
        <div class="form-group">
            <label for="entry-year">入学年度</label>
            <select id="entry-year" name="entry-year">
                <option value="">--------</option>
            </select>
        </div>
        <div class="form-group">
            <label for="class">クラス</label>
            <select id="class" name="class">
                <option value="">--------</option>
            </select>
        </div>
        <div class="form-group">
            <label for="subject">科目</label>
            <select id="subject" name="subject">
                <option value="">--------</option>
            </select>
        </div>
        <div class="form-group">
            <label for="times">回数</label>
            <select id="times" name="times">
                <option value="">--------</option>
            </select>
        </div>
        <button type="submit">検索</button>
    </div>
</div>

<%@include file="../footer.jsp" %>
