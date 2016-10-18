<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>最新岗位</title>
    <link href="/css/main.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="/js/setHomeSetFav.js"></script>
    <script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
    $(function(){
        var heightLeft= $("#Left").height();
        var heightRight= $("#Right").height();
        if (heightLeft > heightRight)
        {
            $("#Right").height(heightLeft);
        }
        else
        {
            $("#Left").height(heightRight);
        }
    })
</script>
<body>

<%@ include file="header.jsp" %>

<div class="wrap">

    <%@ include file="nav.jsp" %>

    <div class="news_list_wrap">

        <%@ include file="wrapLeft.jsp" %>

        <div class="news_list_right" id="Right">
            <div class="news_list_title">
                <h2>最新岗位</h2>
            </div>
                <ul>
                    <c:forEach var="post" items="${postList}">
                        <li style="border-bottom:1px dotted #CCCCCC;">
                            <a href="/post/search_post_info?ID=${post.id}">${post.name}</a>
                            <span style="float: right">${fn:substringBefore(post.addDate, " ")}</span>
                        </li>
                    </c:forEach>
                </ul>
                <ul  class="pager">
                    <li><a href="/post/post_list?page=1&count=10">首页</a></li>
                    <c:if test="${currentPage>1}">
                        <li><a href="/post/post_list?page=${currentPage-1}&count=10">上一页</a></li>
                    </c:if>
                    <c:if test="${currentPage<=1}">
                        <li class="disabled"><a>上一页</a></li>
                    </c:if>
                    <c:if test="${currentPage != pageCount}">
                        <li><a href="/post/post_list?page=${currentPage+1}&count=10">下一页</a></li>
                    </c:if>
                    <c:if test="${currentPage == pageCount}">
                        <li class="disabled"><a>下一页</a></li>
                    </c:if>
                    <li><a href="/post/post_list?page=${pageCount}&count=10">末页</a></li>
                </ul>


        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
