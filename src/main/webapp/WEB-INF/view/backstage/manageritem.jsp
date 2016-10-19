
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: Fan
  Date: 2016/10/18
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详细</title>
    <script src="/js/jquery-1.4.4.min.js"></script>
    <script>
        $(function(){
            $("#status").val('${manageritem.status}');
            var c=$("#status").value;
          if(c=="edit"){


              $(".edit").removeAttr("readonly");

              $("#pwd").css("display","table-cell");
              $("#password2").css("display","table-cell");
              $("#save").css("display","table-cell");
              $("#edit").css("display","none");
          }
          $("#edit").bind("click",function(){

              $(".edit").removeAttr("readonly");

              $("#pwd").css("display","table-cell");
              $("#password2").css("display","table-cell");
              $("#save").css("display","table-cell");
              $("#edit").css("display","none");
              $("#password").val("");
          });
            $("#btn").bind("click",function() {
                $(".edit").attr("readonly", true);

                $("#pwd").css("display", "none");
                $("#password2").css("display", "none");
                $("#save").css("display", "none");
                $("#edit").css("display", "table-cell");
            });
                $("#save").bind("click",function() {
                    var id = $("#id").val();
                    var username = $("#username").val();
                    var password= $("#password").val();
                    var password2 = $("#password2").val();
                    $(".edit").attr("readonly", true);
                    $("#pwd").css("display", "none");
                    $("#password2").css("display", "none");
                    $("#save").css("display", "none");
                    $("#edit").css("display", "table-cell");
                    //alert("pwd1="+username);
                    //alert("pwd2="+password);
                    if (password == password2) {
                        $.post("manageritem2?id=" + id + "&operate=update&username=" + username + "&password=" + password + "",


                                function (data, status) {
                                   // alert(data);
                                    var a = data;

                                    if (a == 1) {
                                        alert("修改成功");
                                    }

                                }, "text");

                    } else {
                        alert("两次输出的密码不同");
                    }
                }  );

        })
    </script>
</head>
<body>
<form name="opform" id="opform" method="post" action="manageritem" onsubmit="javascript:return check();">
    <input type="hidden" name="id" id="id" value="${manageritem.id}">
    <table width="750" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#9EC3F2" style="font-size:12px">

        <!--DWLayoutTable-->
        <tr>
            <td height="25" colspan="2" align="left" valign="middle" background="img/bg_titlebarr.gif"><span class="STYLE1">&nbsp;详细&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
        </tr>

        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">用户名</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="username" type="text" id="username" class="edit" value="${manageritem.username}"readonly  required/></td>
        </tr>
        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">密码</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="password" type="password" id="password" class="edit" value="${manageritem.password}"readonly  required/></td>
        </tr>
        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF" id="pwd" hidden="none">请确认密码</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF"><input name="password2" type="password"  hidden="none" id="password2"     required/></td>
        </tr>
        <tr>
            <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">状态</td>
            <td align="left" valign="middle" bgcolor="#F9FCFF">
                <select name="status" id="status"  disabled>
                    <option value="0">0</option>
                    <option value="1">1</option>

                </select>
            </td>
        </tr>
        <tr>
            <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">添加时间</td>
            <td width="632" align="left" valign="middle" bgcolor="#F9FCFF">
                <%--${manageritem.addDate}--%>
               <%-- <fmt:formatDate value="${manageritem.addDate}" type="time" timeStyle="long"/>
--%>
            <input name="addDate" type="text" width="300" id="addDate"
                                                                                  value="<fmt:formatDate value='${manageritem.addDate}' type='both' pattern='yyyy-MM-dd hh:mm:ss'/>"  readonly required/>
            </td>
        </tr>

    </table>
    <table width="750" border="0" cellpadding="0" cellspacing="0" align="center">
        <!--DWLayoutTable-->
        <tr>
            <td width="750" height="30" align="center" valign="middle"><button type="button" name="save" id="save"  hidden="none">保存</button>&nbsp;
                <input type="button" name="btn" id="btn"value="返回" onclick="history.go(-1);"/>&nbsp;<button type="button" name="edit" id="edit" >修改</button>
            </td>
        </tr>
    </table>

    <input type="hidden" name="op" value="add"/>

</form>
    <div id="hidden" hidden="none" >
        <input type="text" value="${status}" id="status"/>
    </div>
</body>

</html>
