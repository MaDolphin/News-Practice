<%@ page contentType="text/html; charset=gb2312" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���Ӹ�λ</title>
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
<form name="opform" method="post" action="jsop.jsp" onsubmit="javascript:return check();">
<table width="750" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;������λ��Ϣ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
  </tr>
  
  <tr>
    <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">��λ����</td>
    <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="jname" type="text" id="jname" /></td>
    </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">��˾</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="company">
			<option value="0">���ݵ¸���ҵ</option>
			<option value="1">�������ż������޹�˾</option>
		</select>
	</td>
  </tr>  
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">�Ա�Ҫʾ</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="sex">
			<option value="0">��</option>
			<option value="1">Ů</option>
			<option value="2">����</option>
		</select>
	</td>
  </tr> 
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">ѧ��</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="sex">
			<option value="0">ר��</option>
			<option value="1">����</option>
			<option value="2">����</option>
		</select>
	</td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">��Ƹ����</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="jzc" type="text" id="jzc" maxlength="18" /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">��н</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="jzc" type="text" id="jzc" maxlength="18" /></td>
  </tr>

  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">�����ص�</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="jzc" type="text" id="jzc" maxlength="18" /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">ְλ����</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<textarea name="desc" rows="10" cols="60"></textarea>
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
</html>
