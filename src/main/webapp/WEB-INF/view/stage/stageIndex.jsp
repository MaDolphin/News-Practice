<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                <h2 class="titile_left">最新岗位</h2>
                <span class="title_right"><a href="#">More&gt;&gt;</a></span> </div>
            <!--title结束--><!--pic_news结束-->

            <div class="news_list">
                <ul>
                    <li><span>2014-06-01</span> <a href="news.html">【 用户篇】“有为屌丝”在路上</a></li>
                    <li><span>2014-06-01</span><a href="news.html">【有奖活动】给父亲的三行书信</a></li>
                    <li><span>2014-05-30</span><a href="news.html">《程序猿，请晒出你的童年》活动获奖公告</a></li>
                    <li><span>2014-05-28</span><a href="news.html" title="aa">破茧成蝶——美女程序员的蜕变史</a></li>
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

