
<%@ page language="java"  pageEncoding="gb2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>岗位</title><LINK href="<%=path %>/css/CSS.css" type=text/css 
rel=stylesheet>
	
	<script language="javascript">
		function add(){
			window.location="/gangwei_add";
        }
	</script>    



  </head>

  <body >
  <p>已有岗位列表：</p>
  <form name="query" id="form1" method="post" action="query">
   搜索:公司:
     <input name="company" type="text" id="bianhao" />
     岗位名称
     <input name="jobname" type="text" id="mingcheng" />
     <input type="submit" name="Submit" value="查找" />
	 <input type="button" name="but" value="新增" onclick="add();"/>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>公司</td>
	<td bgcolor='#CCFFFF'>岗位名称</td>
	<td bgcolor='#CCFFFF'>招聘人数</td>
	<td bgcolor='#CCFFFF'>性别要求</td>
	<td bgcolor='#CCFFFF'>月薪</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <c:forEach items="${gangwei}" var="i">
      <tr>
          <td width="30" align="center">${i.id}</td>
          <td><a href=""> ${i.company.NAME}</a></td>
          <td>${i.name}</td>
          <td>${i.demandNumber}</td>
          <td>${i.sex}</td>
          <td>${i.salary}</td>
          <td width="138" align="center">${i.addDate}</td>
          <td width="60" align="center"><a href="gangwei_updt?id=${i.id}">修改</a>|<a href="gangwei_dele?id=${i.id}" onClick="return confirm('真的要删除？')">删除</a></td>
      </tr>
  </c:forEach>

  


</table>

  </body>

</html>

