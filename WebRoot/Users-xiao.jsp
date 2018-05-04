<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户管理</title>
    
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
	.table{
	margin-bottom:0px;
	}
	.tiaoa .tiaoli{
	padding:0px;
	}
	</style>
	<script type="text/javascript">
	
	function uploadajax(){
	var file = $("#fileipt").val();
	if(file){
		if (file.lastIndexOf('.')==-1){    //如果不存在"."    
                    alert("路径不正确!");  
                    return false;  
                } 
		var AllExcleExt=".xls|.xlsx|";  
                var extName = file.substring(file.lastIndexOf(".")).toLowerCase();//（把路径中的所有字母全部转换为小写）          
                if(AllExcleExt.indexOf(extName+"|")==-1)          
                {  
                    ErrMsg="该文件类型不允许上传。请上传 "+AllExcleExt+" 类型的文件，当前文件类型为"+extName;  
                    alert(ErrMsg);  
                    return false;  
                }  
	
		$.ajax({
		    url: 'pldr',
		    type: 'POST',
		    cache: false,
		    data: new FormData($('#uploadForm')[0]),
		    processData: false,
		    contentType: false,
		    error: function(){ //失败 
			alert('失败！'); 
			}, 
			success: function(msg){ //成功 
			//alert(msg);
				 if(msg=="success"){
				 	window.location.href="existusers.jsp";
				 	//$("#modal-58230").click();
				 }else if(msg=="modelquestion"){
				 	alert("模板不正确！");
				 }else if(msg=="nodata"){
				 	alert("没有数据！");
				 }
			} 
		});
	}else{
	alert("请选择文件！");
		return;
	}
		
	}
	</script>
	<script>
	function prevPage(){
		//alert("prev");
		var page = check("prevPage");
		if(page!="-1"){
			window.location.href = "GetUserServlet?currpage="+page;
		}
	}
	
	function check(type){
	//alert("check");
		var totalcount = $("#totalcount").text();
		var currpage = $("#currpage").text();
		//currpage = parsenInt(currpage);
		var pagecount = $("#pagecount").text();
		//pagecount = parsenInt(pagecount);
		//alert("totalcount:"+totalcount+"  currpage:"+currpage+"   pagecount:"+pagecount);
		if(type=="prevPage"){
			if(currpage==1){
				return -1;
			}else{
				return currpage-1;
			}
		}
		if(type=="nextPage"){
			if(currpage==pagecount){
				return -1;
			}else{
				return currpage/1+1;
			}
		}
		if(type=="changePage"){
			var change = $("#change").val();
			//alert("change:"+change);
			if(change>=1&&change<=pagecount){
				return change;
			}else{
				alert("请输入正确的值");
				return -1;
			}
		}
	}
	</script>
	<!-- <script type="text/javascript">
	
	function nextPage(){
		var page = check("nextPage");
		//alert(page);
		if(page!="-1"){
			window.location.href = "GetUserServlet?currpage="+page;
		}
	}
	
	function changPage(){
		//alert("check success");
		var page = check("changePage");
		//alert("page:"+page);
		if(page!="-1"){
			window.location.href = "GetUserServlet?currpage="+page;
		}
	}
	
	function keyLogin(e){
  		var theEvent = window.event || e;
     	 var code = theEvent.keyCode || theEvent.which;
     	 	//alert(code);
   		if (code==13) {  //回车键的键值为13
  			changPage();  //调用
   		}
  	}
	</script> -->
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
	
	//alert(num);
			
			var trcell = document.getElementById("tr"+num).cells;
			var ipt = document.getElementsByClassName("ipt");
				for(i=0;i<ipt.length;i++){
					
					//ipt[i].value=trcell[i].innerText;
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
	
	
	
	
	
	</script>
  </head>
  	
  <body>

  
  
  
  
  	<table class="table table-hover ">
    	<thead>
    		<tr class="success">
    			<th>用户账号</th>
    			<th>姓名</th>
    			<th>电话</th>
    			<th>性别</th>
    			<th>身份</th>
    			<th>职位</th>
    			<th>获得该职位时间</th>
    			<th>归属院</th>
    			<th>归属系</th>
    			<th>操作</th>
    		</tr>
    	</thead>
    	<c:if test="${fn:length(userList)==0}"> 
				<tr align="center">
				<td colspan="15" style="color:red;">查询无结果</td>
				</tr>
		</c:if>
    	<c:forEach items="${userList }" var="user">
    		<tr id="tr${user.id }">
    			<td>${user.id }</td>
    			<td style="display: none">${user.pwd }</td>
    			<td>${user.name }</td>
    			<td>${user.tel }</td>
    			<td>${user.sex }</td>
    			<td>
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
    			<td>${user.job }</td>
    			<td>${fn:substring(user.jobtime,0,10)}</td>
    			<td>${user.college }</td>
    			<td>${user.xname }</td>
    			<td><a class="btn" id="modal-674024" role="button" href="#modal-container-674024" data-toggle="modal" onclick="bianji(${user.id})">编辑</a>/<a class="btn" href="javascript:void(0);" onclick="del(this)">删除</a></td>
    		</tr>
    	</c:forEach>
    </table>
    
    <div class="panel-footer" style="height:50px;">
		共${totalcount}条记录,当前第${currpage}/${pagecount}页
		<ul class="pagination" style="float:right;margin-top:-5px;margin-right:17px;" >
		<li>
					<a href="javascript:;" style="cursor: default;">跳转到第 </a>
									</li>
									 <li class="tiaoli" style="padding: 0px"> 
									<a href="javascript:;" class="tiaoa" style="padding: 0px"><input class="form-control" style="border-radius:0px;height:32px;width:39.6px;margin:0px;text-align: center;"size="3px"id="inputnum" value="${currpage}"></a>
									</li>
									 <li>
									<a href="javascript:;" style="cursor: default;">页</a>
									</li>
							<li><a href="javascript:;" onclick="tiaozhuan(${pagecount});" id="imggo">GO </a>	</li>
								</ul>
		</div>
    
   <%--  <ul class="pagination" style="float:right;">
    	<li><a>共<span id="totalcount">${totalcount}</span>条数据&nbsp;当前第<span id="currpage">${currpage }</span>页/共<span id="pagecount">${pagecount }</span>页</a></li>
    	<li><a href="GetUserServlet?currpage=1">首页</a></li>
		<li><a href="javascript:void(0);" onclick="prevPage();">&laquo;</a></li>
		<li><a>跳转到<input type="text" style="height: 18px;width: 25px" value="${currpage}" id="change" onkeydown="keyLogin(event);">页</a></li>
		<li><a href="javascript:void(0);" onclick="nextPage();">&raquo;</a></li>
		<li><a href="GetUserServlet?currpage=${pagecount }">末页</a></li>
	</ul> --%>
	
	
	<div class="modal fade" id="modal-container-674024" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
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
					<button class="btn btn-default" type="button" data-dismiss="modal">关闭</button><button class="btn btn-primary" type="button" data-dismiss="modal" onclick="doPost()">保存</button>
					
				</div>
				
			</div>
		</div>
	</div>
	

	
	
		
  </body>
</html>
