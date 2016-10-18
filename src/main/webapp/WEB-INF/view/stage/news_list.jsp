<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>新闻动态</title>
    <link href="/css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/setHomeSetFav.js"></script>
</head>

<body>

<%@ include file="header.jsp" %>

<div class="wrap">
    <div  class="logo">
        <div class="logo_left"></div>
        <div class="logo_right">
            <img src="/images/tel.jpg" width="28" height="28" />
            24小时服务热线：<span class="tel">123-456-7890</span>
        </div>
    </div>
    <!--logo结束-->
    <div class="nav">
        <div  class="nav_left"></div>
        <div class="nav_mid">
            <div class="nav_mid_left">
                <ul>
                    <li><a href="/news/stageIndex">首页</a></li>
                    <li><a href="/news/news_list">新闻动态</a></li>
                    <li><a href="/news/company_list">最新公司</a></li>
                    <li><a href="/news/post_list">最新岗位</a></li>
                    <li><a href="/news/about">关于我们</a></li>
                </ul>
            </div>
            <!--nav_mid_left结束-->
            <div class="nav_mid_right"></div>
            <!--nav_mid_right结束-->
        </div>
        <!--导航主体nav_mid结束-->
        <div class="nav_right"></div>
    </div>
    <!--nav结束-->

    <div class="news_list_wrap">
        <div class="news_list_left">
            <div class="left_title">
                <h2>新闻动态</h2>
            </div>
            <ul style="margin-left: 10px" >
                <li><a href="/news/news_list">新闻动态</a></li>
                <li><a href="/news/company_list">公司信息</a></li>
                <li><a href="/news/post_list">岗位信息</a></li>
            </ul>
        </div>
        <div class="news_list_right">
            <div class="news_list_title">
                <h2>新闻动态</h2>
            </div>
            <div>
                <ul>
                    <c:forEach var="news" items="${newsList}">
                        <li>
                            <a href="/news/search_news_info?ID=${news.ID}">${news.TITLE}</a>
                            <span style="float: right"><fmt:formatDate value="${news.ADD_DATE}" pattern="yyyy-MM-dd" type="date" dateStyle="long" /></span>
                        </li>
                    </c:forEach>
                </ul>
                <div class="page">
                    <a href="#">首页</a>
                    <a href="#">上一页</a>

                    <a href="#">下一页</a>
                    <a href="#">末页</a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
