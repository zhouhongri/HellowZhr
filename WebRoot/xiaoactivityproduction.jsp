<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人活动作品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="cs/pintuer.css">
    <link rel="stylesheet" href="cs/admin.css">
	<link rel="stylesheet" href="css/index.css" type="text/css">
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<link rel="icon" type="image/png" href="images/loginlogo.png">
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
  	<script src="<%=path%>/layer/layer.js"></script>
	<script type="text/javascript">
			function createXMLHttpRequest() {
				// IE
				if (window.ActiveXObject) {
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				// FireFox
				else if (window.XMLHttpRequest) {
					xmlHttp = new XMLHttpRequest();
				}
			}
		
			function holdbtn(){
			
				var btnok = document.getElementById("hdbtn");
				var checkval = [];
				var obj = document.getElementsByName("ckbx");
				if(obj.length==0){
					layer.msg("数量不能为0!",function(){});
					return false;
				}
				
				for(k in obj){
					if(obj[k].checked){
						checkval.push(obj[k].value)
					}
				}
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = holdback;
			var url = "xiaockhf?checkval="+encodeURI(encodeURI(checkval))+"&flag="+"xpjj";
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
			}
			function holdback(){
				if (xmlHttp.readyState == 4) {
					if (xmlHttp.status == 200) {
						message = xmlHttp.responseText;
						if(message=="exist"){
						layer.msg('您已经存入数据是否替换？', {
				  				time: 0 //不自动关闭
				  				,btn: ['确定', '取消']
				  				,yes: function(index){
				  					delExistData();
				  				
				   				layer.close(index);
				   				
				   				}});
						}
						else if(message=="success"){
							layer.msg("保存成功!");
						}
						else{
							layer.msg("保存失败！");
							//$("#hdbtn").attr("disabled",false);
						}
					}
				}else{
				}
			}
			function delExistData(checkval){
				var checkval = [];
				var obj = document.getElementsByName("ckbx");
				for(k in obj){
						if(obj[k].checked){
							checkval.push(obj[k].value)
						}
					}
				createXMLHttpRequest();
				xmlHttp.onreadystatechange = delexistdataback;
				var url = "xiaodletda?checkval="+encodeURI(encodeURI(checkval))+"&flag="+"xpjj";
				xmlHttp.open("POST", url, true);
				xmlHttp.send(null);
			}
			function delexistdataback(){
			if (xmlHttp.readyState == 4) {
					if (xmlHttp.status == 200) {
						var result = xmlHttp.responseText;
						if(result=="success"){
							layer.msg("更新成功");
						}else{
							layer.msg("更新失败！");
						}
					}
				}
			}
	</script>
	
  </head>
 
  <body>
  	<div>
  		<strong id="str0">请选择作品，</strong>
  		<strong id="str1"></strong>
  		<strong id="str2">截止到 ${acfinally} 。</strong>
  	</div>
  	
  	
  	
  	
  			<!-- 科研 -->
			<div class="panel-group" id="panel-177574">
				<div class="panel panel-default" style="display:none;" id="lwdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-37136">论文</a>
					</div>
					<div id="panel-element-37136" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover">
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistlw}" var="z">
									<tr class="lwtr">
										<td><input type="checkbox" name="ckbx" class="lwcheckgroup" value="${z.id};论文"/></td>
										<td>${z.name}</td>
										<td>${z.authorseq}</td>
										<td>${z.score}</td>
										<td>${fn:substring(z.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="panel panel-default" style="display:none;" id="zldiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695011">专利</a>
					</div>
					<div id="panel-element-695011" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistzl}" var="h">
									<tr class="zltr">
										<td><input type="checkbox" name="ckbx" class="zlcheckgroup" value="${h.id};专利"/></td>
										<td>${h.name}</td>
										<td>${h.authorseq}</td>
										<td>${h.score}</td>
										<td>${fn:substring(h.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="panel panel-default" style="display:none;" id="xkdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695012">学科建设</a>
					</div>
					<div id="panel-element-695012" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover">
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistxk}" var="r">
									<tr class="xktr">
										<td><input type="checkbox" name="ckbx" class="xkcheckgroup" value="${r.id};学科建设"/></td>
										<td>${r.name}</td>
										<td>${r.authorseq}</td>
										<td>${r.score}</td>
										<td>${fn:substring(r.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="panel panel-default" style="display:none;" id="kyxmdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695013">科研项目</a>
					</div>
					<div id="panel-element-695013" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover">
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistkyxm}" var="f">
									<tr class="kyxmtr">
										<td><input type="checkbox" name="ckbx" class="kyxmcheckgroup" value="${f.id};科研项目"/></td>
										<td>${f.name}</td>
										<td>${f.authorseq}</td>
										<td>${f.score}</td>
										<td>${fn:substring(f.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="panel panel-default" style="display:none;" id="xszzdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695014">学术著作</a>
					</div>
					<div id="panel-element-695014" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistxszz}" var="y">
									<tr class="xszztr">
										<td><input type="checkbox" name="ckbx" class="xszzcheckgroup" value="${y.id};学术著作"/></td>
										<td>${y.name}</td>
										<td>${y.authorseq}</td>
										<td>${y.score}</td>
										<td>${fn:substring(y.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="panel panel-default" style="display:none;" id="kyjldiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695015">科研奖励</a>
					</div>
					<div id="panel-element-695015" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistkyjl}" var="n">
									<tr class="kyjltr">
										<td><input type="checkbox" name="ckbx" class="kyjlcheckgroup" value="${n.id};科研奖励"/></td>
										<td>${n.name}</td>
										<td>${n.authorseq}</td>
										<td>${n.score}</td>
										<td>${fn:substring(n.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				
				
				
				<!-- 教学 -->
				<div class="panel panel-default" style="display:none;" id="zydiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695016">专业</a>
					</div>
					<div id="panel-element-695016" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistzy}" var="zy">
									<tr class="zytr">
										<td><input type="checkbox" name="ckbx" class="zycheckgroup" value="${zy.id};专业"/></td>
										<td>${zy.name}</td>
										<td>${zy.authorseq}</td>
										<td>${zy.score}</td>
										<td>${fn:substring(zy.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="msdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695017">名师</a>
					</div>
					<div id="panel-element-695017" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistms}" var="ms">
									<tr class="mstr">
										<td><input type="checkbox" name="ckbx" class="mscheckgroup" value="${ms.id};名师"/></td>
										<td>${ms.name}</td>
										<td>${ms.authorseq}</td>
										<td>${ms.score}</td>
										<td>${fn:substring(ms.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="kcjsdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695018">课程建设</a>
					</div>
					<div id="panel-element-695018" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistkcjs}" var="kcjs">
									<tr class="kcjstr">
										<td><input type="checkbox" name="ckbx" class="kcjscheckgroup" value="${kcjs.id};课程建设"/></td>
										<td>${kcjs.name}</td>
										<td>${kcjs.authorseq}</td>
										<td>${kcjs.score}</td>
										<td>${fn:substring(kcjs.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="jxyjxmdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695019">教学研究项目</a>
					</div>
					<div id="panel-element-695019" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistjxyjxm}" var="jxyjxm">
									<tr class="jxyjxmtr">
										<td><input type="checkbox" name="ckbx" class="jxyjxmcheckgroup" value="${jxyjxm.id};教学研究项目"/></td>
										<td>${jxyjxm.name}</td>
										<td>${jxyjxm.authorseq}</td>
										<td>${jxyjxm.score}</td>
										<td>${fn:substring(jxyjxm.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="sjjyxmdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695020">实践教育项目</a>
					</div>
					<div id="panel-element-695020" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistsjjyxm}" var="sjjyxm">
									<tr class="sjjyxmtr">
										<td><input type="checkbox" name="ckbx" class="sjjyxmcheckgroup" value="${sjjyxm.id};实践教育项目"/></td>
										<td>${sjjyxm.name}</td>
										<td>${sjjyxm.authorseq}</td>
										<td>${sjjyxm.score}</td>
										<td>${fn:substring(sjjyxm.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="sysjsdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695021">实验室建设</a>
					</div>
					<div id="panel-element-695021" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistsysjs}" var="sysjs">
									<tr class="sysjstr">
										<td><input type="checkbox" name="ckbx" class="sysjscheckgroup" value="${jxyjxm.id};实验室建设"/></td>
										<td>${sysjs.name}</td>
										<td>${sysjs.authorseq}</td>
										<td>${sysjs.score}</td>
										<td>${fn:substring(sysjs.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="tdjsdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695022">团队建设</a>
					</div>
					<div id="panel-element-695022" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclisttdjs}" var="tdjs">
									<tr class="tdjstr">
										<td><input type="checkbox" name="ckbx" class="tdjscheckgroup" value="${tdjs.id};团队建设"/></td>
										<td>${tdjs.name}</td>
										<td>${tdjs.authorseq}</td>
										<td>${tdjs.score}</td>
										<td>${fn:substring(tdjs.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="xkjsdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695023">学科竞赛</a>
					</div>
					<div id="panel-element-695023" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistxkjs}" var="xkjs">
									<tr class="xkjstr">
										<td><input type="checkbox" name="ckbx" class="xkjscheckgroup" value="${xkjs.id};学科竞赛"/></td>
										<td>${xkjs.name}</td>
										<td>${xkjs.authorseq}</td>
										<td>${xkjs.score}</td>
										<td>${fn:substring(xkjs.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="jczzdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695024">教材著作</a>
					</div>
					<div id="panel-element-695024" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistjczz}" var="jczz">
									<tr class="jczztr">
										<td><input type="checkbox" name="ckbx" class="jczzcheckgroup" value="${jczz.id};教材著作"/></td>
										<td>${jczz.name}</td>
										<td>${jczz.authorseq}</td>
										<td>${jczz.score}</td>
										<td>${fn:substring(jczz.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default" style="display:none;" id="jxdxcgdiv">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-177574" href="#panel-element-695025">教学单项成果</a>
					</div>
					<div id="panel-element-695025" class="panel-collapse collapse">
						<div class="panel-body">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
								<tr>
									<td></td>
									<td >
										<span>名称</span>
									</td>
									<td >
										<span>作者排序</span>
									</td>
									<td >
										<span>得分</span>
									</td>
									<td >
										<span>发表时间</span>
									</td>
								</tr>
								<c:forEach items="${aclistjxdxcg}" var="jxdxcg">
									<tr class="jxdxcgtr">
										<td><input type="checkbox" name="ckbx" class="jxdxcgcheckgroup" value="${jxdxcg.id};教学单项成果"/></td>
										<td>${jxdxcg.name}</td>
										<td>${jxdxcg.authorseq}</td>
										<td>${jxdxcg.score}</td>
										<td>${fn:substring(jxdxcg.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				
			</div>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
	  		<tr>
	  			<td style="text-align: center;"><button type="button" class="btn btn-primary" id="hdbtn" onclick="holdbtn();">保存</button></td>
	  		</tr>
	  		
			
  		</table>
	
	<script type="text/javascript">
		$(function(){
			
				
				
				
				var accmenu = "${accmenu}";
				var account = "${account}";
				var accountarray = account.split(",");
				var n=0;
				var lwcount;
				var zlcount;
				var xkcount;
				var kyxmcount;
				var xszzcount;
				var kyjlcount;
				
				if(accmenu.indexOf("论文管理")!=-1){
					$("#str1").append("<span>"+"论文管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					lwcount = accountarray[n];
					n++;
					$("#lwdiv").css("display","block");
				}
				
				if(accmenu.indexOf("专利管理")!=-1){
					$("#str1").append("<span>"+"专利管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					zlcount = accountarray[n];
					n++;
					$("#zldiv").css("display","block");
				}
				if(accmenu.indexOf("学科管理")!=-1){
					$("#str1").append("<span>"+"学科管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					xkcount = accountarray[n];
					n++;
					$("#xkdiv").css("display","block");
				}
				if(accmenu.indexOf("科研项目管理")!=-1){
					$("#str1").append("<span>"+"科研项目管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					kyxmcount = accountarray[n];
					n++;
					$("#kyxmdiv").css("display","block");
				}
				if(accmenu.indexOf("学术著作管理")!=-1){
					$("#str1").append("<span>"+"学术著作管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					xszzcount = accountarray[n];
					n++;
					$("#xszzdiv").css("display","block");
				}
				if(accmenu.indexOf("科研奖励管理")!=-1){
					$("#str1").append("<span>"+"科研奖励管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					kyjlcount = accountarray[n];
					n++;
					$("#kyjldiv").css("display","block");
				}
				
				
				var zycount;
				var mscount;
				var kcjscount;
				var jxyjxmcount;
				var sjjyxmcount;
				var sysjscount;
				var tdjscount;
				var xkjscount;
				var jczzcount;
				var jxdxcgcount;
				
				if(accmenu.indexOf("专业管理")!=-1){
					$("#str1").append("<span>"+"专业管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					zycount = accountarray[n];
					n++;
					$("#zydiv").css("display","block");
				}
				if(accmenu.indexOf("名师管理")!=-1){
					$("#str1").append("<span>"+"名师管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					mscount = accountarray[n];
					n++;
					$("#msdiv").css("display","block");
				}
				if(accmenu.indexOf("课程建设管理")!=-1){
					$("#str1").append("<span>"+"课程建设管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					kcjscount = accountarray[n];
					n++;
					$("#kcjsdiv").css("display","block");
				}
				if(accmenu.indexOf("教学研究项目管理")!=-1){
					$("#str1").append("<span>"+"教学研究项目管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					jxyjxmcount = accountarray[n];
					n++;
					$("#jxyjxmdiv").css("display","block");
				}
				if(accmenu.indexOf("实践教育项目管理")!=-1){
					$("#str1").append("<span>"+"实践教育项目管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					sjjyxmcount = accountarray[n];
					n++;
					$("#sjjyxmdiv").css("display","block");
				}
				if(accmenu.indexOf("实验室建设管理")!=-1){
					$("#str1").append("<span>"+"实验室建设管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					sysjscount = accountarray[n];
					n++;
					$("#sysjsdiv").css("display","block");
				}
				if(accmenu.indexOf("团队建设管理")!=-1){
					$("#str1").append("<span>"+"团队建设管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					tdjscount = accountarray[n];
					n++;
					$("#tdjsdiv").css("display","block");
				}
				if(accmenu.indexOf("学科竞赛管理")!=-1){
					$("#str1").append("<span>"+"学科竞赛管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					xkjscount = accountarray[n];
					n++;
					$("#xkjsdiv").css("display","block");
				}
				if(accmenu.indexOf("教材著作管理")!=-1){
					$("#str1").append("<span>"+"教材著作管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					jczzcount = accountarray[n];
					n++;
					$("#jczzdiv").css("display","block");
				}
				if(accmenu.indexOf("教学单项成果管理")!=-1){
					$("#str1").append("<span>"+"教学单项成果管理需要作品数量为"+accountarray[n]+"个,"+"</span>");
					jxdxcgcount = accountarray[n];
					$("#jxdxcgdiv").css("display","block");
				}
				
				if(account==null||account==""){
					$("#str0").css("display","none");
					$("#str1").css("display","none");
					$("#str2").css("display","none");
					$("#hdbtn").attr("disabled",true);
				}else{
				var intlwcount;
				if(lwcount!=""&&lwcount!=null){
					intlwcount = parseInt(lwcount);
					
				}
				 
				$(".lwcheckgroup").click( function() {
					if ( $(".lwcheckgroup:checked").length > intlwcount ) {
						$(this).attr("checked",false);
						layer.msg("只能选择规定数量!",function(){});
					}
				} );
				
				var intzlcount;
				if(zlcount!=""&&zlcount!=null){
					intzlcount = parseInt(zlcount);
					
				}
				 
				$(".zlcheckgroup").click( function() {
					if ( $(".zlcheckgroup:checked").length > intzlcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intxkcount;
				if(xkcount!=""&&xkcount!=null){
					intxkcount = parseInt(xkcount);
					
				}
				 
				//alert(intaccount);
				$(".xkcheckgroup").click( function() {
					if ( $(".xkcheckgroup:checked").length > intxkcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intkyxmcount;
				if(kyxmcount!=""&&kyxmcount!=null){
					intkyxmcount = parseInt(kyxmcount);
					
				}
				 
				//alert(intaccount);
				$(".kyxmcheckgroup").click( function() {
					if ( $(".kyxmcheckgroup:checked").length > intkyxmcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intxszzcount;
				if(xszzcount!=""&&xszzcount!=null){
					intxszzcount = parseInt(xszzcount);
					
				}
				 
				//alert(intaccount);
				$(".xszzcheckgroup").click( function() {
					if ( $(".xszzcheckgroup:checked").length > intxszzcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intkyjlcount;
				if(kyjlcount!=""&&kyjlcount!=null){
					intkyjlcount = parseInt(kyjlcount);
					
				}
				 
				//alert(intaccount);
				$(".kyjlcheckgroup").click( function() {
					if ( $(".kyjlcheckgroup:checked").length > intkyjlcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				
				var intzycount;
				if(zycount!=""&&zycount!=null){
					intzycount = parseInt(zycount);
					
				}
				
				//alert(intaccount);
				$(".zycheckgroup").click( function() {
					if ( $(".zycheckgroup:checked").length > intzycount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intmscount;
				if(mscount!=""&&mscount!=null){
					intmscount = parseInt(mscount);
					
				}
				 
				//alert(intaccount);
				$(".mscheckgroup").click( function() {
					if ( $(".mscheckgroup:checked").length > intmscount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intkcjscount;
				if(kcjscount!=""&&kcjscount!=null){
					intkcjscount = parseInt(kcjscount);
					
				}
				 
				//alert(intaccount);
				$(".kcjscheckgroup").click( function() {
					if ( $(".kcjscheckgroup:checked").length > intkcjscount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intjxyjxmcount;
				if(jxyjxmcount!=""&&jxyjxmcount!=null){
					intjxyjxmcount = parseInt(jxyjxmcount);
					
				}
				 
				//alert(intaccount);
				$(".jxyjxmcheckgroup").click( function() {
					if ( $(".jxyjxmcheckgroup:checked").length > intjxyjxmcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intsjjyxmcount;
				if(sjjyxmcount!=""&&sjjyxmcount!=null){
					intsjjyxmcount = parseInt(sjjyxmcount);
					
				}
				 
				//alert(intaccount);
				$(".sjjyxmcheckgroup").click( function() {
					if ( $(".sjjyxmcheckgroup:checked").length > intsjjyxmcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intsysjscount;
				if(sysjscount!=""&&sysjscount!=null){
					intsysjscount = parseInt(sysjscount);
					
				}
				 
				//alert(intaccount);
				$(".sysjscheckgroup").click( function() {
					if ( $(".sysjscheckgroup:checked").length > intsysjscount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var inttdjscount;
				if(tdjscount!=""&&tdjscount!=null){
					inttdjscount = parseInt(tdjscount);
					
				}
				 
				//alert(intaccount);
				$(".tdjscheckgroup").click( function() {
					if ( $(".tdjscheckgroup:checked").length > inttdjscount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intxkjscount;
				if(xkjscount!=""&&xkjscount!=null){
					intxkjscount = parseInt(xkjscount);
					
				}
				 
				//alert(intaccount);
				$(".xkjscheckgroup").click( function() {
					if ( $(".xkjscheckgroup:checked").length > intxkjscount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intjczzcount;
				if(jczzcount!=""&&jczzcount!=null){
					intjczzcount = parseInt(jczzcount);
					
				}
				 
				//alert(intaccount);
				$(".jczzcheckgroup").click( function() {
					if ( $(".jczzcheckgroup:checked").length > intjczzcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
				
				var intjxdxcgcount;
				if(jxdxcgcount!=""&&jxdxcgcount!=null){
					intjxdxcgcount = parseInt(jxdxcgcount);
					
				}
				 
				//alert(intaccount);
				$(".jxdxcgcheckgroup").click( function() {
					if ( $(".jxdxcgcheckgroup:checked").length > intjxdxcgcount ) {
						$(this).attr("checked",false);
						alert("只能选择规定数量！");
					}
				} );
					
			}
				
				
				
				
		})
	</script>
	
  </body>
</html>
