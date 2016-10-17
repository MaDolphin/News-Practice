<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>岗位信息</title>
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

<table width="750" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">

  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;岗位信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
  </tr>
  
  <tr>
    <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">岗位名称</td>
    <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="name" type="text" id="jname"  value="${gangwei.name}" readonly/></td>
    </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">公司</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="companyId" id="companyId" disabled>
            <c:forEach var="i" items="${companies}">
                <option value="${i.ID}">${i.NAME}</option>
            </c:forEach>
		</select>
	</td>
  </tr>  
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">性别要示</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="sex" id="sex" disabled>
			<option value="0">男</option>
			<option value="1">女</option>
			<option value="2">不限</option>
		</select>
	</td>
  </tr> 
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">学历</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<select name="education" id="education" disabled>
			<option value="0">专科</option>
			<option value="1">本科</option>
			<option value="2">不限</option>
		</select>
	</td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">招聘人数</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="demandNumber" type="text" id="jzc" maxlength="18" value="${gangwei.demandNumber}" readonly /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">月薪</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="salary" type="text" id="jzc" maxlength="18" value="${gangwei.salary}" readonly /></td>
  </tr>

  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">工作地点</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="workplace" type="text" id="jzc" maxlength="18" value="${gangwei.workplace}" readonly /></td>
  </tr>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">职位描述</td>
    <td align="left" valign="middle" bgcolor="#F9FCFF">
		<textarea name="description" rows="10" cols="60" readonly>${gangwei.description}</textarea>
	</td>
  </tr>
</table>
<table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="750" height="30" align="center" valign="middle"><input type="button" name="Submit" value="编辑" onclick="edit('${gangwei.id}')" />&nbsp;
		<input type="button" name="btn" value="返回" onclick="history.go(-1);"/>
	</td>
  </tr>
</table>
 
<input type="hidden" name="op" value="add"/>

</body>
<script src="/js/jquery-1.4.4.min.js"></script>
<script>
    $(function () {
        $("#companyId").val('${gangwei.companyId}');
        $("#sex").val('${gangwei.sex}');
        $("#education").val('${gangwei.education}');
    })
    function edit(id) {
        window.location.href="/gangwei_updt?id="+id;
    }
</script>
</html>
