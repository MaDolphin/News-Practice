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

    <title>公司</title><LINK href="<%=path %>/css/CSS.css" type=text/css
                           rel=stylesheet>

    <script language="javascript">
        function add(){
            window.location="/gongsi_add";
        }
    </script>



</head>

<body >
<p>公司列表：</p>
<form name="query" id="form1" method="post" action="query_cpy">
    搜索:公司:
    <input name="NAME" type="text" id="bianhao" />
    行业
    <input name="INDUSTRY" type="text" id="mingcheng" />
    <input type="submit" name="Submit" value="查找" />
    <input type="button" name="but" value="新增" onclick="add();"/>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
    <tr>
        <td width="100" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>公司名称</td>
        <td bgcolor='#CCFFFF'>注册资金</td>
        <td bgcolor='#CCFFFF'>电话</td>
        <td bgcolor='#CCFFFF'>规模</td>
        <td bgcolor='#CCFFFF'>行业</td>
        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
        <td width="60" align="center" bgcolor="CCFFFF">操作</td>
    </tr>
    <c:forEach items="${gongsi}" var="i">
        <tr>
            <td width="30" align="center">${i.ID}</td>
            <td><a href="/gongsi_detail?id=${i.ID}"> ${i.NAME}</a></td>
            <td>${i.FUNDS}</td>
            <td>${i.TEL}</td>
            <td>${i.SCALE}</td>
            <td>${i.INDUSTRY}</td>
            <td width="138" align="center"><fmt:formatDate value="${i.ADD_DATE}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
            <td width="60" align="center"><a href="gongsi_updt?id=${i.ID}">修改</a>|<a href="gongsi_dele?id=${i.ID}" onClick="return confirm('真的要删除？')">删除</a></td>
        </tr>
    </c:forEach>




</table>

</body>

</html>


