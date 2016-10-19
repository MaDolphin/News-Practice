<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="footer">
    <div class="footer_content">
        <ul>
            <c:forEach var="link" items="${linkListTop}">
                <li><a href="${link.URL}">${link.NAME}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>
