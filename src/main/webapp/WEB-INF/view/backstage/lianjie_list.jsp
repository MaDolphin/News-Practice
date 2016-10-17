
<%@ page language="java"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>友情链接</title><LINK href="<%=path %>/css/CSS.css" type=text/css
rel=stylesheet>
	
	<script language="javascript">
		function add(){
			window.location="/link_add";
        }
	</script>    



  </head>

  <body >
  <p>已有岗位列表：</p>
  <form name="query" id="form1" method="post" action="linkquery">
   搜索:名称:
     <input name="linkname" type="text" id="bianhao" />
     岗位名称
     <input type="submit" name="Submit" value="查找" />
	 <input type="button" name="but" value="新增" onclick="add();"/>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
        <td width="100" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>名称</td>
        <td bgcolor='#CCFFFF'>网址</td>
      <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <c:forEach items="${link}" var="i">
      <tr>
          <td width="30%" align="center">${i.ID}</td>
          <td><a href=""> ${i.NAME}</a></td>
          <td>${i.URL}</td>
          <td width="60" align="center"><a href="link_updt?id=${i.ID}">修改</a>|<a href="link_dele?id=${i.ID}" onClick="return confirm('真的要删除？')">删除</a></td>
      </tr>
  </c:forEach>

  


</table>

  </body>

</html>

