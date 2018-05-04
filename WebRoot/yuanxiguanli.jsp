<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>院系管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<link rel="icon" type="image/png" href="images/loginlogo.png">
	<script src="<%=path%>/layer/layer.js"></script>
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
	<script type="text/javascript">
		function check(){
			var x2 = $("#x2").css("display");
			var x3 = $("#x3").css("display");
			var x4 = $("#x4").css("display");
			var x5 = $("#x5").css("display");
			if(x2=="none"){
				return 2;
			}else if(x3=="none"){
				return 3;
			}else if(x4=="none"){
				return 4;
			}else if(x5=="none"){
				return 5;
			}else{
				return 6;
			}
			
		}
		
		function add(){
			var x = check();
			$("#x"+x).show();
		}
		
		function del(){
			var x = check();
			if(x!=2){
				$("#x"+(x-1)).hide();
			}
			
		}
		function checknull(){
			
			var yuan = $.trim($("#yuan").val());
			var adminusername = $.trim($("#adminusername").val());
			var adminpassword = $.trim($("#adminpassword").val());
			var xname1 = $.trim($("#xname1").val());
			$("#yuanNull").hide();
			$("#idNull").hide();
			$("#pwdNull").hide();
			$("#idExist").hide();
			if(yuan==""||!yuan){
				$("#yuanNull").show();
				return 1;
			}else if(adminusername==""||!adminusername){
				$("#idNull").show();
				return 1;
			}else if(adminpassword==""||!adminpassword){
				$("#pwdNull").show();
				return 1;
			}else if(xname1==""||!xname1){
				layer.msg("至少有一个系！");
				return 1;
			}
			else{
				return 0;
			}
		}
		
		
		$(function(){
			$("#adminusername").keyup(function(){
				$.post("getadminusersname",{"adminusername":$("#adminusername").val()},function(result){
			    	if(result=="exist"){
			    		$("#idExist").show();
			    		$("#regbtn").attr("disabled",true);
			    	}else{
			    		$("#idExist").hide();
			    		$("#regbtn").attr("disabled",false);
			    	}
		    	});
			});
		});
			
			
		
		function register(){
			var flag = checknull();
			
			if(flag==0){
			
			if(checkYuan()){
				var yuan = $.trim($("#yuan").val());
				var adminusername = $.trim($("#adminusername").val());
				var adminpassword = $.trim($("#adminpassword").val());
				var x1 = $.trim($("#xname1").val());
				var x2 = $.trim($("#xname2").val());
				var x3 = $.trim($("#xname3").val());
				var x4 = $.trim($("#xname4").val());
				var x5 = $.trim($("#xname5").val());
				$.ajax({
					type:"post",
					url:"YxglServlet",
					async:true,
					data:{
						yuan:yuan,
						adminusername:adminusername,
						adminpassword:adminpassword,
						x1:x1,
						x2:x2,
						x3:x3,
						x4:x4,
						x5:x5,
					},
					success:function(data){
						layer.msg("ok");
					}
				});
				
			}
			
			}else{
			}
		}
		function checkYuan(){
		var flag = false;
			var yuan = $.trim($("#yuan").val());
			$.ajax({
				type:"post",
				url:"YxglServlet",
				async:false,
				data:{
					yuan:yuan,
					type:"checkYuan",
				},
				success:function(data){
					if(data=="DonthaveIt"){
						flag = true;
					}else if(data=="haveIt"){
						layer.msg("院已存在");
					}
				}	
			});
			return flag;
		}
	</script>
	<script type="text/javascript">
		function bianji(t){
			var trcell = t.parentNode.parentNode.cells;
			
			var ipt = document.getElementsByClassName("ipt");
			var ipt2 = document.getElementsByClassName("ipt2");
			for(i=0;i<ipt.length;i++){
				if(trcell[i].innerText!="空"){
					ipt[i].value=trcell[i].innerText;
					ipt2[i].value=trcell[i].innerText;
				}else{
					ipt[i].value="";
					ipt2[i].value="";
				}/* 
				if(i==0){
					document.getElementById("oldyuan").value = trcell[i].innerText;
				} */
			}
		}
		
		$(function(){
			
			
		});
	</script>
	<style type="text/css">
		td{
			text-align: center;
		}
		th{
			text-align: center;
		}
	</style>
  </head>
  
  <body style="height: 100%;background: url(../images/mian_bj_03.gif);">
    
		<div class="panel panel-success" >
		<div class="panel-heading">
			<h3>院系管理</h3>
		</div>
			<div class="tabbable" id="tabs-414744">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-391137" data-toggle="tab"">新建院系</a>
					</li>
					<li>
						 <a href="#panel-672051" data-toggle="tab">院系更改</a>
					</li>
				</ul>
				<div class="tab-content">
				<div class="tab-pane active" id="panel-391137">
					<div class="alert alert-warning alert-dismissable">
				 		<button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>
						<h4>注意!</h4> <strong>Warning!</strong> 新建院系分为两部分：院系信息和其对应的管理员信息<a class="alert-link" id="modal-861015" role="button" href="#modal-container-861015" data-toggle="modal">点击了解详情</a>
					</div>	
					
								
					<div class="panel-group" id="panel-161446">
						<div class="panel panel-default">
							<div class="panel-heading">
						 		<a class="panel-title" href="#panel-element-669933" data-toggle="collapse" data-parent="#panel-161446">院系信息</a>
							</div>
							<div class="panel-collapse in" id="panel-element-669933">
								<div class="panel-body">
									<div class="row clearfix">
		<div class="col-md-2 column">
		</div>
		<div class="col-md-6 column">
			<form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1">院名</label><input type="text" class="form-control" id="yuan" />
					 <label for="exampleInputEmail1" style="color:red;display: none" id="yuanNull">*院名不能为空！</label>
				</div>
			 	<div class="form-group" id="x1" >
					 <label for="exampleInputEmail1">系名</label><input type="text" class="form-control" id="xname1" />
				</div>
				<div class="form-group" id="x2" style="display: none;">
					 <label for="exampleInputEmail1">系名2</label><input type="text" class="form-control" id="xname2" />
				</div>
				<div class="form-group" id="x3" style="display: none;">
					 <label for="exampleInputEmail1">系名3</label><input type="text" class="form-control" id="xname3" />
				</div>
				<div class="form-group" id="x4" style="display: none;">
					 <label for="exampleInputEmail1">系名4</label><input type="text" class="form-control" id="xname4" />
				</div>
				<div class="form-group" id="x5" style="display: none;">
					 <label for="exampleInputEmail1">系名5</label><input type="text" class="form-control" id="xname5" />
				</div>
				
				
			</form>
		</div>
		<div class="col-md-4 column">
		<br>
		<button class="btn btn-warning btn-sm" type="button" onclick="add();">添加</button><br/><br/><br/>
		<button class="btn btn-warning btn-sm" type="button" onclick="del();">减少</button>
		</div>
	</div>
							
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
						 		<a class="panel-title collapsed" href="#panel-element-104296" data-toggle="collapse" data-parent="#panel-161446">院系主管理员</a>
							</div>
							<div class="panel-collapse collapse" id="panel-element-104296">
								<div class="panel-body">
								<div class="col-md-2 column">
								</div>
								<div class="col-md-6 column">
									<div class="form-group">
							 			<label for="exampleInputEmail1">主管理员账号</label>
							 			<input type="text" class="form-control" id="adminusername" />
							 			<label for="exampleInputEmail1" style="color:red;display: none" id="idNull">*管理员id不能为空！</label>
							 			<label for="exampleInputEmail1" style="color:red;display: none" id="idExist">*管理员id已存在！</label>
									</div>
									<div class="form-group">
							 			<label for="exampleInputEmail1">主管理员密码</label>
							 			<input type="text" class="form-control" id="adminpassword" />
							 			<label for="exampleInputEmail1" style="color:red;display: none" id="pwdNull">*管理员密码不能为空！</label>
									</div>
								</div>
								<div class="col-md-4 column">
								</div>
								</div>
							</div>
							<div class="panel-footer" style="text-align: right;">
								<button class="btn btn-default btn-success btn-lg" type="button" id="regbtn" onclick="register();">注册</button>
							</div>
						</div>
					</div>
				</div>
					
				<div class="tab-pane" id="panel-672051">
					<div class="panel panel-default" style="width: 100%;height:100%;">
						<div class="panel-heading">
							
						</div>
						<table class="table table-hover ">
							<thead>
    							<tr class="warning">
    								<th style="width: 20%">院名</th>
    								<th style="width: (80/6)%">系名1</th>
    								<th style="width: (80/6)%">系名2</th>
    								<th style="width: (80/6)%">系名3</th>
    								<th style="width: (80/6)%">系名4</th>
    								<th style="width: (80/6)%">系名5</th>
    								<th style="width: (80/6)%">操作</th>
    							</tr>
    						</thead>
    						<tbody>
    						<c:forEach items="${ylist}" var="a">
    						
    						<c:if test="${a.yname!='学校'}">
    						<tr>
    						<td><strong>${a.yname}</strong></td>
    						
    						<c:set value="${fn:split(a.xnames,';')}" var="str"/>
    						
    						
								<c:forEach items="${str}" var="s" varStatus="ss">
								<td style="line-height: 20px;">
								${s}
								</td>
								</c:forEach>
								<c:if test="${fn:length(str)!=5}">
									<c:forEach begin="1" end="${5-fn:length(str)}" var="i">
										<td>空</td>
									</c:forEach>
								</c:if>
							<td><a class="btn" id="modal-834996" role="button" href="#modal-container-834996" data-toggle="modal" onclick="bianji(this);">编辑</a></td>
							</tr>
							</c:if>
    						</c:forEach>
    						</tbody>
						</table>
					</div>
				</div>
				</div>
			</div>
