
<%@ page language="java"  pageEncoding="gb2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��λ</title><LINK href="<%=path %>/css/CSS.css" type=text/css 
rel=stylesheet>
	
	<script language="javascript">
		function add(){
			window.location="/gangwei_add";
        }
	</script>    



  </head>

  <body >
  <p>���и�λ�б�</p>
  <form name="query" id="form1" method="post" action="query">
   ����:��˾:
     <input name="company" type="text" id="bianhao" />
     ��λ����
     <input name="jobname" type="text" id="mingcheng" />
     <input type="submit" name="Submit" value="����" />
	 <input type="button" name="but" value="����" onclick="add();"/>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��˾</td>
	<td bgcolor='#CCFFFF'>��λ����</td>
	<td bgcolor='#CCFFFF'>��Ƹ����</td>
	<td bgcolor='#CCFFFF'>�Ա�Ҫ��</td>
	<td bgcolor='#CCFFFF'>��н</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
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
          <td width="60" align="center"><a href="gangwei_updt?id=${i.id}">�޸�</a>|<a href="gangwei_dele?id=${i.id}" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
      </tr>
  </c:forEach>

  


</table>

  </body>

</html>

