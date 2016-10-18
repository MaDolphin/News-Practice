<%@ page language="java"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">

    <title>新闻</title><LINK href="<%=path %>/css/CSS.css" type=text/css
                           rel=stylesheet>

    <script language="javascript">
        function add(){
            window.location="/news_addview";
        }
    </script>



</head>

<body >
<p>已有新闻列表：</p>
<form name="query_news" id="form1" method="post" action="query_news">
    搜索:
    新闻名称
    <input name="TITLE" type="text" id="biaoti" />
    <input type="submit" name="Submit" value="查找" />
    <input type="button" name="but" value="新增" onclick="add();"/>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
    <tr>
        <td width="100" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>标题</td>
        <td bgcolor='#CCFFFF'>发布人</td>
        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
        <td width="60" align="center" bgcolor="CCFFFF">操作</td>
    </tr>
    <c:forEach items="${a}" var="i">
        <tr>
            <td width="30" align="center">${i.ID}</td>
            <td><a href="/news_detail?id=${i.ID}"> ${i.TITLE}</a></td>
            <td>${i.USER_ID}</td>
            <td width="138" align="center"><fmt:formatDate value="${i.ADD_DATE}" pattern="yyyy年MM月dd日 hh:mm:ss"/></td>
            <td width="60" align="center"><a href="news_updtview?id=${i.ID}">修改</a>|<a href="news_dele?id=${i.ID}" onClick="return confirm('真的要删除？')">删除</a></td>
        </tr>
    </c:forEach>




</table>

</body>

</html>


