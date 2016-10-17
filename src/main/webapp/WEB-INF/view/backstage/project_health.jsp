<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html; charset=utf-8"%>

<%@ page isELIgnored="false" %>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	int this_year=0;
	java.util.Calendar cal =java.util.Calendar.getInstance();
	this_year = cal.get(java.util.Calendar.YEAR);
%>

<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Pragma" content="no-cache" /> 
<meta http-equiv="cache-control" content="no-cache" /> 
<meta http-equiv="expires" content="0" /> 
<!-- Mimic Internet Explorer 7 -->
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta content="ie=emulateie7" http-equiv="x-ua-compatible" /> 

<style type="text/css">
a {
	color:blue;
}
</style>
</head>

<body>
<form id="pagerForm" method="post" action="searchProjectForHealthList.action">
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${numPerPage}" />
	<input type="hidden" name="orderField" value="${orderField}" />
	<input type="hidden" name="orderDirection" value="${orderDirection}" />
</form>

<div class="pageHeader">
		<form rel="pagerForm" onsubmit="return navTabSearch(this);" action="searchProjectForHealthList.action" method="post">
		<div class="searchBar">
	   	 	<div style="float:left"><label>关键字搜索:</label></div>
	    	<div style="float:left"><input type="text" name="wordSearch" value="${param.wordSearch}"><button type="submit">检索</button>
	   		</div>	
	    </div>
		</form>
</div>

