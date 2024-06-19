<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
	<div class="content">
		<h2>ログイン</h2>
		<div class="id">
			<div class="label">id</div>
			<input type="text" id="id" name="id" size="20" maxlength="20" placeholder="半角でご入力ください"><br>
		</div>

		<div class="password">
			<div class="label">passwoord</div>
			<input type="text" id="password" name="password" size="20" maxlength="20" placeholder="20文字以内の半角でご入力ください">
		</div>
		<input type="checkbox" name="chk_d_ps">
	</div>
</div>
<%@include file="../footer.jsp" %>