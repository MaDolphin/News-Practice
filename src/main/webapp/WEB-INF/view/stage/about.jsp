<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>关于我们</title>
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
                <h2>关于我们</h2>
            </div>
            <h1 style="line-height: 40px;">关于我们</h1>
            <p class="news_info">
                日期：2016-10-18
                &nbsp;
                来源:505计算机实验基地
            </p>
            <div class="news_content">
                <p style="font-size: 15px">京东于2004年正式涉足电商领域。2015年，京东集团市场交易额达到4627亿元，净收入达到1813亿元，年交易额同比增长78%，增速是行业平均增速的2倍*。京东是中国收入规模最大的互联网企业。2016年7月，京东入榜2016《财富》全球500强，成为中国首家、唯一入选的互联网企业。截至2016年6月30日，京东集团拥有超过11万名正式员工，业务涉及电商、金融和技术三大领域。
                2014年5月，京东集团在美国纳斯达克证券交易所正式挂牌上市，是中国第一个成功赴美上市的大型综合型电商平台，并成功跻身全球前十大互联网公司排行榜，2015年7月，京东凭借高成长性入选纳斯达克100指数和纳斯达克100平均加权指数。</p>
            </div>

        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
