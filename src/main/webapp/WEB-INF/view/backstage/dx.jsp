
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>dx</title>
    

  </head>

  <body >

  <form name="form1" id="form1" method="post" action="dx_post.jsp?lb=1">
  ϵͳ����:
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>���ݣ�</td><td><textarea name="content" rows="20" cols="50"></textarea>
			
			</tr>
     
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="ȷ���༭" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


