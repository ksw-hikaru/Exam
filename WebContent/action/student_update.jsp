<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生情報更新</h2>
        <form action="StudentUpdate.action" method="post">
		    <label for="entYear">入学年度:<br><br>
		    <input type="hidden" id="entYear" name="entYear" value="<%= request.getParameter("entYear") %>"><%= request.getParameter("entYear") %><br><br>
		    </label>
		    <label for="no">学籍番号:<br><br>
		    <input type="hidden" id="no" name="no" value="<%= request.getParameter("no") %>"><%= request.getParameter("no") %><br><br>
		    </label>
		    <label for="name">氏名:<br><br>
		    <input type="text" id="name" name="name" value=""><br><br>
		    </label>
		    <label for="classNum">クラス:<br><br>
		    <select id="classNum" name="classNum">
		        <option value="">-------</option>
		        <option value="101" >101</option>
		        <option value="102" >102</option>
		        <option value="103" >103</option>
		    </select>
		    </label><br><br>

		    <label for="isAttend">在学中:</label>
		    <input type="checkbox" id="isAttend" name="isAttend" value="true"><br><br>

		    <button type="submit">更新</button>
		</form>
    </div>
</div>
<%@include file="../footer.jsp" %>
