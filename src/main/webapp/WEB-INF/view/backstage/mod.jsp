<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>�޸�����</title>
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
<form name="opform" method="post" action="/add_form" onsubmit="return check();">
    <table width="750" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">
        <!--DWLayoutTable-->
        <tr>
            <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;�޸�������Ϣ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
        </tr>

        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">�˺�</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="username" type="text" id="jname" value="${user.username}"  readonly/></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">ԭ����</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="oldpwd" type="password" id="oldpwd" maxlength="18"  required /></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">������</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="newpwd" type="password" id="newpwd" maxlength="18"  required /></td>
        </tr>

        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">ȷ��������</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="confirmpwd" type="password" id="confirmpwd" maxlength="18"  required /></td>
        </tr>

    </table>
    <table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
        <!--DWLayoutTable-->
        <tr>
            <td width="750" height="30" align="center" valign="middle"><input type="submit" name="Submit" value="�޸�" />&nbsp;
                <input type="button" name="btn" value="����" onclick="history.go(-1);"/>
            </td>
        </tr>
    </table>

</form>
</body>
<script src="/js/jquery-1.4.4.min.js"></script>
<script>
   function check() {
       var oldpwd=$("#oldpwd").val();
       var pwd=$("#newpwd").val();
       var conpwd=$("#confirmpwd").val();
       if(pwd!=conpwd){
           alert("�����������벻һ��");
           return false;
       }
       else if(oldpwd==pwd){
           alert("���벻����ԭ����һ��");
           return false;
       }
       else if(oldpwd=='${user.password}'){
           alert("ԭ�������");
           return false;
       }
       return true;

   }

</script>
</html>
