<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="template.css" %>
<div class="header-content">
	<h1>得点管理システム</h1>
</div>
<div class="container">
	<div class="sidebar">
	</div>
	<div class="content">
		<p>ログアウトしました。</p>
		<a href="login-in.jsp">ログイン画面へ</a>
	</div>
</div>

<style>
  .logout-container {
    margin: 20px auto; /* 上下のマージン20pxで中央揃え */
    width: 600px; /* 幅を600pxに設定 */
  }

  .logout-header {
    background-color: #f0f0f0; /* 背景をさらに薄い灰色に設定 */
    color: black; /* 文字色を黒に変更 */
    padding: 6px;
    text-align: left; /* 左揃え */
    font-weight: bold; /* 太文字に設定 */
    font-size: 24px; /* 文字サイズを大きく設定 */
  }

  .logout-message {
    text-align: center;
    background-color: #8fbc8f; /* 背景色をさらに濃い緑に設定 */
    color: black;
    padding: 4px;
  }

  /* ログアウトメッセージとログインリンクの間にスペースを追加 */
  .logout-container + a {
    display: block; /* ブロック要素にしてマージンを適用 */
    margin-top: 90px; /* 上部に90pxのスペースを追加 */
    margin-left: 150px; /* 左に40pxのスペースを追加 */
    color: blue; /* 青色に設定 */
    text-decoration: none; /* 下線を削除 */
  }

  .logout-container + a:hover {
    text-decoration: underline; /* ホバー時に下線を表示 */
  }

  /* フッターとの間にスペースを追加 */
  footer {
    margin-top: 40px; /* フッターとの間に40pxのスペースを追加 */
  }
</style>

<div class="logout-container">
  <div class="logout-header">ログアウト</div>
  <p class="logout-message">ログアウトしました。</p>
</div>

<a href="login-in.jsp">ログイン</a>

<%@include file="../footer.jsp" %>
