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
				<input type="password" id="password" name="password" size="20" maxlength="20" placeholder="20文字以内の半角でご入力ください"required>
			</div>
			<p><input type="checkbox" id="show_password" name="chk_d_ps" onclick="togglePasswordVisibility()">パスワードを表示</p>
			<input type="submit"name="login"value="ログイン">
		</form>
	</div>
</div>
<%@include file="../footer.jsp" %>

<script>
function togglePasswordVisibility() {
    var passwordField = document.getElementById("password");
    var showPasswordCheckbox = document.getElementById("show_password");
    if (showPasswordCheckbox.checked) {
        passwordField.type = "text";
    } else {
        passwordField.type = "password";
    }
}
</script>