<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp" %>
<%@include file="template.css" %>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
<div class="container">
    <%@include file="menu.jsp" %>
    <h1>Subject List</h1>
    <table>
        <thead>
            <tr>
                <th>School Code</th>
                <th>Subject Code</th>
                <th>Subject Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="subject" items="${subjects}">
                <tr>
                    <td>${subject.subjectcd}</td>
                    <td>${subject.cd}</td>
                    <td>${subject.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<%@include file="../footer.jsp" %>
