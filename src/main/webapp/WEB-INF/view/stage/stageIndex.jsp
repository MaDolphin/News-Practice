<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>企业网站</title>
    <link href="/css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/setHomeSetFav.js"></script>
</head>

<body>
<%@ include file="header.jsp" %>
<!--页面顶端top结束-->

<div class="wrap">

    <%@ include file="nav.jsp" %>

    <div class="main">
        <div class="news">
            <div class="title">
                <h2 class="title_left">新闻动态</h2>
                <span class="title_right"><a href="/news/news_list?page=1&count=10">More&gt;&gt;</a></span>
            </div>
            <!--title结束-->
            <div class="news_list">
                <ul>
                    <c:forEach var="news" items="${newsListTop}">
                        <li>
                            <a href="/news/search_news_info?ID=${news.ID}">${news.TITLE}</a>
                            <span><fmt:formatDate value="${news.ADD_DATE}" pattern="yyyy-MM-dd" type="date" dateStyle="long" /></span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!--news_list结束-->
        </div>
        <!--news结束-->

        <div class="news">
            <div class="title">
                <h2 class="title_left">最新公司</h2>
                <span class="title_right"><a href="/company/company_list?page=1&count=10">More&gt;&gt;</a></span>
            </div>
            <!--title结束-->
            <div class="news_list">
                <ul>
                    <c:forEach var="company" items="${companyListTop}">
                        <li>
                            <a href="/company/search_company_info?ID=${company.ID}">${company.NAME}</a>
                            <span><fmt:formatDate value="${company.ADD_DATE}" pattern="yyyy-MM-dd" type="date" dateStyle="long" /></span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!--news_list结束-->
        </div>
        <!--news结束-->
        <div class="news">
            <div class="title">
                <h2 class="title_left">最新岗位</h2>
                <span class="title_right"><a href="/post/post_list?page=1&count=10">More&gt;&gt;</a></span>
            </div>
            <!--title结束-->
            <div class="news_list">
                <ul>
                    <c:forEach var="post" items="${postListTop}">
                        <li>
                            <a href="/post/search_post_info?ID=${post.id}">${post.name}</a>
                            <%--<span><fmt:formatDate value="${company.ADD_DATE}" pattern="yyyy-MM-dd" type="date" dateStyle="long" /></span>--%>
                            <span>${fn:substringBefore(post.addDate, " ")}</span>

                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!--news_list结束-->
        </div>
        <!--news结束-->
    </div>
    <!--main结束-->
</div>
<!--最外层wrap结束  -->
<%@ include file="footer.jsp" %>
</body>
</html>

