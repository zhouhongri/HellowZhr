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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>个人信息</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="cs/pintuer.css">
    	<link rel="stylesheet" href="cs/admin.css">
		<link rel="stylesheet" href="css/index.css" type="text/css">
		<link rel="stylesheet" href="<%=path%>/plug/imgUp/css/font-awesome.min.css">
        <link rel="stylesheet" href="<%=path%>/plug/imgUp/css/amazeui.min.css">
        <link rel="stylesheet" href="<%=path%>/plug/imgUp/css/amazeui.cropper.css">
        <link rel="stylesheet" href="<%=path%>/plug/imgUp/css/custom_up_img.css">
     	<link rel="stylesheet" href="<%=path%>/assets/plugins/bootstrap/css/bootstrap.min.css">
		<script src="<%=path%>/js/jquery-1.7.1.min.js"></script>
		<script src="<%=path%>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=path%>/layer/layer.js"></script>
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
			<link rel="icon" type="image/png" href="images/loginlogo.png">
			<script language="javascript" type="text/javascript">
				function click1(num) {
	
					if(document.getElementById(num).style.display == "block") {
						document.getElementById(num).style.display = "none";
					} else {
						document.getElementById(num).style.display = "block";
	
					}
	
				}
	
			function huoqu(pagecount,currpage){
				var inputnum = document.getElementById("inputnum");
				var imggo = document.getElementById("imggo");
				var inputnumval;
				if(inputnum.value==""){
					inputnumval=currpage;
				}else{
					inputnumval = inputnum.value;
				}
				
				imggo.href="golw?inv="+inputnumval+"&currpage="+currpage+"&pagecount="+pagecount;
			}
			
			function del(t){
				if(confirm('你确定要删除此记录吗？')){
					var title = $(t).parent().prev().prev().prev().prev().prev().prev().prev().prev().html();
	                 layer.msg(title);
	                 $(t).parent().parent().remove();
	                 $.ajax({
	                 	type:"post",
	                 	url:"Del",
	                 	data:{
	                 		"title":title,
	                 		"type":"lunwen"
	                 	}
	                 })
	              }else{
	                 layer.msg("取消");
	                 //return false;
	             }
			}
				
			</script>
			
			<script type="text/javascript">
			window.onload=function(){
				//ymd();
				dt();
			}
			
			function ymd(){
				var input2 = document.getElementById("input2").value;
				var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth();
				//month=month+1;
				var day = now.getDate();
				if(parseInt(month)<9&&parseInt(day)<9){
					input2=year+"-0"+(month+1)+"-0"+day;
				}else{
					if(parseInt(month)<9){
						input2=year+"-0"+(month+1)+"-"+day;
						//alert(input2);
					}
					else if(parseInt(day)<9){
						input2=year+"-"+(month+1)+"-0"+day;
					}else{
						input2=year+"-"+(month+1)+"-"+day;
					}
				}
			}
	
			function dt(){
			window.sidemainframe.location.href="sidelw.jsp";
		}
	
	
	
			</script>
			
			<script type="text/javascript">
			
			window.onload=function(){
				queryactivity();
				queryactivitytwo();
				queryxiaoactivity();
				queryxiaoactivitytwo();
				//queryacmessage();
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
		
		function queryactivity(){
			$.post("atvflagquery",function(message){
				//alert(message);
				if("true"==message){
					$("#rlactp").css("display","black");
				}
				if("false"==message){
					$("#rlactp").css("display", "none");
					//location.reload();
				}
			})
			
		}
		function queryactivitytwo(){
			var jobname="${job}";
			if(jobname==""||jobname==null){
				jobname="助教";
			}
			else if(jobname=="助教"){
				jobname="讲师";
			}
			else if(jobname=="讲师"){
				jobname="副教授";
			}
			else if(jobname=="副教授"){
				jobname="教授";
			}
			$.post("atvflagquerytwo",{"jobname":jobname},function(message){
				//alert(message);
				if("true"==message){
					$("#rlactptwo").css("display","black");
				}
				if("false"==message){
					$("#rlactptwo").css("display", "none");
					//location.reload();
				}
			})
			
		}
		function queryxiaoactivity(){
			$.post("xiaoatvflagquery",function(message){
				//alert(message);
				if("true"==message){
					$("#xrlactp").css("display","black");
				}
				if("false"==message){
					$("#xrlactp").css("display", "none");
					//location.reload();
				}
			})
			
		}
		function queryxiaoactivitytwo(){
			var jobname="${job}";
			if(jobname==""||jobname==null){
				jobname="助教";
			}
			else if(jobname=="助教"){
				jobname="讲师";
			}
			else if(jobname=="讲师"){
				jobname="副教授";
			}
			else if(jobname=="副教授"){
				jobname="教授";
			}
			$.post("xiaoatvflagquerytwo",{"jobname":jobname,"yname":"学校"},function(message){
				//alert(message);
				if("true"==message){
					$("#xrlactptwo").css("display","black");
				}
				if("false"==message){
					$("#xrlactptwo").css("display", "none");
					//location.reload();
				}
			})
			
		}
		
	/*
	function queryacmessage(){
		//alert("1");
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = queryamback;
			var url = "qacmessage?qamf=success";
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
			
		}
		
		
		function queryamback() {
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
				//alert("1");
						var message = xmlHttp.responseText;
						if("yes"==message){
							
							$("#hdbtn").attr("disabled",true);
							
						}
						if("no"==message){
							$("#hdbtn").attr("disabled",false);
							//location.reload();
						}
					}
				} else {
					//alert(xmlHttp.status);
				}
			}
	*/
			function change(){
			var province = document.getElementById("zcdval").value;
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = callback;
			var url = "CdServlet?province="+province; 
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
		}
	
	
		function callback() {
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
					var xmlDoc = xmlHttp.responseXML.documentElement;
					var xSel = xmlDoc.getElementsByTagName('select');
					var select_root = document.getElementById("zcdslt"); 
					select_root.options.length=0;
					for(var i=0;i<xSel.length;i++){ 
	         			var xValue = xSel[i].childNodes[0].firstChild.nodeValue;
						var xText = xSel[i].childNodes[1].firstChild.nodeValue; 
						var option = new Option(xText, xValue);
						select_root.add(option);
					}
				} else {
					//alert(xmlHttp.status);
				}
			}
		}
		
		function changetime(){
			var input1 = document.getElementById("input1").value;
			//alert(input1);
			var input2 = document.getElementById("input2").value;
				var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth();
				//month=month+1;
				var day = now.getDate();
				var today;
				//input2=today;
				if(parseInt(month)<9&&parseInt(day)<9){
						today=year+"-0"+(month+1)+"-0"+day;
					}else{
						if(parseInt(month)<9){
							today=year+"-0"+(month+1)+"-"+day;
						}
						else if(parseInt(day)<9){
							today=year+"-"+(month+1)+"-0"+day;
						}else{
						today=year+"-"+(month+1)+"-"+day;
						}
					}
				if(input1>today){
				
					$("#queryBtn").attr("disabled", false);
					
					layer.msg("请输入正确的日期！");
					$("#input1").val(today);
					return false;
				}
				if(input2>today){
				
					$("#queryBtn").attr("disabled", false);
					layer.msg("请输入正确的日期！");
					$("#input2").val(today);
					return false;
				}
				if(input1!=""&&input2!=""){
					if(input1>input2){
						//alert("1")
						$("#queryBtn").attr("disabled", false);
						layer.msg("请输入正确的日期格式！");
						$("#input1").val("");
						$("#input2").val("");
						return false;
						//$("#input1").val("");
					}
				}
				
		}
		
		function query() {
			changeButtonDisable(true);
			//var ndval = document.getElementById("sel1").value;
			var zcdval = document.getElementById("zcdval").value;
			var zcdsltval = document.getElementById("zcdslt").value;			
			var input1 = document.getElementById("input1").value;
			//alert(input1);
			var input2 = document.getElementById("input2").value;
				var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth();
				//month=month+1;
				var day = now.getDate();
				var today;
				if(parseInt(month)<9&&parseInt(day)<9){
						today=year+"-0"+(month+1)+"-0"+day;
					}else{
						if(parseInt(month)<9){
							today=year+"-0"+(month+1)+"-"+day;
						}
						else if(parseInt(day)<9){
							today=year+"-"+(month+1)+"-0"+day;
						}else{
						today=year+"-"+(month+1)+"-"+day;
						}
					}
			if(input1==""&&input2==""){
			
				input1="1900-01-01";
				if(parseInt(month)<9&&parseInt(day)<9){
					input2=year+"-0"+(month+1)+"-0"+day;
				}else{
					if(parseInt(month)<9){
						input2=year+"-0"+(month+1)+"-"+day;
					}
					else if(parseInt(day)<9){
						input2=year+"-"+(month+1)+"-0"+day;
					}else{
						input2=year+"-"+(month+1)+"-"+day;
					}
				}
				
				//alert(input2);
			}else{
				if(input1==""){
				
					input1="1900-01-01";
					//alert(input1);
				}
				if(input2==""){
						if(parseInt(month)<9&&parseInt(day)<9){
						input2=year+"-0"+(month+1)+"-0"+day;
					}else{
						if(parseInt(month)<9){
							input2=year+"-0"+(month+1)+"-"+day;
						}
						else if(parseInt(day)<9){
							input2=year+"-"+(month+1)+"-0"+day;
						}else{
						input2=year+"-"+(month+1)+"-"+day;
						}
					}
				}
				//alert(today);
			}
			
			var cx = document.getElementById("cx");
			cx.href="cx?zcdval="+zcdval+"&zcdsltval="+encodeURI(encodeURI(zcdsltval))+"&input1="+input1+"&input2="+input2+"&currpage="+"1";
			
		}
		
		function changeScore(score){
			$("#back").html("总分："+score);
		}
		//function changeTime(niandu1,niandu2){
		//alert(niandu1);
		//var input2 = document.getElementById("input2");
		//input2.value=niandu1;
		//alert(niandu2);
		//	$("#input1").val(niandu1);
		//	$("#input2").val(niandu2);
		//}
		
		function changeButtonDisable(flag){
			$("#queryBtn").attr("disabled", flag);
			
		}
		
		/*function clksub(){
		//alert("1");
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = clickback;
			var url = "ckhf?";
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
			
		}
		
		function clickback() {
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
				//alert("1");
						var message = xmlHttp.responseText;
						var actable = document.getElementById("actable");
						var jsonlist = eval(message);
						for(var j in jsonlist){
							var tr = document.createElement("tr");
						
							//alert(jsonlist[j].name);
								var td0 = document.createElement("td");
								var input = document.createElement("input");
								input.setAttribute("type", "checkbox");
								input.setAttribute("name", "ckbx")
								td0.appendChild(input);
								var td1 = document.createElement("td");
								td1.innerHTML=jsonlist[j].name;
								var td2 = document.createElement("td");
								td2.innerHTML=jsonlist[j].authorseq;
								var td3 = document.createElement("td");
								td3.innerHTML=jsonlist[j].score;
								var td4 = document.createElement("td");
								td4.innerHTML=jsonlist[j].time.substring(0,10);
							
							tr.appendChild(td0);
							tr.appendChild(td1);
							tr.appendChild(td2);
							tr.appendChild(td3);
							tr.appendChild(td4);
							actable.appendChild(tr);
						}
					}
				} else {
					//alert(xmlHttp.status);
				}
			}*/
			
			
			function check0(){
			var count = $("#count").text();
			if(count!=0){
				$("#alert").show();
			}
		}
		
		function AutoScroll(obj) {
			$(obj).find("ul:first").animate({
				marginTop: "-25px"
			}, 500, function() {
				$(this).css({
					marginTop: "0px"
				}).find("li:first").appendTo(this);
			});
		}
		$(function() {
			var myar = setInterval('AutoScroll(".alert")', 3000)
			$(".alert").hover(function() {
				clearInterval(myar);
			}, function() {
				myar = setInterval('AutoScroll(".alert")', 2500)
			});
		});
		
		</script>
