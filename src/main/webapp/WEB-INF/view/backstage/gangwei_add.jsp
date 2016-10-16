<%@ page contentType="text/html; charset=gb2312" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>增加岗位</title>
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
    <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;新增岗位信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
  </tr>
  
  <tr>
    <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">岗位名称</td>
    <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="jname" type="text" id="jname" /></td>
    </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">公司</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="company">
			<option value="0">温州德刚企业</option>
			<option value="1">北京信雅技术有限公司</option>
		</select>
	</td>
  </tr>  
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">性别要示</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="sex">
			<option value="0">男</option>
			<option value="1">女</option>
			<option value="2">不限</option>
		</select>
	</td>
  </tr> 
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">学历</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="sex">
			<option value="0">专科</option>
			<option value="1">本科</option>
			<option value="2">不限</option>
		</select>
	</td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">招聘人数</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="jzc" type="text" id="jzc" maxlength="18" /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">月薪</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="jzc" type="text" id="jzc" maxlength="18" /></td>
  </tr>

  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">工作地点</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="jzc" type="text" id="jzc" maxlength="18" /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">职位描述</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<textarea name="desc" rows="10" cols="60"></textarea>
	</td>
  </tr>
</table>
<table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="750" height="30" align="center" valign="middle"><input type="submit" name="Submit" value="保存" />&nbsp;
		<input type="button" name="btn" value="返回" onclick="history.go(-1);"/>
	</td>
  </tr>
</table>
 
<input type="hidden" name="op" value="add"/>
</form>
</body>
</html>
