<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp" %>
<%@ include file="template.css" %>
<div class="container">
    <%@ include file="menu.jsp" %>
    <div class="content">
        <div style="background-color: #f8f9fa; padding: 5px 147px; border-radius: 4px; margin: 20px 0 0 0; width: 100%; text-align: left;">
            <h2 style="margin: 0;">科目情報削除</h2>
        </div>
        <div class="message" style="background-color: #d4edda; color: #155724; padding: 10px 147px; border-radius: 4px; margin: 20px 0; width: 100%; text-align: center;">
            削除が完了しました
        </div>
        <a href="SubjectSearch.action" style="color: #007bff; text-decoration: none;">科目一覧</a>
    </div>
</div>
<%@ include file="../footer.jsp" %>
