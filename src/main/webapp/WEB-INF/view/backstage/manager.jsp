<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Fan
  Date: 2016/10/18
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>manager</title>
    <script language="javascript">
        function add(){
            window.location="/manageraddforward";
        }
    </script>
</head>
<body>
<h3>管理员账号管理</h3>
    <div>
        <form name="query" id="form1" method="post" action="managersearch">
            搜索:用户名:
            <input name="username" type="text" >

            <input type="submit" name="Submit" value="查找">
            <input type="button" name="but" value="新增" onclick="add()">
        </form>
    </div>
    <div id="simple">
        <table width="80%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
            <tbody>
                <tr>
                    <td width="100" align="center" bgcolor="CCFFFF">用户名</td>
                    <td bgcolor="#CCFFFF">状态</td>
                    <td width="40" align="center" bgcolor="CCFFFF">添加时间</td>
                    <td width="80" align="center" bgcolor="CCFFFF">操作</td>
                </tr>
                <c:forEach var="cus" items="${managersimple}" varStatus="item" >

                    <tr>
                        <td width="30" align="center"><a href="manageritem1?id=${cus.id}&&operate=show">${cus.username}</a></td>
                        <td>${cus.status}</td>
                        <td><fmt:formatDate value="${cus.addDate}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                        <td width="60" align="center"><a href="manageritem1?id=${cus.id}&&operate=edit">修改</a>|<a href="manageritem1?id=${cus.id}&&operate=delete" onclick="return confirm('真的要删除？')">删除</a></td>
                    </tr>

               </c:forEach>





            </tbody></table>
    </div>
</body>
</html>
