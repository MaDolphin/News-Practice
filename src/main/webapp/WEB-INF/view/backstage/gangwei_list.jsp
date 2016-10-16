<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java"  pageEncoding="gb2312"%>
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
			window.location="gangwei_add.jsp";
		}
	</script>    



  </head>
  <style>
      a {
          font-size: 15px !important;
          padding-left: 5px;
          color: #FF0000;
          font-style: italic;
      }
      .page{
          float: right;
          padding-top: 20px;
      }
  </style>
  <body >
  <p>已有岗位列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:公司:
     <input name="id" type="text" id="id" />
     岗位名称
     <input name="name" type="text" id="name" />
     <input type="submit" name="Submit" value="查找" />
	 <%--<input type="button" name="but" value="新增" onclick="add();"/>--%>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <thead>
  <tr>
      <th width="30" align="center" bgcolor="CCFFFF">序号</th>
      <th bgcolor='#CCFFFF'>公司</th>
      <th bgcolor='#CCFFFF'>岗位名称</th>
      <th bgcolor='#CCFFFF'>招聘人数</th>
      <th bgcolor='#CCFFFF'>性别要求</th>
      <th bgcolor='#CCFFFF'>学历</th>
      <th bgcolor='#CCFFFF'>工作地点</th>
      <th bgcolor='#CCFFFF'>职位描述</th>
      <th bgcolor='#CCFFFF'>月薪</th>
      <th width="138" align="center" bgcolor="CCFFFF">添加时间</th>
      <%--<th width="60" align="center" bgcolor="CCFFFF">操作</th>--%>
  </tr>
  </thead>
    <tbody>
        <c:forEach var="post" items="${postList}">
            <tr>
                <td width="30" align="center">${post.id}</td>
                <td>${post.companyId}</td>
                <td>${post.name}</td>
                <td>${post.demandNumber}</td>
                <td>${post.sex}</td>
                <td>${post.education}</td>
                <td>${post.workplace}</td>
                <td>${post.description}</td>
                <td>${post.salary}</td>
                <td width="138" align="center">${post.addDate}</td>
               <%-- <td width="60" align="center"><a href="gangwei_updt.jsp?id=1">修改</a>|<a href="del.jsp?id=1&tablename=gangwei" onClick="return confirm('真的要删除？')">删除</a></td>--%>
            </tr>
        </c:forEach>

    </tbody>

  
 <%-- <tr>
    <td width="30" align="center">1</td>
    <td>北京信雅技术有限公司</td>
	<td>技术员</td>
	<td>2人</td>
	<td>男</td>
	<td>1500</td>
    <td width="138" align="center">2012-10-13</td>
    <td width="60" align="center"><a href="gangwei_updt.jsp?id=1">修改</a>|<a href="del.jsp?id=1&tablename=gangwei" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  
  <tr>
    <td width="30" align="center">2</td>
    <td>北京信雅技术有限公司</td>
	<td>工程师</td>
	<td>1人</td>
	<td>不限</td>
	<td>2000</td>
    <td width="138" align="center">2012-10-13</td>
    <td width="60" align="center"><a href="gangwei_updt.jsp?id=1">修改</a>|<a href="del.jsp?id=1&tablename=gangwei" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>--%>

</table>
  <div class="page">
      <a href="">首页</a>
      <a href="">上一页</a>
      <a href="">1</a>
      <a href="">2</a>
      <a href="">3</a>
      <a href="">4</a>
      <a href="">5</a>
      <a href="">下一页</a>
      <a href="">末页</a>
  </div>


  </body>
</html>

