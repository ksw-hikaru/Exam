<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="template.css" %>
<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
        <h2>科目情報削除</h2>

        <form action="SubjectDelete.action" method="post">
            <label>
                <p>
                    <%
                        String name = request.getParameter("name");
                        String cd = request.getParameter("cd");
                        if (name == null || name.isEmpty()) {
                            name = "国語";
                        }
                        if (cd == null || cd.isEmpty()) {
                            cd = "A01";
                        }
                    %>
                    「<%= name %>（<%= cd %>）」を削除してもよろしいですか
                </p>
            </label>
            <input type="hidden" name="cd" value="<%= cd %>">
            <input type="hidden" name="name" value="<%= name %>">
            <input type="submit" value="削除" style="background-color: red; color: white; border-radius: 8px; padding: 10px 10px; border: none; cursor: pointer;">
        </form>
        <br><a href="Subject_list.jsp">戻る</a>
    </div>
</div>

<%@ include file="../footer.jsp" %>
