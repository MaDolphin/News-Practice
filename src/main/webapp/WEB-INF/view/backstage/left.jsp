<%@ page language="java"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%String path = request.getContextPath(); %>
<head>

<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE2 {color: #43860c; font-size: 12px; }

a:link {font-size:12px; text-decoration:none; color:#43860c;}
a:visited {font-size:12px; text-decoration:none; color:#43860c;}
a:hover{font-size:12px; text-decoration:none; color:#FF0000;}
-->
</style>
<script type="text/JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
</head>

<body>
<table width="177" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed">
      <tr>
        <td height="26" background="<%=path %>/images/main_21.gif">&nbsp;</td>
      </tr>
      
      <tr>
        <td  style="line-height:4px; background:url(<%=path %>/images/main_38.gif)">&nbsp;</td>
      </tr>
      <tr>
        <td><SCRIPT LANGUAGE="JavaScript" SRC="<%=path %>/js/treemenu.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="<%=path %>/js/Common.js"></SCRIPT>
<script language="JavaScript">
function addqkOpen(BcgID)
{
     window.open('InfoCenter/addlanmu.asp?BcgID='+BcgID,'','width:400px; height:25px; status:0');
}
</script>

<body>
<SCRIPT LANGUAGE='JavaScript'>
foldersTree = gFldr('<DIV CLASS=fldrroot><b>系统功能列表</b></DIV>','');

Class1 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>管理员帐号管理</DIV>', ''));
insDoc(Class1, gLnk(1, '<a href=yhzhgl.jsp target=hsgmain alt=管理员帐号管理>管理员帐号管理</a>', '', '<%=path %>/images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>站内新闻管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=站内新闻 target=hsgmain alt=站内新闻查询>站内新闻管理</a>', '', '<%=path %>/images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=站内新闻 target=hsgmain alt=站内新闻查询>头条新闻管理</a>', '', '<%=path %>/images/editinfo.gif'));
Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>注册用户管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=gongsi_list target=hsgmain alt=公司管理>公司管理</a>', '', '<%=path %>/images/editinfo.gif'));
Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>所有岗位管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=gangwei_list target=hsgmain alt=所有岗位管理>所有岗位管理</a>', '', '<%=path %>/images/editinfo.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>系统管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=link_list target=hsgmain>友情连接管理</a>', '', '<%=path %>/images/editinfo.gif'));
<%--insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=留言管理 target=hsgmain>留言管理</a>', '', '<%=path %>/images/editinfo.gif'));--%>
insDoc(foldersTree, gLnk(1, '<a href=/mod target=hsgmain>修改密码</a>', '', '<%=path %>/images/pwd.gif'));
insDoc(foldersTree, gLnk(1, '退出', '/login', '<%=path %>/images/exit.gif'));
initializeDocument(0);</SCRIPT>
</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
