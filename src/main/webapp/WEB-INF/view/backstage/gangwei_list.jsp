
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

  <body >
  <p>已有岗位列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:公司:
     <input name="bianhao" type="text" id="bianhao" />
     岗位名称
     <input name="mingcheng" type="text" id="mingcheng" />
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
  
  <tr>
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
  </tr>

</table>

  </body>
</html>

