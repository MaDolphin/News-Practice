
<%@ page language="java"  pageEncoding="gb2312"%>
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
			window.location="gangwei_add.jsp";
		}
	</script>    



  </head>

  <body >
  <p>���и�λ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:��˾:
     <input name="bianhao" type="text" id="bianhao" />
     ��λ����
     <input name="mingcheng" type="text" id="mingcheng" />
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
  
  <tr>
    <td width="30" align="center">1</td>
    <td>�������ż������޹�˾</td>
	<td>����Ա</td>
	<td>2��</td>
	<td>��</td>
	<td>1500</td>
    <td width="138" align="center">2012-10-13</td>
    <td width="60" align="center"><a href="gangwei_updt.jsp?id=1">�޸�</a>|<a href="del.jsp?id=1&tablename=gangwei" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  
  <tr>
    <td width="30" align="center">2</td>
    <td>�������ż������޹�˾</td>
	<td>����ʦ</td>
	<td>1��</td>
	<td>����</td>
	<td>2000</td>
    <td width="138" align="center">2012-10-13</td>
    <td width="60" align="center"><a href="gangwei_updt.jsp?id=1">�޸�</a>|<a href="del.jsp?id=1&tablename=gangwei" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>

</table>

  </body>
</html>

