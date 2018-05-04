<%@ page language="java" import="Util.UserDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>用户管理</title>
<script src="<%=path%>/plug/boot/jquery.min.js"></script>
<script src="<%=path%>/layer/layer.js"></script>
<link rel="stylesheet" href="<%=path%>/plug/boot/bootstrap.min.css">
<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
<link rel="icon" type="image/png" href="images/loginlogo.png">

<style type="text/css">

* {
	margin: 0px;
	padding: 0px;
}
body html{
height:100%;
width:100%;

}
.btn-group {
	float: left;
	padding-top: 8px;
	padding-right: 14px;
}

.pagination {
	display: inline-block;
	padding-left: 0;
	margin: 7px 0;
	border-radius: 4px;
	float: right;
}
}
</style>
<script type="text/javascript">
function uploadajax(){
	var file = $("#fileipt").val();
	if(file){
		if (file.lastIndexOf('.')==-1){    //如果不存在"."    
                    layer.msg("路径不正确!");  
                    return false;  
                } 
		var AllExcleExt=".xls|.xlsx|";  
                var extName = file.substring(file.lastIndexOf(".")).toLowerCase();//（把路径中的所有字母全部转换为小写）          
                if(AllExcleExt.indexOf(extName+"|")==-1)          
                {  
                    ErrMsg="该文件类型不允许上传。请上传 "+AllExcleExt+" 类型的文件，当前文件类型为"+extName;  
                    layer.msg(ErrMsg);  
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
			layer.msg('失败！'); 
			}, 
			success: function(msg){ //成功 
			//alert(msg);
				 if(msg=="success"){
				 	window.location.href="existusers.jsp";
				 	//$("#modal-58230").click();
				 }else if(msg=="modelquestion"){
				 	layer.msg("模板不正确！");
				 }else if(msg=="nodata"){
				 	layer.msg("没有数据！");
				 }
			} 
		});
	}else{
	layer.msg("请选择文件！");
		return;
	}
		
	}
</script>
<script>
var crpge = 1;
	$(function() {
		
		changetable();
		
		$("#shul li").click(function() {
			if ($(this).val() == -1) {
				$("#status_select").text("审核状态");
				$("#status_select").val(-1);
			} else {
				$("#status_select").text($(this).text());
				$("#status_select").val($(this).val());
			}
			changetable();
		})

		$("#nful li").click(function() {
			if ($(this).val() == -1) {
				$("#sel1").text("系别");
				$("#sel1").val(-1);
			} else {
				$("#sel1").text($(this).text());
				$("#sel1").val($(this).text());
			}
			changetable();
		})

		});

	function a() {
			var shang = document.getElementById("savecrpge").innerText;
			if (shang == 1) {
				document.getElementById("shangyiye").ATTR("onclick", "");
			}
		}
		function b() {
			var xia = document.getElementById("savecrpge").innerText;
			var pgecont = document.getElementById("moye").name;
			if (xia >= pgecont) {
				document.getElementById("xiayiye").ATTR("onclick", "");
			}
		}
	function click1(num) {

		if (document.getElementById(num).style.display == "block") {
			document.getElementById(num).style.display = "none";
		} else {
			document.getElementById(num).style.display = "block";

		}

	}


	var xmlHttp;

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

	function sousuo() {
		var inputvalue = $("#sousuoinput").val();
		var statusvalue = $("#status_select").val();
		var yearvalue = $("#sel1").val();
		
		$.post("GetUserServlet",{
			"year":yearvalue,
			"status":statusvalue,
			"currpage":"1",
			"inputvalue":inputvalue,
			"flag":"1"
		},function(result){
			var array = new Array();
			array = result.split(",");
			window.ifr.location.href = array[0];
			document.getElementById("savecrpge").innerText = array[1];
			document.getElementById("xiayiye").name = Number(array[1]) + 1;
			document.getElementById("shangyiye").name = Number(array[1]) - 1;
			document.getElementById("moye").name = array[2];
		});
	}

	

	function fzcurrpage(obj) {
		
		crpge = $(obj).attr("name");
	}
	function fzcurrpage2() {
		crpge = 1;
	}

	function changetable() {
		var inputvalue = $("#sousuoinput").val();
		var statusvalue = $("#status_select").val();
		var yearvalue = $("#sel1").val();
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = callback;
		var url = "GetUserServlet?currpage=" + crpge + "&year=" + encodeURI(encodeURI(yearvalue))
				+ "&status=" + statusvalue + "&inputvalue=" + inputvalue
				+ "&flag=1";
		xmlHttp.open("POST", url, true);
		xmlHttp.send(null);
	}

	function callback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var message = xmlHttp.responseText;
				var array = new Array();
				array = message.split(",");
				window.ifr.location.href = array[0];
				document.getElementById("savecrpge").innerText = array[1];
				document.getElementById("shangyiye").name = Number(array[1]) - 1;
				document.getElementById("xiayiye").name = Number(array[1]) + 1;
				document.getElementById("moye").name = array[2];
			} else {
				//alert(xmlHttp.status);
			}
		}
	}

	function test(userid) {
		var rank = document.getElementById("rank_select").value;
		var authorseq = document.getElementById("seq_select").value;
		if (rank == "-1") {
		} else {
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = callback2;
			var url = "queryzy?rank=" + encodeURI(encodeURI(rank))
					+ "&authorseq=" + authorseq + "&userid=" + userid
					+ "&index=1";
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null)
		}
	}

	function callback2() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var message = xmlHttp.responseText;
				var array = message.split(",");
				document.getElementById("df").value = array[0];
				document.getElementById("df2").value = array[1];

			} else {
				//alert(xmlHttp.status);
			}
		}
	}
	
	

		
	
		
		
	    