<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
		<shiro:hasPermission name="PHealthState:edit">
			<li>
			<a class="edit" id="exportproject" href="exportProjectHealthInfoToExcelBySubcompanyAndProjectId.action?opty=1"><span>导出</span>
			</a>
			</li>
			</shiro:hasPermission>
			<shiro:lacksPermission name="PHealthState:edit">
			<li>
			<a class="edit" id="exportproject" href="exportProjectHealthInfoToExcelBySubcompanyAndProjectId.action?opty=0"><span>导出</span>
			</a>
			</li>
			</shiro:lacksPermission>
		</ul>
	</div>
	
   <table class="table" width="155%" layoutH="112" >
			<thead id="projectHealthInfor" align="center">
				<tr >
					<th>项目编号</th>											
					<th>项目名称</th>
					<th>详情</th>
					<th>计划获证时间</th>	
					<th>年度预算</th>	
					<th>年度进展</th>
					<shiro:hasPermission name="PHealthState:edit">	
					<th>整体预览</th>
					</shiro:hasPermission>
					<th>整体状况</th>
					<th>内部阶段</th>	
					<th>外部阶段</th>
					<th>下一里程碑  / 计划完成时间</th>												
					<th>总预算(万元)</th>										
					<th>累计已投入(万元)</th>	
					<th>风险链接</th>
					<th>项目状态报告</th>					
				</tr>
			</thead>
			<tbody id="projectHealthlist">
			 <s:iterator value="#request.listProjectInfo" id="us" >			
						<td align="center">
						 	<s:property value="#us.getProject_id()"/> 
						</td>																					
						<td align="center">
							 <s:property value="#us.getProduct_name()"/> 							
						</td>
						<td align="center">					
							<s:a  title="%{#us.getProject_id()} 项目详情" width="736" height="410" href="findByProjectID.action?projectNatureID=%{#us.getProject_nature_id()}" target="dialog" rel="dlg_page9">
							<img src="images/details.gif"/>	
							</s:a>
					    </td>					
						<td align="center">
							 <s:date name="#us.getPlan_issued_date()" format="yyyy-MM-dd"/> 
						</td>						
						<td align="center">
							<s:a  title="%{#us.getProject_id()} 年度预算" href="budgetExpenditureCheck?project_id=%{#us.getProject_id()}" target="navTab" >									
								<s:if test="#us.getUser_defined_one() =='GREEN' ">
									<img src="images/green.gif"/>
								</s:if>	
								<s:if test="#us.getUser_defined_one() =='YELLOW' ">
									<img src="images/yellow.gif"/>
								</s:if>	
								<s:if test="#us.getUser_defined_one() =='RED' ">
									<img src="images/red.gif"/>
								</s:if>														
								<s:if test="#us.getUser_defined_one() =='STATUS_UNAVAILABLE' ">
									<img src="images/status_unavailable.gif"/>
								</s:if>		
							</s:a>																			
						</td>	
						<td align="center">						
							<s:a  title="%{#us.getProject_id()} 年度进展" href="ListTargerPlanCompleteAction.action?project_id=%{#us.getProject_id()}" target="navTab" >	
								<s:if test="#us.getUser_defined_two() =='RED' ">
									<img src="images/red.gif"/>
								</s:if>	
								<s:if test="#us.getUser_defined_two() =='YELLOW' ">
									<img src="images/yellow.gif"/>
								</s:if>	
								<s:if test="#us.getUser_defined_two() =='GREEN' ">
									<img src="images/green.gif"/>
								</s:if>							
								<s:if test="#us.getUser_defined_two() =='STATUS_UNAVAILABLE' ">
									<img src="images/status_unavailable.gif"/>
								</s:if>										
							</s:a>														
						</td>			
						<shiro:hasPermission name="PHealthState:edit">				
						<td align="center">
							<s:a  href="" target="" ></s:a>	
							<s:if test="#us.getUser_defined_three() =='GREEN' ">
								<img src="images/green.gif"/>
							</s:if>	
							<s:if test="#us.getUser_defined_three() =='YELLOW' ">
								<img src="images/yellow.gif"/>
							</s:if>	
							<s:if test="#us.getUser_defined_three() =='RED' ">
								<img src="images/red.gif"/>
							</s:if>	
							<s:if test="#us.getUser_defined_three() =='STATUS_UNAVAILABLE' ">
									<img src="images/status_unavailable.gif"/>
								</s:if>	
						</td>
						</shiro:hasPermission>
						<td align="center">	
						<shiro:hasPermission name="PHealthState:edit">			
							<s:a  title="%{#us.getProject_id()} 整体状况" href="view/dwz/project_portfolio_manage/project_health/situation_setting.jsp?project_id=%{#us.getProject_id()}" target="dialog" >	
							<s:if test="#us.getUser_defined_five() =='RED' ">
								<img src="images/red.gif"/>
							</s:if>	
							<s:if test="#us.getUser_defined_five() =='YELLOW' ">
								<img src="images/yellow.gif"/>
							</s:if>	
							<s:if test="#us.getUser_defined_five() =='GREEN' ">
								<img src="images/green.gif"/>
							</s:if>							
							<s:if test="#us.getUser_defined_five() =='STATUS_UNAVAILABLE' ">
								<img src="images/status_unavailable.gif"/>
							</s:if>										
							</s:a>
						</shiro:hasPermission>	
						<shiro:lacksPermission name="PHealthState:edit">
							<s:if test="#us.getUser_defined_five() =='RED' ">
								<img src="images/red.gif"/>
							</s:if>	
							<s:if test="#us.getUser_defined_five() =='YELLOW' ">
								<img src="images/yellow.gif"/>
							</s:if>	
							<s:if test="#us.getUser_defined_five() =='GREEN' ">
								<img src="images/green.gif"/>
							</s:if>							
							<s:if test="#us.getUser_defined_five() =='STATUS_UNAVAILABLE' ">
								<img src="images/status_unavailable.gif"/>
							</s:if>	
						</shiro:lacksPermission>
							<%--<s:textfield value="%{#us.getUser_defined_five()}"/>;	--%>											
						</td>
						
						<td align="center">
							<s:property value="#us.getCurrent_stage_task()"/> 
						</td>
						<td align="center">
							<s:property value="#us.getExternal_stage_task()"/> 
						</td>
						<td align="center">
							<s:if test="#us.getProduct_id() =='RED' ">
								<s:a  title="%{#us.getProject_id()} 甘特图" href="showGant.action?project_id=%{#us.getProject_id()}" target="_blank" >							
									<font color="red"><s:property value="#us.getUser_defined_four()"/></font>
								</s:a>
							</s:if>
							<s:if test="#us.getProduct_id() =='GREEN' ">
								<s:a  title="%{#us.getProject_id()} 甘特图" href="showGant.action?project_id=%{#us.getProject_id()}" target="_blank" >							
									<font color="green"><s:property value="#us.getUser_defined_four()"/></font>
								</s:a>
							</s:if>													
						</td>
						<td align="center">
							<s:property value="#us.getTotal_budge()"/> 
						</td>

						<td align="center">
							<s:property value="#us.getTotal_input()"/> 
						</td>	
						<td align="center">
							<s:a  title="%{#us.getProject_id()} 项目风险" width="736" height="410" href="checkProjectRisk.action?project_id=%{#us.getProject_id()}" target="navTab" rel="dlg_page9">
								<img src="images/link.png"/>	
							</s:a>																		
						</td>	
						<td align="center">
							<s:a  title="%{#us.getProject_id()} 项目状态报告" width="736" height="410" href="viewCheckProjectStatus.action?project_id=%{#us.getProject_id()}" target="navTab" rel="ProjectStatusOnlyView">
								<img src="images/link.png"/>	
							</s:a>																		
						</td>			
				</tr>
				</s:iterator>  		
			</tbody>
		</table>
	
	<div class="panelBar" >
		<div class="pages">
			<span>共${totalCount}条</span>
		</div>		
		<div class="pagination" targetType="${targetType}" totalCount="${totalCount}" numPerPage="${numPerPage}"  currentPage="${pageNum}"></div>

	</div>
	
</div>
</body>

</html>


