<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  <p>���и�λ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:��˾:
     <input name="id" type="text" id="id" />
     ��λ����
     <input name="name" type="text" id="name" />
     <input type="submit" name="Submit" value="����" />
	 <%--<input type="button" name="but" value="����" onclick="add();"/>--%>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <thead>
  <tr>
      <th width="30" align="center" bgcolor="CCFFFF">���</th>
      <th bgcolor='#CCFFFF'>��˾</th>
      <th bgcolor='#CCFFFF'>��λ����</th>
      <th bgcolor='#CCFFFF'>��Ƹ����</th>
      <th bgcolor='#CCFFFF'>�Ա�Ҫ��</th>
      <th bgcolor='#CCFFFF'>ѧ��</th>
      <th bgcolor='#CCFFFF'>�����ص�</th>
      <th bgcolor='#CCFFFF'>ְλ����</th>
      <th bgcolor='#CCFFFF'>��н</th>
      <th width="138" align="center" bgcolor="CCFFFF">���ʱ��</th>
      <%--<th width="60" align="center" bgcolor="CCFFFF">����</th>--%>
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
               <%-- <td width="60" align="center"><a href="gangwei_updt.jsp?id=1">�޸�</a>|<a href="del.jsp?id=1&tablename=gangwei" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>--%>
            </tr>
        </c:forEach>

    </tbody>

  
 <%-- <tr>
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
  </tr>--%>

</table>
  <div class="page">
      <a href="">��ҳ</a>
      <a href="">��һҳ</a>
      <a href="">1</a>
      <a href="">2</a>
      <a href="">3</a>
      <a href="">4</a>
      <a href="">5</a>
      <a href="">��һҳ</a>
      <a href="">ĩҳ</a>
  </div>


  </body>
</html>