</script>
<script type="text/javascript">
$(function (){
	var temp;
	$("#username").keyup(function(){
		$.post("getusersname",{"username":$("#username").val()},function(result){
    		temp=result;
    	});
	});
	$("#sb").bind("click",function(){
    	if(!$("#username").val()||$.trim($("#username").val())==""){
    	layer.tips("请填写用户账号!","#username",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	if(temp=="exist"){
  			layer.tips("用户已存在!","#username",{
  			tips:[2,"#FF7F24"]
  			});
  			return false;
    	}
    	 if(!$("#pwd").val()||$.trim($("#pwd").val())==""){
		layer.tips("请填写密码!","#pwd",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	
    	if(!$("#repwd").val()||$.trim($("#repwd").val())==""){
    	layer.tips("请重复密码!","#repwd",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	if($("#repwd").val()!=$("#pwd").val()){
    	layer.tips("两次密码不一致!","#repwd",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	
    	
    	if(!$("#name").val()||$.trim($("#name").val())==""){
    	layer.tips("请填写姓名!","#name",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	} 
    	
    	if(!$("#jobtime").val()||$.trim($("#jobtime").val())=="-1"){
    	layer.tips("请填写获得该职称的最初时间!","#jobtime",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	} 
    	
    });
$("#close").click();
});

	
</script>
</head>

<body >

	<div>
			<div class="col-md-12 column"
				style="margin: 0px;padding-left: 0px;padding-right: 0px;">

				<div class="panel panel-default" style="width: 100%;">
					<div class="panel-heading">
						
						<a  id="modal-834996" role="button" href="#modal-container-834996" data-toggle="modal"><input type="button" class="btn btn-default" style="float: left;margin-right: 20px;" value="新增"></a>
						
							<a  href="plmbdownload?" style="margin-right:15px;float: left;">下载批量导入摸板</a>
							
					
					
							<form  id="uploadForm" enctype="multipart/form-data" style="margin-right:15px;float: left;">
							<input id="fileipt" type="file" name="uploadfile"  size="30" multiple="multiple" style="width: 190px;">
							</form>
							 
						
							<button class="btn btn-default" onclick="uploadajax();" >上传</button>
							
					</div>
					<div class="panel-body">

						<!--  下拉按钮  -->
						<div class="btn-group">

							<button class="btn btn-default" id="sel1" value="-1">系别</button>
							<button data-toggle="dropdown"
								class="btn btn-default dropdown-toggle">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" style="overflow-y: auto;" id="nful">
								<li value="-1"><a href="javascript:;">全部(默认)</a></li>
								<c:forEach items="${xlist }" var="x">
									<li value="${x }"><a href="javascript:;">${x }</a></li>
								</c:forEach>
							</ul>
							
							
							
						</div>

						<!-- <div class="btn-group">

							<button class="btn btn-default" id="status_select" value="-1">审核状态</button>
							<button data-toggle="dropdown"
								class="btn btn-default dropdown-toggle">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="shul">
								<li value="-1"><a href="javascript:;">全部(默认)</a></li>
								<li value="0"><a href="javascript:;">未审核</a></li>
								<li value="1"><a href="javascript:;">审核通过</a></li>
								<li value="2"><a href="javascript:;">审核未通过</a></li>
							</ul>
						</div> -->
						<!--  搜索  -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<form class="navbar-form navbar-left" method="post" role="search">
								<div class="form-group">
									<input type="text" class="form-control" id="sousuoinput" value=""/>
								</div>
								<input class="btn btn-default" type="button" onclick="sousuo();" value="搜索">
							</form>
							<ul class="pagination">
								<li ><a href="javascript:;" onclick="a();fzcurrpage(this);changetable();"
									id="shouye" name="1">首页 </a></li>
								<li ><a href="javascript:;" onclick="a();fzcurrpage(this);changetable();" id="shangyiye" name="${currpage-1}">上一页</a>
								</li>
								<li><a href="javascript:;" id="savecrpge"
									style="cursor: default;">${currpage}</a></li>
								<li ><a href="javascript:;"onclick="b();fzcurrpage(this);changetable();"
									id="xiayiye" name="${currpage+1}">下一页</a>
								</li>
								<li><a href="javascript:;" onclick="b();fzcurrpage(this);changetable();" id="moye"
									name="${pagecount}">末页</a></li>
							</ul>
						</div>

					</div>
					<iframe scrolling="no" frameborder="no" framespacing="0"
						marginwidth="0" marginheight="0" src="" width="100%"
						height="830px" name="ifr" id="childFrame"> 此框架显示无效 </iframe>
				</div>
				<!-- ↓ -->
				</div>
			</div>
	<div class="modal fade" id="modal-container-834996" role="dialog"
					aria-hidden="true" aria-labelledby="myModalLabel"
					data-backdrop="static">
					<div class="modal-dialog">

						<div class="modal-content">
							<div class="modal-header">
								<button class="close" aria-hidden="true" type="button"
									data-dismiss="modal">×</button>
								<h4 class="modal-title" id="myModalLabel">新增</h4>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" role="form"
									action="InsertUserServlet" method="post">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>用户账号</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="username" id="username" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>密码</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="password" name="pwd" id="pwd" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>重复密码</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="password" id="repwd" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>姓名</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="name" id="name"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;"></span>电话</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="number" name="tel" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">性别</label>
										<div class="col-sm-10">
											<select name="sex" id="seq_select"
												class="ipt  form-control">
												<option value="男">男</option>
												<option value="女">女</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">身份</label>
										<div class="col-sm-10">
											<select name="identity" class="ipt  form-control">
												<option value="0">教师</option>
												<option value="1">院管理员</option>
												<option value="-0">科研秘书</option>
												<option value="-1">教学秘书</option>
												<c:if test="${identity=='2' }">
													<option value="2">校管理员</option>
												</c:if>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">归属系</label>
										<div class="col-sm-10">
											<select name="xname" class="ipt  form-control">
												<c:forEach items="${xlist }" var="x">
													<option value="${x }">${x }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">职位</label>
										<div class="col-sm-10">
											<select name="job" 
												class="ipt  form-control">
												<option value="暂无">暂无</option>
												<option value="助教">助教</option>
												<option value="讲师">讲师</option>
												<option value="教授">教授</option>
												<option value="副教授">副教授</option>
											</select>
										</div>
									</div>
								<div class="form-group">
					 				<label class="col-sm-2 control-label" for="inputPassword3">
					 				<span style="color:red; font-size:20px;">*</span>获得该职称时间</label>
									<div class="col-sm-10">
										<input class="form-control ipt"  type="date" name="jobtime" id="jobtime"/>
									</div>
								</div>
								<%
									UserDao u = new UserDao();
									String college = u.QueryCollege((String)session.getAttribute("userid"));
								 %>
								<input type="text" name="college" value="<%= college%>" style="display: none;">
								<input type="submit" id="sb" style="display: none;">
								</form>
							</div>
							<div class="modal-footer">
								<button class="btn btn-default" type="button" data-dismiss="modal" id = "close">关闭</button><button class="btn btn-primary" type="button" onclick="doPost()">保存</button>
							</div>
							<script type="text/javascript">
								function doPost(){
									$("#sb").click();
								}	
							</script>
						</div>
					</div>
				</div>		
	<script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
	
</body>

</html>