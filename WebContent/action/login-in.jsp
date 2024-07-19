<%@ page contentType="text/html; charset=UTF-8" %>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            margin-left: 15%;
    		margin-right: 15%;
        }

        .header-content {
        	display: flex;
            text-align: left;
            padding: 0.1px;
            background-color: #e0f7fa; /* 薄い青色 */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header-content h1 {
            margin-left: 20px; /* 右に移動 */
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 70px); /* Adjust height for header */
        }

        .content {
            background-color: white;
            padding: 20px;
            width: 600px; /* 横に2倍の大きさに変更 */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
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

        footer {
            text-align: center;
            padding: 10px;
            background-color: #f0f0f0;
            display: flex;
    		flex-direction: column;
    		align-items: center;
        }
    </style>
<body>
    <div class="header-content">
        <h1>得点管理システム</h1>
    </div>
    <div class="container">
        <div class="content">
            <form action="Login.action" method="post">
                <h2>ログイン</h2>
                <div class="id">
                    <div class="label">ID</div>
                    <input type="text" id="id" name="id" size="20" maxlength="20" placeholder="半角でご入力ください">
                </div>
                <div class="password">
                    <div class="label">パスワード</div>
                    <input type="password" id="password" name="password" size="20" maxlength="20" placeholder="20文字以内の半角でご入力ください">
                </div>
                <div class="checkbox-container">
                    <input type="checkbox" name="chk_d_ps">パスワードを表示
                </div>
                <input type="submit" name="login" value="ログイン">
            </form>
        </div>
    </div>
    <footer>
        © 2023 TIC<br>
        大原学園
    </footer>
   </body>
