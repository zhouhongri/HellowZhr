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
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrapmodel.css">
    <style type="text/css">
   .layui-layer{
        z-index: 19891015 !important;
    top: 15% !important;
    left: 30% !important;
    }
    .layui-layer-btn{
    text-align: center !important;
    }
</style>
    <link rel="stylesheet" href="<%=path%>/layer/mobile/need/layer.css">

     <script src="assets/js/jquery.min.js"></script>
     <script src="<%=path%>/layer/layer.js"></script>
 <script>
var crpge = 1;
 function xiaoshiyear(){
 	$("#xsyear").remove();
	}
	$(function() {
		var removeFlag=0;
		var filetip=0;
		changetable();
			$("#up").click(function(){
 			  document.getElementById("fileipt").click();
 		})
 		$("#sel1").change(function() {
			if (removeFlag == 0) {
				removeFlag = 1;
			}else if(removeFlag == 1){
			changetable();
			}
			//alert($("#sel1").find("option:selected").text());
			//alert("val值:"+$("#sel1").val());
		})
 		
 		$("#fileipt").change(function(){
 			
 			var path = document.getElementById("fileipt").value;  
 			if(filetip==0){
           layer.msg("您选择了文件:"+path+"<br>点击右侧上传按钮进行上传", {
  					time: 0 //不自动关闭
 					,btn: ['不再提示','我知道了']
  					,yes: function(index){
   					layer.close(index);
    				filetip = 1;
    				}
});}
 			
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
	alert(2);
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
			window.mainFrame.location.href = array[0];
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
		var yearvalue = $("#sel1").val();
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = callback;
		var url = "GetUserServlet?currpage=" + crpge + "&year=" + encodeURI(encodeURI(yearvalue))
				 + "&inputvalue=" + inputvalue
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
				window.mainFrame.location.href = array[0];
				document.getElementById("savecrpge").innerText = array[1];
				document.getElementById("shangyiye").name = Number(array[1]) - 1;
				document.getElementById("xiayiye").name = Number(array[1]) + 1;
				document.getElementById("moye").name = array[2];
				document.getElementById("savepgecnt").innerText = array[2];
			} else {
				//alert(xmlHttp.status);
			}
		}
	}
</script>
<script>
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

<body data-type="index">

            <div class="tpl-content-page-title">
                        精于算绩
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li class="am-active">用户管理</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        	用户管理
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="am-btn-group-xs right am-form-group am-form-file">
								<form  id="uploadForm" enctype="multipart/form-data"></form>
								<button type="button" class="am-btn am-btn-default am-btn-sm" id="up">
   								 <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
  								<input type="file" multiple size="1" style="display: none;" id="fileipt">
  								</form>
  								<button type="button" class="am-btn am-btn-default am-btn-sm" onclick="uploadajax();"><span class="am-icon-upload"></span> 上传</button>
                            	<a href="plmbdownload?"><button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-download"></span>批量导入模板</button></a>
                                  <a id="modal-834996" role="button" href="#modal-container-834996"
							data-toggle="modal">  <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button></a>
                                 
                    </div>
 </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        
                        <div class="am-u-sm-12 am-u-md-3" onclick="xiaoshiyear();">
                                <select data-am-selected="{maxHeight:200}" id="sel1" >
            					<option style="display:none" value="-1" selected="selected" id="xsyear">学院</option>
             					<option value="-1">全部(默认)</option>
             					<c:forEach items="${ylist }" var="y">
									<option value="${y }">${y }</option>
								</c:forEach>
           					    </select>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field" id="sousuoinput">
                                <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button" onclick="sousuo();"></button>
          </span>
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                       <iframe frameborder="0" style="margin-left: 0px;position:relative;" scrolling="no"
					width="100%"    id="mainFrame" name="mainFrame"   src=""></iframe>
                       <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li><a href="javascript:;"
									onclick="a();fzcurrpage(this);changetable();" id="shouye"
									name="1">首页</a></li>
                                            <li><a href="javascript:;"
									onclick="a();fzcurrpage(this);changetable();" id="shangyiye"
									name="${currpage-1}">上页</a></li>
                                            <li><a href="javascript:;" 
									style="cursor: default;"><span id="savecrpge">${currpage}</span>/<span id="savepgecnt">${pagecount}</span></a></li>
                                            <li><a href="javascript:;"
									onclick="b();fzcurrpage(this);changetable();" id="xiayiye"
									name="${currpage+1}">下页</a></li>
                                            <li><a href="javascript:;"
									onclick="b();fzcurrpage(this);changetable();" id="moye"
									name="${pagecount}">末页</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <hr>

                        </div>

                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>

    <!-- ↓ -->
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
									action="InsertUserServlet" method="post" name="form">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>用户账号</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="username" id="username" oninput="this.value=this.value.replace(/[/W]/g,'') " onpaste="return false;"  />
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
												<option value="-0">科研秘书</option>
												<option value="-1">教学秘书</option>
												<option value="2">校管理员</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>归属院</label>
										<div class="col-sm-10">
											<select name="yname" class=" form-control" onchange="changexi(this);" id="ylist">
												<option value="-1">---请选择---</option>
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
								<select name="xname"  id="xname" class="form-control ipt">
									<option value="-1">----请选择----</option>
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
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
   
    
    
</body>

</html>