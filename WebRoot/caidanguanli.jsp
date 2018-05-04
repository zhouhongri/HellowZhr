<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>院菜单管理</title>
    
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
	
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
		}
		body{
			margin-bottom: 0px;
			margin-left: 0px;
			margin-right: 0px;
			margin-top: 0px;
			overflow:hidden;
			
			
			}
		</style>
  

		
		
		<script src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript">
			function getlist0(){
				
				$.ajax({
					type:"post",
					url:"GetMenuServlet",
					async:true,
					data:{
						type:"0",
					},
					dataType:"json",
					success:function(list){
						//alert(1);
						var jsonlist= eval(list); 
						for(s in jsonlist){
							//alert(jsonlist[s]);
							$("#"+jsonlist[s]).html("<b style='color:red;'>已拥有<b>");
							$("#"+jsonlist[s]).next().children(":first").addClass("disabled");
							$("#"+jsonlist[s]).next().children("").eq(1).removeClass("disabled");
						}
					}
				});
			}
			
			function getlist1(){
				
				$.ajax({
					type:"post",
					url:"GetMenuServlet",
					async:true,
					data:{
						type:"1",
					},
					dataType:"json",
					success:function(list){
						//alert(1);
						var jsonlist= eval(list); 
						for(s in jsonlist){
							//alert(jsonlist[s]);
							$("#"+jsonlist[s]).html("<b style='color:red;'>已拥有<b>");
							$("#"+jsonlist[s]).next().children(":first").addClass("disabled");
							$("#"+jsonlist[s]).next().children("").eq(1).removeClass("disabled");
						}
					}
				});
			}
			
			function add(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu0Servlet",
					async:true,
					data:{
						type:"add",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}
			
			function add1(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu1Servlet",
					async:true,
					data:{
						type:"add",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}
			
			function del(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu0Servlet",
					async:true,
					data:{
						type:"del",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}
			
			function del1(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu1Servlet",
					async:true,
					data:{
						type:"del",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}
			
			
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
  
  <body  style="height: 100%;background: url(../images/mian_bj_03.gif);" onload="getlist0();getlist1();">
  
		<div class="panel panel-success" >
		<div class="panel-heading" >
			<h3>菜单编辑</h3>
		</div>
			<div class="tabbable" id="tabs-414744">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-391137" data-toggle="tab" onclick="getlist0()">科研管理</a>
					</li>
					<li>
						 <a href="#panel-672051" data-toggle="tab">教学管理</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-391137">
						<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>
							二级菜单名
						</th>
						<th>
							状态
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<tr >
						<td>
							论文管理
						</td>
						<td id="00">
							未拥有
						</td>
						<td>
							 <button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							 <button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							专利管理
						</td>
						<td id="01">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							学术著作管理
						</td>
						<td id="02">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							学科管理
						</td>
						<td id="03">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							科研奖励管理
						</td>
						<td id="04">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr >
						<td>
							科研项目管理
						</td>
						<td id="05">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
				</tbody>
			</table>
					</div>
					<div class="tab-pane" id="panel-672051">
						<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>
							二级菜单名
						</th>
						<th>
							状态
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<tr >
						<td>
							专业管理
						</td>
						<td id="10">
							未拥有
						</td>
						<td>
							 <button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							 <button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							名师管理
						</td>
						<td id="11">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							课程建设管理
						</td>
						<td id="12">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							教学研究项目管理
						</td>
						<td id="13">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<!-- <tr  >
						
						<td>
							实践教育项目管理
						</td>
						<td id="14">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr> -->
					<tr >
						<td>
							实验室建设管理
						</td>
						<td id="15">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<!-- <tr >
						<td>
							团队建设管理
						</td>
						<td id="16">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr >
						<td>
							学科竞赛管理
						</td>
						<td id="17">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr> -->
					<tr >
						<td>
							教材著作管理
						</td>
						<td id="18">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<!-- <tr >
						<td>
							教学单项成果管理
						</td>
						<td id="19">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr> -->
				</tbody>
			</table>
					</div>
				</div>
			</div>
			<div class="panel-footer" style="height: 50px">
				
			</div>
			</div>
		
 
 		
	
	
	
		

    </body>
</html>
