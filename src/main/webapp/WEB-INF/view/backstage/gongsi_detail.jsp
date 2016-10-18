<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>公司信息</title>
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
        <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;公司详细信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
    </tr>

    <tr>
        <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">公司名称</td>
        <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="name" type="text" id="jname"  value="${gongsi.NAME}" readonly/></td>
    </tr>



    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">注册资金</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="demandNumber" type="text" id="jzc" maxlength="18" value="${gongsi.FUNDS}" readonly /></td>
    </tr>
    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">电话</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="salary" type="text" id="jzc" maxlength="18" value="${gongsi.TEL}" readonly /></td>
    </tr>

    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">地址</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="workplace" type="text" id="jzc" maxlength="18" value="${gongsi.ADDRESS}" readonly /></td>
    </tr>
    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">规模</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF">
            <textarea name="description" rows="10" cols="60" readonly>${gongsi.SCALE}</textarea>
        </td>
    </tr>
    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">行业</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="workplace" type="text" id="jzc" maxlength="18" value="${gongsi.INDUSTRY}" readonly /></td>
    </tr>
    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">简介</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF">
            <textarea name="description" rows="10" cols="60" readonly>${gongsi.DESCRIPTION}</textarea>
        </td>
    </tr>
    <tr>
        <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">添加时间</td>
        <td align="left" valign="middle" bgcolor="#F9FCFF"><fmt:formatDate value="${gongsi.ADD_DATE}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
    </tr>
</table>
<table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
    <!--DWLayoutTable-->
    <tr>
        <td width="750" height="30" align="center" valign="middle"><input type="button" name="Submit" value="编辑" onclick="edit('${gongsi.ID}')" />&nbsp;
            <input type="button" name="btn" value="返回" onclick="history.go(-1);"/>
        </td>
    </tr>
</table>

<input type="hidden" name="op" value="add"/>

</body>
<script src="/js/jquery-1.4.4.min.js"></script>
<script>
    <%--$(function () {--%>
        <%--$("#companyId").val('${gangwei.companyId}');--%>
        <%--$("#sex").val('${gangwei.sex}');--%>
        <%--$("#education").val('${gangwei.education}');--%>
    <%--})--%>
    function edit(id) {
        window.location.href="/gongsi_updt?id="+id;
    }
</script>
</html>
