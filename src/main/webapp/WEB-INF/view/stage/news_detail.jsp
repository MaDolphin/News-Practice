<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>新闻动态</title>
    <link href="/css/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/js/setHomeSetFav.js"></script>
</head>

<body>

<%@ include file="header.jsp" %>

<div class="wrap">

    <%@ include file="nav.jsp" %>

    <div class="news_list_wrap">

        <%@ include file="wrapLeft.jsp" %>

        <div class="news_list_right">
            <div class="news_list_title">
                <h2>新闻动态</h2>
            </div>
            <h1 style="line-height: 40px;">${newsDetail.TITLE}</h1>
            <p class="news_info">
                日期：<fmt:formatDate value="${newsDetail.ADD_DATE}" pattern="yyyy-MM-dd" type="date" dateStyle="long" />
                &nbsp;
                来源:${newsDetail.USER.username}
            </p>
            <div class="news_content">
                ${newsDetail.CONTENT}
            </div>

        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
