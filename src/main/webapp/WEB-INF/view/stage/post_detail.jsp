<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>最新岗位</title>
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
                <h2>最新岗位</h2>
            </div>
            <h1 style="line-height: 40px;">${postDetail.name}</h1>
            <p class="news_info">
                日期：<span>${fn:substringBefore(postDetail.addDate, " ")}</span>
                &nbsp;
                来源:${postDetail.company.NAME}
            </p>
            <div class="company_content">
                ◆ 职位名称：${postDetail.name}<br>
                ◆ 招聘人数：${postDetail.demandNumber}<br>
                ◆ 性别要求：${postDetail.sex}<br>
                ◆ 学历：${postDetail.education}<br>
                ◆ 月薪：${postDetail.salary}<br>
                ◆ 工作地点：${postDetail.workplace}<br>
                ◆ 职位描述：${postDetail.description}<br>
            </div>

        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
