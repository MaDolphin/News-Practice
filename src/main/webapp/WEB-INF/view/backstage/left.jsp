<%@ page language="java"  pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%String path = request.getContextPath(); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
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
foldersTree = gFldr('<DIV CLASS=fldrroot><b>ϵͳ�����б�</b></DIV>','');

Class1 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>����Ա�ʺŹ���</DIV>', ''));
insDoc(Class1, gLnk(1, '<a href=yhzhgl.jsp target=hsgmain alt=����Ա�ʺŹ���>����Ա�ʺŹ���</a>', '', '<%=path %>/images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>վ�����Ź���</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=վ������ target=hsgmain alt=վ�����Ų�ѯ>վ�����Ź���</a>', '', '<%=path %>/images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=վ������ target=hsgmain alt=վ�����Ų�ѯ>ͷ�����Ź���</a>', '', '<%=path %>/images/editinfo.gif'));
Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>ע���û�����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=gongsi_list.jsp target=hsgmain alt=��˾����>��˾����</a>', '', '<%=path %>/images/editinfo.gif'));
Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>���и�λ����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=gangwei_list.jsp target=hsgmain alt=���и�λ����>���и�λ����</a>', '', '<%=path %>/images/editinfo.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>ϵͳ����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=youqinglianjie_add.jsp target=hsgmain>�������ӹ���</a>', '', '<%=path %>/images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=���Թ��� target=hsgmain>���Թ���</a>', '', '<%=path %>/images/editinfo.gif'));
insDoc(foldersTree, gLnk(1, '<a href=mod.jsp target=hsgmain>�޸�����</a>', '', '<%=path %>/images/pwd.gif'));
insDoc(foldersTree, gLnk(1, '�˳�', '<%=path%>/login.jsp', '<%=path %>/images/exit.gif'));
initializeDocument(0);</SCRIPT>
</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>