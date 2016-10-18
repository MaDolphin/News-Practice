<%--
  Created by IntelliJ IDEA.
  User: Fan
  Date: 2016/10/18
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<form name="opform" id="opform" method="post" action="manageraddforward2" onsubmit="javascript:return check();">
    <input type="hidden" name="id" id="id"/>
    <table width="750" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">

        <!--DWLayoutTable-->
        <tr>
            <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;详细&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
        </tr>

        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">用户名</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="username" type="text" id="username" class="edit"   required/></td>
        </tr>
        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">密码</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="password" type="password" id="password" class="edit"   required/></td>
        </tr>

        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">状态</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF">
                <select name="status" id="status" >
                    <option value="0">0</option>
                    <option value="1">1</option>

                </select>
            </td>
        </tr>


    </table>
    <table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
        <!--DWLayoutTable-->
        <tr>
            <td width="750" height="30" align="center" valign="middle"><button type="submit" name="save" id="save"  >保存</button>&nbsp;
                <input type="button" name="btn" id="btn"value="返回" onclick="history.go(-1);"/>
            </td>
        </tr>
    </table>

    <input type="hidden" name="op" value="add"/>

</form>
</body>
</html>
