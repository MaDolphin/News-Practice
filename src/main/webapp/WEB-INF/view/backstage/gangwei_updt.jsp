<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�޸ĸ�λ</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
-->
</style>
<script language="javascript">
 	
</script>
</head>

<body>
<form name="opform" method="post" action="update_form" onsubmit="javascript:return check();">
    <input type="hidden" name="id" value="${gangwei.id}">
<table width="750" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">

  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;�޸ĸ�λ��Ϣ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
  </tr>
  
  <tr>
    <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">��λ����</td>
    <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="name" type="text" id="jname"  value="${gangwei.name}" required/></td>
    </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">��˾</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="companyId" id="companyId">
            <c:forEach var="i" items="${companies}">
                <option value="${i.ID}">${i.NAME}</option>
            </c:forEach>
		</select>
	</td>
  </tr>  
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">�Ա�Ҫʾ</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="sex" id="sex">
			<option value="0">��</option>
			<option value="1">Ů</option>
			<option value="2">����</option>
		</select>
	</td>
  </tr> 
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">ѧ��</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="education" id="education">
			<option value="0">ר��</option>
			<option value="1">����</option>
			<option value="2">����</option>
		</select>
	</td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">��Ƹ����</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="demandNumber" type="text" id="jzc" maxlength="18" value="${gangwei.demandNumber}" required /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">��н</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="salary" type="text" id="jzc" maxlength="18" value="${gangwei.salary}" required /></td>
  </tr>

  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">�����ص�</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="workplace" type="text" id="jzc" maxlength="18" value="${gangwei.workplace}" required /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">ְλ����</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<textarea name="description" rows="10" cols="60" required>${gangwei.description}</textarea>
	</td>
  </tr>
</table>
<table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="750" height="30" align="center" valign="middle"><input type="submit" name="Submit" value="����" />&nbsp;
		<input type="button" name="btn" value="����" onclick="history.go(-1);"/>
	</td>
  </tr>
</table>
 
<input type="hidden" name="op" value="add"/>
</form>
</body>
<script src="/js/jquery-1.4.4.min.js"></script>
<script>
    $(function () {
        $("#companyId").val('${gangwei.companyId}');
        $("#sex").val('${gangwei.sex}');
        $("#education").val('${gangwei.education}');
    })

</script>
</html>
