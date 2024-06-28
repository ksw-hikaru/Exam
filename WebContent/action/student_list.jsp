<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>

<div class="container">
    <%@include file="menu.jsp" %>
    <div class="content">
        <h1>学生管理</h1>
        <form action="StudentSearch.action" method="post">

		    <label for="entYear">入学年度:
		    <select id="entYear" name="entYear" required>
		        <option value="2010">2010</option>
				<option value="2011">2011</option>
				<option value="2012">2012</option>
				<option value="2013">2013</option>
				<option value="2014">2014</option>
				<option value="2015">2015</option>
				<option value="2016">2016</option>
				<option value="2017">2017</option>
				<option value="2018">2018</option>
				<option value="2019">2019</option>
				<option value="2020">2020</option>
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				<option value="2023"selected>2023</option>
				<option value="2024">2024</option>
				<option value="2025">2025</option>
				<option value="2026">2026</option>
				<option value="2027">2027</option>
				<option value="2027">2028</option>
				<option value="2029">2029</option>
				<option value="2030">2030</option>
				<option value="2031">2031</option>
				<option value="2032">2032</option>
				<option value="2033">2033</option>
				<option value="2034">2034</option>
				<option value="2035">2035</option>
				<option value="2036">2036</option>
				<option value="2037">2037</option>
				<option value="2038">2038</option>
				<option value="2039">2039</option>
				<option value="2040">2040</option>
		    </select>
		    </label>

		    <br>
		    <label for="classNum">クラス:
		    <select id="classNum" name="classNum" required>
		        <option value="101"selected>101</option>
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
                        <th>学籍番号</th>
                        <th>氏名</th>
                        <th>クラス</th>
                        <th>在学中</th>
                        <th>変更</th>
                    </tr>
                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td>${student.entYear}</td>
                            <td>${student.no}</td>
                            <td>${student.name}</td>
                            <td>${student.classNum}</td>
                            <td>${student.attend ? '〇' : '×'}</td>
                            <td><a href="">変更</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<%@include file="../footer.jsp" %>
