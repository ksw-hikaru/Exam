<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<%@include file="../header.jsp" %>
<%@include file="template.css" %>

<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生情報登録</h2>
        <form action="StudentCreate.action" method="post">
           <label for="entYear">入学年度<br>
			<select name="entYear">
				<option value="">-------</option>
				<option value="2024">2024</option>
				<option value="2023">2023</option>
				<option value="2022">2022</option>
			</select>
			</label>
			<br>
			<label>学生番号<br>
				<input type="text" name="No" placeholder="学生番号を入力してください">
			</label>
			<br>
			<label>氏名<br>
				<input type="text" name="Name" placeholder="氏名を入力してください">
			</label>
			<br>
			<label for="classNum">クラス<br>
				<select id="classNum" name="classNum">
					<option value="101">101</option>
					<option value="102">102</option>
				</select>
			</label>
			<br>
			<input type="submit" value="登録して終了">
		</form>
        <a href="student_list.jsp">戻る</a>
	</div>
</div>

<%@include file="../footer.jsp" %>
