<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
	<div class="content">
    <h1>学生情報登録</h1>
	    <form action="StudentCreate.action" method="post">

		    <label for="entYear">入学年度<br>
		    <select id="entYear" name="entYear" >
		    	<option value="2034">2034</option>
		    	<option value="2033">2033</option>
		    	<option value="2032">2032</option>
		    	<option value="2031">2031</option>
		    	<option value="2030">2030</option>
		    	<option value="2029">2029</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                <option value="2016">2016</option>
                <option value="2015">2015</option>
                <option value=""selected>------</option>
		        <option value="2024">2024</option>
                <option value="2023">2023</option>
                <option value="2022">2022</option>
                <option value="2021">2021</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                <option value="2016">2016</option>
                <option value="2015">2015</option>
                <option value="2014">2014</option>
		    </select>
		    </label><br>

		    <label for="no">学生番号<br>
		    <input type="text"name="no"id="no" maxlength="10" placeholder="学生番号を入力してください"required><br>
		    </label>

		    <label for="name">氏名<br>
		    <input type="text"name="name"id="name" maxlength="30" placeholder="氏名を入力してください"required><br>
		    </label>

		    <label for="classNum">クラス<br>
		    <select id="classNum" name="classNum" >
		    	<option value="">-------</option>
		        <option value="101">101</option>
                <option value="102">102</option>
                <option value="103">103</option>
		    </select>
		    </label><br>
			<input type="hidden" id="isAttend" name="isAttend" value="true">
		    <button type="submit">登録して終了</button>
	    </form>
	    <a href="student_list.jsp">戻る</a>
	</div>
</div>
<%@ include file="../footer.jsp" %>
