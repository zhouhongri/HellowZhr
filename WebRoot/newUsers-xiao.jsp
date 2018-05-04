<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Util.UserDao"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
     <link rel="stylesheet" href="css/bootstrapmodel.css">
     <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/baobiaocss.css">
   
       <style type="text/css">
    table{
    	width: 100%;
    	table-layout: fixed;
    }
    th,td{
    	width: 6.3%;
    }
    	 th,td{
		text-overflow:ellipsis; overflow:hidden; white-space:nowrap; 
	}
	.behigher{
	height:1000px;
	}
    </style>
</head>

<body>
     <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-id">用户账号</th>
                                            <th class="table-title">姓名</th>
                                            <th class="table-type am-hide-sm-only">电话</th>
                                            <th class="table-author am-hide-sm-only">性别</th>
                                            <th class="table-date am-hide-sm-only">身份</th>
                                            <th class="table-type am-hide-sm-only">职位</th>
                                            <th class="table-type am-hide-sm-only">获得该职位时间</th>
                                            <th class="table-type am-hide-sm-only">归属院</th>
                                            <th class="table-type am-hide-sm-only">归属系</th>
                                            <th class="table-set" style="width:10%">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:if test="${fn:length(userList)==0}"> 
										<tr align="center">
											<td colspan="16" style="color:red;">查询无结果</td>
										</tr>
										</c:if>
										<c:forEach items="${userList}" var="user">
                                        <tr id="tr${user.id}">
                                            <td>${user.id}</td>
                                            <td style="display: none">${user.pwd }</td>
                                            <td >${user.name }</td>
                                            <td class="am-hide-sm-only">${user.tel }</td>
                                            <td class="am-hide-sm-only">${user.sex }</td>
                                            <td class="am-hide-sm-only">
                                            <c:if test="${user.identity =='1'}">
    											院管理员
    										</c:if>
    										<c:if test="${user.identity =='0'}">
						    					教师
						    				</c:if>
						    				<c:if test="${user.identity =='2'}">
						    					校管理员
						    				</c:if>
						    				<c:if test="${user.identity =='-1'}">
						    					科研秘书
						    				</c:if>
						    				<c:if test="${user.identity =='-0'}">
						    					教学秘书
						    				</c:if>
    										</td>
                                            <td class="am-hide-sm-only">${user.job }</td>
                                            <td class="am-hide-sm-only">${fn:substring(user.jobtime,0,10)}</td>
                                            <td class="am-hide-sm-only">${user.college }</td>
                                            <td class="am-hide-sm-only">${user.xname }</td>
                                            
                                            <td style="width:10%">
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><a id="modal-674024" href="#modal-container-674024" data-toggle="modal" onclick="bianji(${user.id})"><span class="am-icon-pencil-square-o"></span> 编辑</a></button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="del(this)"><span class="am-icon-trash-o"></span> 删除</button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                </table>