<style type="text/css">
	
	* {
		margin: 0px;
		padding: 0px;
	}
	#xxzl {
		background: url(../images/mian_c_bj_14.gif);
		color: #2f2f2f;
		background-color: white;
		width: 113px;
		height: 30px;
		font-weight: bold;
		text-align: center;
	}
	.stg select {
		border-top-left-radius: 5px;   
		border-top-right-radius: 5px; 
 		border-bottom-right-radius:5px;  
		border-bottom-left-radius:  5px;
		border: em;
		border-color:rightblack;
		height: 22px;
		width: 100px;
		background-color:#F2F2F2;
		outline:medium;
	}
	.stg input{
		border-top-left-radius: 5px;   
		border-top-right-radius: 5px; 
 		border-bottom-right-radius:5px;  
		border-bottom-left-radius:  5px;
		border: em;
		border-color:rightblack;
		height: 22px;
		width: 150px;
		background-color:#F2F2F2;
		outline:medium;
	}
</style>

	</head>
	<body class="mian_bj" style="height: 100%;background: url(../images/mian_bj_03.gif);" onload="check0()">
		
	 
		<div>
			<div class="line-big">
		    	<div class="xm3">
		        	<div class="panel border-back">
		            	<div class="panel-body text-center" id="up-img-touch" >
		                		<img  alt="点击上传头像" src="${userheadportrait}" data-am-popover="{content: '点击上传', trigger: 'hover focus'}" style="width: 95%;height: 20%;"><br/>
		                </div>
		                	<!--图片上传框-->
    	<div class="am-modal am-modal-no-btn up-modal-frame" tabindex="-1" id="up-modal-frame">
		  <div class="am-modal-dialog up-frame-parent up-frame-radius">
		    <div class="am-modal-hd up-frame-header">
		       <label>修改头像</label>
		      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
		    </div>
		    
		    <div class="am-modal-bd  up-frame-body">
		      <div class="am-g am-fl">
		      	
		      	<div class="am-form-group am-form-file">
			      <div class="am-fl">
			        <button type="button" class="am-btn am-btn-default am-btn-sm">
			          <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
			      </div>
			    <input type="file" class="up-img-file"> 
			   	</div>
			   	
		      </div>
		      
		      <div class="am-g am-fl" >
		      	<div class="up-pre-before up-frame-radius">
		      	<img alt="" src="" class="up-img-show" id="up-img-show" >
		      	</div>
		      	<div class="up-pre-after up-frame-radius">
		      	</div>
		      </div>
		      
		      <div class="am-g am-fl">
   				<div class="up-control-btns">
    				<span class="am-icon-rotate-left"   id="up-btn-left"></span>
    				<span class="am-icon-rotate-right"  id="up-btn-right"></span>
    				<span class="am-icon-check up-btn-ok" url="<%=path%>/uploadHeadPortrait/upload"></span>
   				</div>
	    	  </div>
		      
		    </div>
		    
		  </div>
		</div>
    	
    	<!--加载框-->
    	<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="up-modal-loading">
		  <div class="am-modal-dialog">
		    <div class="am-modal-hd">正在上传...</div>
		    <div class="am-modal-bd">
		      <span class="am-icon-spinner am-icon-spin"></span>
		    </div>
		  </div>
		</div>
		
		<!--警告框-->
		<div class="am-modal am-modal-alert" tabindex="-1" id="up-modal-alert">
		  <div class="am-modal-dialog">
		    <div class="am-modal-hd">信息</div>
		    <div class="am-modal-bd"  id="alert_content">
		              成功了
		    </div>
		    <div class="am-modal-footer">
		      <span class="am-modal-btn">确定</span>
		    </div>
		  </div>
		</div>
		                <div class="panel-foot bg-back border-back">您好，上次登录为 ${lasttime} 。</div>
		            </div>
		            <br />
		        	<div class="panel">
		            	<div class="panel-head"><strong>基本信息</strong></div>
		                <ul class="list-group">
		                	<%String id = (String)session.getAttribute("userid");
                     			UserDao u =new UserDao();
                     			String name = u.QueryName(id);
		                	%>
		                	<li><span class="icon-user"></span> 姓名：<%=name %></li>
		                    <li><span class="icon-file"></span> 性别：</li>
		                    <li><span class="icon-shopping-cart"></span> 年龄：</li>
		                    <li><span class="icon-file-text"></span> 入职时间：</li>
		                    <li><span class="icon-database"></span> 所属院系：</li>
		                </ul>
		            </div>
		            <br />
		        </div>
		        <div class="xm9">
		        	<div class="alert alert-yellow" id="alert" style="display: none;"><span class="close"></span><strong>注意：</strong>您有<span id="count"><%=session.getAttribute("count") %></span>条未读信息，<a class="btn" id="modal-602498" role="button" href="#modal-container-602498" data-toggle="modal">点击查看详情</a>。</div>
		            <div class="alert" style="height: 98px; overflow: hidden;">
		                <h4>公告信息栏</h4>
		                <ul class="text-gray padding-top">
		                	<li id="rlactp">本院将进行年度评奖，请教师将满足要求的作品提交到院管理人员处，<a href="aypn?flag=success" class="btn">详细>>。</a></li>
		                	<li id="rlactptwo">本院将进行职称评定，请教师将满足要求的作品提交到院管理人员处，<a href="yzcpd?flag=success" class="btn">详细>>。</a></li>
		                	<li id="xrlactp">本校将进行年度评奖，请教师将满足要求的作品提交到校管理人员处，<a href="xiaoaypn?flag=success" class="btn">详细>>。</a></li>
		                	<li id="xrlactptwo">本校将进行职称评定，请教师将满足要求的作品提交到校管理人员处，<a href="xzcpd?flag=success" class="btn">详细>>。</a></li>
		                </ul>
		            </div>
		            <div class="panel">
		            	<div class="panel-head">
		            		<strong>主菜单:</strong>
		            		<strong class="stg">
		            			<select id="zcdval" onchange="change();">
									<%
									String[] str1 = (String[])session.getAttribute("zmenus"); 
										for(String s:str1){ 
										if(s.equals("0")){
									%>
										<option value="0">
											科研管理
										</option>
									<%
										}
									 %>
									 <%
									 	if(s.equals("1")){
									  %>
									  	<option value="1">
											教学管理
										</option>
									<%
											}
										}
									 %>
								</select>
		            		</strong>
		            		<strong>子菜单:</strong>
		            		<strong class="stg">
		            			<select id="zcdslt">
									<c:forEach items="${cmenulist}" var="a">
									<option value="${a.cname}">${a.cname}</option>
									</c:forEach>
								</select>
		            		</strong>
		            		<strong>时间:</strong>
		            		<strong class="stg"><input type="date" value="" id="input1" onchange="changetime();"/></strong>
		            		<strong>到</strong>
		            		<strong class="stg"><input type="date" value="" id="input2" onchange="changetime();"/></strong>
		            		<strong><a href="JavaScript:void(0);" id="cx" target="sidemainframe" onclick="query();"><button id="queryBtn" style="border-top-left-radius: 5px;   
																			border-top-right-radius: 5px; 
																	 		border-bottom-right-radius:5px;  
																			border-bottom-left-radius:  5px;">查询</button></a></strong>
							
							<strong id="back"></strong>
		            	</div>
		                
			                <iframe border="0" scrolling="no" frameborder="no" framespacing="0"
							marginwidth="0" marginheight="0" src="" width="100%" height="69%"
							name="sidemainframe" style="background-color:#F2F2F2;">
							此框架显示无效
							</iframe>
		                
		            </div>
		        </div>
		    </div>
		</div>
		
			
			
	 	<script type="text/javascript">
  
		    $(document).ready(function(){
		    	
		      $("#sousuoinput").keyup(
		        function(){          
		          $("tbody tr:gt(0)").hide();
		          var $d = $("tbody tr:gt(0)").filter(":contains('"+$.trim($("#sousuoinput").val())+"')");
		          $d.show();
		        
		        });
		        
/*		      var len = $("table tr").length;
		      for(i=2;i<len-1;i++){
		      	$("table tr:eq("+i+") td:first").text(i-1);
		      }*/
		      
		      $("#sel1").change(
		      	function(){
		      	var a = $("#sel1").val();
		      	if(a=="全部"){
		      		$("tbody tr:gt(0)").show();
		      	}else{
		      		$("tbody tr:gt(0)").hide();	
		      		var $d = $("tbody tr:gt(0)").filter(":contains('"+$.trim($("#sel1").val())+"')");
		      		$d.show();
		      		$("table tr:last").show();
		      	}	
		      	});
				
		    })
		    
		    
		    
		    function yidu(){
		    	var $idlist = $(".msgid");
		    	var list = "";
		    	$idlist.each(function(){
		    		list = list+$(this).text()+","
		    	});
		    	$.ajax({
		    		type:"post",
		    		url:"ReadServlet",
		    		data:{
		    			"list":list,
		    		},
		    		success:function(){
		    			$("#alert").hide();
		    		}
		    	});
		    }
		    
  		</script> 
  		
  		<div class="modal fade" id="modal-container-602498" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<!-- <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button> -->
							<h4 class="modal-title" id="myModalLabel">
								个人未读信息
							</h4>
						</div>
						<div class="modal-body">
							<table class="table table-hover">
							<thead>
							<tr>
								<td>标题</td>
								<td>时间</td>
							</tr>
							</thead>
								<c:forEach items="${msgList}" var="a">
									<tr>
										<td class="msgid" style="display: none;">${a.id}</td>
										<td>${a.msg}</td>
										<td>${a.time}</td>
									</tr>
								</c:forEach>
								
								<%-- <%
									List<Map<String,Object>> msgList = (List<Map<String,Object>>)session.getAttribute("myList");
									for(Map map : msgList){
									%>
										<td><%=map.get("msg") %></td>
										<td><%=map.get("time") %></td>
									<%	
									}
								 %> --%>
							</table>
						</div>
						<div class="modal-footer">
							 <button class="btn btn-default" type="button" data-dismiss="modal">关闭</button> <button class="btn btn-primary" type="button" onclick="yidu()" data-dismiss="modal">确认</button>
						</div>
					</div>
				</div>
			</div>
			
		<script src="<%=path%>/plug/imgUp/js/jquery.min.js"></script>
        <script src="<%=path%>/plug/imgUp/js/amazeui.min.js" charset="utf-8"></script>
        <script src="<%=path%>/plug/imgUp/js/cropper.min.js" charset="utf-8"></script>
        <script src="<%=path%>/plug/imgUp/js/custom_up_img.js" charset="utf-8"></script>
	</body>
</html>
