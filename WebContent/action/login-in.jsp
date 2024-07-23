<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="template.css" %>
<div class="header-content">
	<h1>得点管理システム</h1>
</div>
<div class="container">
	<div class="content">
		<form action="Login.action" method="post">
			<h2>ログイン</h2>
			<div class="form">
				<li>${message}</li>
				<div class="id">
					<div class="label">id</div>
					<input type="text" id="id" name="id" size="20" maxlength="20" placeholder="半角でご入力ください" value="${param.id}" required><br>
				</div>
				<div class="password">
					<div class="label">password</div>
					<input type="password" id="password" name="password" size="20" maxlength="20" placeholder="20文字以内の半角でご入力ください"required>
				</div>
			</div>
			<div class="checkbox-container">
			<p><input type="checkbox" id="show_password" name="chk_d_ps" onclick="togglePasswordVisibility()">パスワードを表示</p>
			</div>
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
<style>
        .header-content h1 {
            margin-left: 20px; /* 右に移動 */
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
    		margin-top:5px;
    		margin-bottom:5px;
        }

        .content {
            background-color: white;
            width: 600px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
        	margin-top:0;
    		margin-bottom:0;
            text-align: center;
            background-color:#f5f5f5;
        }
		.form{
			padding:20px 20px 0 20px;
		}
        .id, .password {
            margin-bottom: 15px;
        }

        .label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #e0f7fa; /* 薄い青色 */
        }

        .checkbox-container {
            text-align: center;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            width: 50%; /* サイズを小さく変更 */
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            margin: 0 auto; /* 中央揃え */
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        li{
  			list-style:none;
		}
    </style>
