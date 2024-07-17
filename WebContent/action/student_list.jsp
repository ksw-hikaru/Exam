<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h2>学生管理</h2>
        <a href="student_create.jsp">新規登録</a>
        <form action="StudentSearch.action" method="post">
		    <label for="entYear">入学年度:
		    <select id="entYear" name="entYear" >
		    	<option value="">-------</option>
		        <option value="2024">2024</option>
                <option value="2023">2023</option>
                <option value="2022">2022</option>
		    </select>
		    </label>

		    <br>
		    <label for="classNum">クラス:
		    <select id="classNum" name="classNum" >
		    	<option value="">-------</option>
		        <option value="101">101</option>
                <option value="102">102</option>
                <option value="103">103</option>
		    </select>
		    </label>

		    <br>
		    <label for="isAttend">在学中:</label>
		    <input type="checkbox" id="isAttend" name="isAttend" value="true"><br>
		    <button type="submit">絞込み</button>
		</form>

        <c:choose>
            <c:when test="${empty students}">
                <p>学生情報が存在しません。</p>
            </c:when>
            <c:otherwise>
             <h3>検索結果: ${students.size()}件</h3>
                <table border="1">
                    <tr>
                        <th>入学年度</th>
                        <th>学生番号</th>
                        <th>氏名</th>
                        <th>クラス</th>
                        <th>在学中</th>
                        <th></th>
                    </tr>
                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td>${student.entYear}</td>
                            <td>${student.no}</td>
                            <td>${student.name}</td>
                            <td>${student.classNum}</td>
                            <td>${student.attend ? '〇' : '×'}</td>
                            <td><a href="student_update.jsp?no=${student.no}&entYear=${student.entYear}">変更</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<%@include file="../footer.jsp" %>
