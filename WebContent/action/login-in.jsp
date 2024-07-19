<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="template.css" %>
<div class="header-content">
	<h1>得点管理システム</h1>
</div>
<div class="container">
	<div class="sidebar">
	</div>
	<div class="content">
		<form action="Login.action" method="post">
			<h2>ログイン</h2>
			<li>${message}</li>
			<div class="id">
				<div class="label">id</div>
				<input type="text" id="id" name="id" size="20" maxlength="20" placeholder="半角でご入力ください" value="${param.id}" required><br>
			</div>

			<div class="password">
				<div class="label">password</div>
				<input type="text" id="password" name="password" size="20" maxlength="20" placeholder="20文字以内の半角でご入力ください"required>
			</div>
			<p><input type="checkbox" name="chk_d_ps">パスワードを表示</p>
			<input type="submit"name="login"value="ログイン">
		</form>
	</div>
</div>
<%@include file="../footer.jsp" %>