<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>最新公司</title>
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
                <h2>最新公司</h2>
            </div>
            <h1 style="line-height: 40px;">${companyDetail.NAME}</h1>
            <p class="news_info">
                日期：<fmt:formatDate value="${companyDetail.ADD_DATE}" pattern="yyyy-MM-dd" type="date" dateStyle="long" />
            </p>
            <div class="company_content">
                ◆ 联系方式：${companyDetail.TEL}<br>
                ◆ 公司地址：${companyDetail.ADDRESS}<br>
                ◆ 公司规模：${companyDetail.SCALE}<br>
                ◆ 所属行业：${companyDetail.INDUSTRY}<br>
                ◆ 公司介绍：${companyDetail.DESCRIPTION}<br>
            </div>

        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
