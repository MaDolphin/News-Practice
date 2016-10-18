<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>修改新闻</title>
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
<form name="opform" method="post" action="/news_updt" onsubmit="javascript:return check();">
    <table width="80%" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">
        <!--DWLayoutTable-->
        <input type="hidden" name="ID" value="${news.ID}">
        <tr>
            <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;修改新闻信息</span></td>
        </tr>

        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">标题</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="TITLE" type="text" id="jname"   required value="${news.TITLE}"/></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">内容</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF">
                <textarea name="CONTENT" rows="10" cols="60" required >${news.CONTENT}"</textarea>
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

</form>
</body>
</html>