</div>

<div class="modal fade" id="modal-container-861015" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
				<h4 class="modal-title" id="myModalLabel">详细</h4>
			</div>
			<div class="modal-body">
				分为两部分！院系和管理员信息都要填写，不然无法注册
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" type="button" id="regbtn" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modal-container-834996" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
					<h4 class="modal-title" id="myModalLabel">编辑</h4>
				</div>
				<div class="modal-body">
				<form  class="form-horizontal" role="form" method="post" action="YuanXiGuanLiServlet">
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">院系</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="yuan"/>
							<input type="text" class="ipt2" name="oldyuan" style="display: none;">
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">系名1</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="x1">
							<input type="text" class="ipt2" name="oldx1" style="display: none;">
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">系名2</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="x2"/>
							<input type="text" class="ipt2" name="oldx2" style="display: none;">
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">系名3</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="x3"/>
							<input type="text" class="ipt2" name="oldx3" style="display: none;">
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">系名4</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="x4"/>
							<input type="text" class="ipt2" name="oldx4" style="display: none;">
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">系名5</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="x5"/>
							<input type="text" class="ipt2" name="oldx5" style="display: none;">
						</div>
					</div>
					<input type="text" class="ipt" style="display: none;">
					<input type="text" class="ipt2" style="display: none;">
					<input type="text" name="type" value="update" style="display: none;">
					<input type="submit" id="sb" style="display: none;">
				</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" type="button" data-dismiss="modal">关闭</button> <button class="btn btn-primary" type="button" onclick="button()" >保存</button>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
	function button(){

		$("#sb").click();
	}
</script>

  </body>
</html>
