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
<title>分数设定</title>
<script src="<%=path%>/plug/boot/jquery.min.js"></script>

<link rel="stylesheet" href="<%=path%>/plug/boot/bootstrap.min.css">
<script src="<%=path%>/layer/layer.js"></script>
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
.panel-heading {
	padding: 0px 0px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	font-size:20px;
}
.breadcrumb {
    padding: 0px 15px;
    margin-bottom: 20px;
    list-style: none;
    background-color: #f5f5f5;
    border-radius: 4px;
}
</style>
<script>
var crpge = 1;

	$(function() {
	
	$("#zhcd_slt").text($("#yjcd li:first").text());
	$("#zhcd_slt").val($("#yjcd li:first").text());
		$("#zicd_slt").text($("#ejcd li:first").text());
		$("#zicd_slt").val($("#ejcd li:first").text());
		changetable();
		
		$("#yjcd li").click(function() {
		
				$("#zhcd_slt").text($(this).text());
				$("#zhcd_slt").val($(this).val());
			erjild();
			changetable();
		})
		
		
		$("#ejcd li").click(function() {
			$("#zicd_slt").text($(this).text());
			$("#zicd_slt").val($(this).text());
			changetable();
		})
	})
	
	function onfun(a){
			$("#zicd_slt").text($(a).text());
			$("#zicd_slt").val($(a).text());
			changetable();
	}
	
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


	

	function fzcurrpage(obj) {
		
		crpge = $(obj).attr("name");
	}
	function fzcurrpage2() {
		crpge = 1;
	}


function erjild(){
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = callback2;
			var province = $("#zhcd_slt").val();
			var url="CdServlet?province="+province;
			
			xmlHttp.open("POST", url, false);
			xmlHttp.send(null);
	}
	function callback2() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
			
				var xmlDoc = xmlHttp.responseXML.documentElement;
				var xSel = xmlDoc.getElementsByTagName('select');
				var select_root = document.getElementById("ejcd"); 
				$("#ejcd").children().remove();
				for(var i=1;i<xSel.length;i++){ 
         			var xValue = xSel[i].childNodes[0].firstChild.nodeValue;
					var xText = xSel[i].childNodes[1].firstChild.nodeValue; 
					$("#ejcd").append("<li value='"+xText+"' onclick='onfun(this)';'><a href='javascript:;'>" + xText
							+ "</a></li>");
				}
				$("#zicd_slt").text($("#ejcd li:first").text());
				$("#zicd_slt").val($("#ejcd li:first").text());
				
			} else {
			}
		}
	}
	function changetable() {
		var zicdvalue = $("#zicd_slt").text();
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = callback;
			var url="yglscore?zicdvalue="+ encodeURI(encodeURI(zicdvalue)) + "&currpage=" + crpge;
			xmlHttp.open("POST", url, false);
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
				document.getElementById("xiayiye").name = Number(array[1]) + 1;
				document.getElementById("shangyiye").name = Number(array[1]) - 1;
				document.getElementById("moye").name = array[2];
			} else {
			}
		}
	}


	
	
	
		
		$("#zengtian").click(function(){
		
		$(".popo").slideDown(200);
				$(".ipt[type=text]").val()=="";
				$(".ipt[type=date]").val()=="";
		});
		$(".theme-poptit .close").click(function(){
			
			$(".popo").slideUp(200);
		});
		
		
		function del(t) {
		if (confirm('你确定要删除此记录吗？')) {
			var title = $(t).parent().prev().prev().prev().prev().prev().prev()
					.prev().prev().html();
			layer.msg(title);
			$(t).parent().parent().remove();
			$.ajax( {
				type : "post",
				url : "Del",
				data : {
					"title" : title,
					"type" : "lunwen"
				}
			})
		} else {
			layer.msg("取消");
			//return false;
		}
	}
		
		
</script>

</head>

<body >

	<div>
			<div class="col-md-12 column"
				style="margin: 0px;padding-left: 0px;padding-right: 0px;">

				<div class="panel panel-default" style="width: 100%;">
					<div class="panel-heading" style="line-height: 48px;height:48px;" >
						<ul class="breadcrumb">
						<li>
					 		<a href="javascript:;" style="cursor: default;text-decoration: none">分值设定</a>
						</li>
						<li>
						</li>
						</ul>

					</div>
					<div class="panel-body">

						<!--  下拉按钮  -->

						<div class="btn-group">
							
							<button class="btn btn-default" id="zhcd_slt" value="-1">一级菜单</button>
							<button data-toggle="dropdown"
								class="btn btn-default dropdown-toggle">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="yjcd">
							<%String[] zmenu = (String[])session.getAttribute("zmenu");
							for(String string:zmenu){
							if("0".equals(string)){
							%>
							<li value="0"><a href="javascript:;">科研管理</a></li>
							<%
							}else if("1".equals(string)){
							%>
							<li value="1"><a href="javascript:;">教学管理</a></li>
							<%
							}
							}
							%>
							</ul>
						</div>
						<div class="btn-group">

							<button class="btn btn-default" id="zicd_slt" value="-1">二级菜单</button>
							<button data-toggle="dropdown"
								class="btn btn-default dropdown-toggle">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="ejcd">
							<c:forEach items="${list2}" var="a">
							<li value="${a.cname}"><a href="javascript:;">
								${a.cname}
								</a>
							</li>
							</c:forEach> 
							</ul>
						</div>
						<!--  搜索  -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							
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
					<iframe border="0" scrolling="auto" frameborder="no" framespacing="0"
				marginwidth="0" marginheight="0" src="" width="100%"
				name="ifr"  height="847px">
				此框架显示无效
			</iframe>
				</div>


	</div>

</div>
<script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
</body>

</html>