<div class="modal fade" id="modal-container-674024" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" aria-hidden="true" type="button" data-dismiss="modal" id="closebutton">×</button>
					<h4 class="modal-title" id="myModalLabel">编辑</h4>
				</div>
				<div class="modal-body">
					
					<form class="form-horizontal" role="form" name="form">
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputEmail3">教师编号</label>
							<div class="col-sm-10">
								<input class="form-control ipt"  type="text" readonly="readonly" id="tid"/>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">教师密码</label>
							<div class="col-sm-10">
								<input class="form-control ipt"  type="text" id="pwd"/>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">教师姓名</label>
							<div class="col-sm-10">
								<input class="form-control ipt"  type="text" id="name"/>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">教师电话</label>
							<div class="col-sm-10">
								<input class="form-control ipt" type="text" id="tel"/>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">教师性别</label>
							<div class="col-sm-10">
								<select name="sex"  id="sex" class="ipt  form-control">
									<option value="男">男</option>
									<option value="女">女</option>
								</select>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">教师身份</label>
							<div class="col-sm-10">
								<select name="identity"  id="identity" class="ipt form-control">
									<option value="院管理员">院管理员</option>
									<option value="校管理员">校管理员</option>
									<option value="教师">教师</option>
									<option value="科研秘书">科研秘书</option>
									<option value="教学秘书">教学秘书</option>
								</select>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">教师职称</label>
							<div class="col-sm-10">
								<select name="job"  id="job" class="ipt form-control">
									<option value="暂无">暂无</option>
									<option value="助教">助教</option>
									<option value="讲师">讲师</option>
									<option value="副教授">副教授</option>
									<option value="教授">教授</option>
								</select>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">获得该职称时间</label>
							<div class="col-sm-10">
								<input class="form-control ipt"  type="date" id="jobtime"/>
							</div>
						</div>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">归属院</label>
							<div class="col-sm-10">
								<select name="yname"  id="yname" class="ipt form-control" onchange="changexi(this)">
									<c:forEach items="${ylist }" var="y">
										<option value="${y }">${y }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<script type="text/javascript">
							function changexi(t){
								var $yname = $(t).val();
								$.ajax({
									type:"post",
									url:"getXiByYname",
									async:"false",
									data:{
										yname:$yname,
									},
									success:function (data){
										var xname = document.form.xname;
										xname.length = 1;
										var xlist = eval(data);
										for(var i in xlist){
											$(xname).append("<option value='"+xlist[i]+"'>"+xlist[i]+"</option>")
										}
									}
								});
							}
						</script>
						<div class="form-group">
					 		<label class="col-sm-2 control-label" for="inputPassword3">归属系</label>
							<div class="col-sm-10">
								<select name="xname"  id="xname" class="form-control">
									<option value="-1">----请选择----</option>
								</select>
							</div>
						</div>
						
				</form>	
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" type="button" data-dismiss="modal" id="close">关闭</button><button class="btn btn-primary" type="button" data-dismiss="modal" onclick="doPost()">保存</button>
					
				</div>
				
			</div>
		</div>
	</div>

    <script src="assets/js/jquery.min.js"></script>
      <script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
     <script>
    	$(function(){
    	var tableHeight = $("table").outerHeight();
    	$("#mainFrame",parent.document).css("height",tableHeight);
    		$(".table-main thead tr").each(function(){  
        $(this).children("th").not("#fixedtd").mouseover(function () {  
            $(this).attr("title", $(this).text());  
        });  
    });  
    $(".table-main tbody tr").each(function(){  
        $(this).children("td").not("#fixedtd").mouseover(function () {  
            $(this).attr("title", $(this).text());  
        });  
    }); 
    $("#closebutton,#close").click(function(){
    tableHeight = $("table").outerHeight();
   $("#mainFrame",parent.document).css("height",tableHeight);
    })
    
    	})
    	function beHigher(){
    	$("#mainFrame",parent.document).css("height","1500px");
    	}
    	
    </script>
	<script type="text/javascript">
	function del(t){
		var id = $(t).parent().parent().children(":first").html().trim();
		$.ajax({
			type:"post",
			url:"UserServlet",
			async:true,
			data:{
				type:"del",
				id:id,
			},
			success:function(data){
				alert("已成功删除");
				$(t).parent().parent().remove();	
			}
		});
	}
	</script>
	
	<script type="text/javascript">
	function bianji(num){
	$("#mainFrame",parent.document).css("height","1000px");
			var trcell = document.getElementById("tr"+num).cells;
			var ipt = document.getElementsByClassName("ipt");
				for(i=0;i<ipt.length;i++){
					$(ipt[i]).val(trcell[i].innerText);
				}
	}
	
	function doPost(){
		$.ajax({
			type:"post",
			url:"BianJiUserServlet",
			async:true,
			data:{
				userid:$("#tid").val(),
				pwd:$("#pwd").val(),
				jobtime:$("#jobtime").val(),
				name:$("#name").val(),
				sex:$("#sex").val(),
				tel:$("#tel").val(),
				identity:$("#identity").val(),
				job:$("#job").val(),
				yname:$("#yname").val(),
				xname:$("#xname").val(),
				type:"xiao",
			},
			success:function(data){
				//alert("go");	
			}
		});
		
	}
	
	function getXi(t){
		var xi = $(t).text();
		$.ajax({
			type:"post",
			url:"GetUserServlet",
			data:{
				xi:xi,
			}
		});
	}
	</script>
</body>

</html>