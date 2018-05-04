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
    <title>个人教师</title>
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
    <link rel="stylesheet" href="css/bootstrapmodel.css">
    <script src="assets/js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="assets/js/echarts.min.js"></script>
    <script type="text/javascript">
		$(function(){
			$.post("atvflagquery",function(message){
				if("true"==message){
					$("#rlactp").css("display","block");
				}
				if("false"==message){
					$("#rlactp").css("display", "none");
					//location.reload();
				}
			});
			
			$.post("xiaoatvflagquery",function(message){
				if("true"==message){
					$("#xrlactp").css("display","block");
					
				}
				if("false"==message){
					$("#xrlactp").css("display", "none");
					//location.reload();
				}
			});
			
			var jobname="${job}";
			if(jobname==""||jobname==null||jobname=="暂无"){
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
				if("true"==message){
					$("#xrlactptwo").css("display","block");
				}
				if("false"==message){
					$("#xrlactptwo").css("display", "none");
					//location.reload();
				}
			});
		
		});
			
			
			
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
		    /* var input1 = document.getElementById("input1").value;
			//alert(input1);
			var input2 = document.getElementById("input2").value; */
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
			/*if(input1==""&&input2==""){
			
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
			} */
			
			var cx = document.getElementById("cx");
			cx.href="cxjs?zcdval="+zcdval+"&zcdsltval="+encodeURI(encodeURI(zcdsltval))+"&input1=1900-01-01&input2="+today+"&currpage="+"1";
			
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
	#gerenjixiao{
		padding-left: 0px;
	}
</style>
    
</head>

<body data-type="index" >
       
       <div class="tpl-content-page-title">
               	精于算绩
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li class="am-active">个人绩效</li>
            </ol>
            <div class="tpl-content-scope">
                <div class="note note-info">
                    <h3>公告信息栏
                        <span class="close" data-close="note"></span>
                    </h3>
                    <ul class="tpl-task-list tpl-task-remind">
                    	<li id="rlactp">
                            <div class="cosA">
                                <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>
                      <span> 本院将进行年度评奖，请教师将满足要求的作品提交到院管理人员处。
                      <a href="aypn?flag=success" class="tpl-label-info"> 详细<i class="am-icon-share"></i>
                      </a>
                      </span>
                            </div>
                        </li>
                        
                        <li id="xrlactp">
                            <div class="cosA">
                                <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>
                      <span> 本校将进行年度评奖，请教师将满足要求的作品提交到校管理人员处。
                      <a href="xiaoaypn?flag=success" class="tpl-label-info"> 详细<i class="am-icon-share"></i>
                      </a>
                      </span>
                            </div>
                        </li>
                        
                        <li id="xrlactptwo">
                            <div class="cosA">
                                <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>
                      <span> 本校将进行职称评定，请教师将满足要求的作品提交到校管理人员处。
                      <a href="" id="xzchref" onclick="xzcfun();" class="tpl-label-info"> 详细<i class="am-icon-share"></i>
                      </a>
                      </span>
                            </div>
                        </li>
                        
		                </ul>
                </div>
            </div>


        <div class="tpl-content-wrapper" id="gerenjixiao">
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                         	个人绩效
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}" id="zcdval" onchange="change();">
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
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}"  id="zcdslt">
              <c:forEach items="${cmenulist}" var="a">
									<option value="${a.cname}">${a.cname}</option>
									</c:forEach>
            </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                            	 <a href="javascript:;" id="cx" target="sidemainframe" onclick="query();">
                            	 <button id="queryBtn" class="am-btn  am-btn-default am-btn-success tpl-am-btn-success" type="button">查询</button>
                            	 </a>
                            </div>
                            </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group">
                                <span class="caption font-green bold" id="back">
                    			</span>
                            </div>
                        </div>
                    </div>
                    	
                    	<iframe frameborder="0" style="margin-left: 0px;"
					width="100%"  onload="Javascript:SetWinHeight(this)"  id="sidemainframe" name="sidemainframe"   ></iframe>
                    	
                </div>
                <div class="tpl-alert"></div>
            </div>
        </div>

    <script type="text/javascript">
    	function SetWinHeight(obj)
{
	obj.height=sidemainframe.document.body.scrollHeight;
    parent.document.getElementById("mainFrame").height=parseInt(sidemainframe.document.body.scrollHeight)
    +parseInt(parent.document.getElementById("mainFrame").height)-240;
}

       function xzcfun(){
		
			var xzchref = document.getElementById("xzchref");
			var job = "${job}";
			var xzcipt = "";
			if(job==""||job==null||job=="暂无"){
				xzcipt="助教";
			}
			if(job=="助教"){
				xzcipt="讲师";
			}
			if(job=="讲师"){
				xzcipt="副教授";
			}
			if(job=="副教授"){
				xzcipt="教授";
			}
			
			//alert(yzcipt);
			xzchref.href="xzcpd?xzcipt="+encodeURI(encodeURI(xzcipt));
		}
    
    </script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/iscroll.js"></script>
    <script src="assets/js/app.js"></script>
</body>

</html>