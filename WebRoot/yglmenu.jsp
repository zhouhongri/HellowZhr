<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<title>菜单管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
<link rel="icon" type="image/png" href="images/loginlogo.png">
		<link rel="stylesheet" href="css/index.css" type="text/css">
		<script language="javascript" type="text/javascript">
	function click1(num) {

		if (document.getElementById(num).style.display == "block") {
			document.getElementById(num).style.display = "none";
		} else {
			document.getElementById(num).style.display = "block";

		}

	}

	function huoqu(pagecount, currpage) {
		var inputnum = document.getElementById("inputnum");
		var imggo = document.getElementById("imggo");
		var inputnumval;
		if (inputnum.value == "") {
			inputnumval = currpage;
		} else {
			inputnumval = inputnum.value;
		}

		imggo.href = "golw?inv=" + inputnumval + "&currpage=" + currpage
				+ "&pagecount=" + pagecount;
	}

	function del(t) {
		if (confirm('你确定要删除此记录吗？')) {
			var title = $(t).parent().prev().prev().prev().prev().prev().prev()
					.prev().prev().html();
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
			//return false;
		}
	}

	
	function chooseyear(){
		var ob = document.getElementById("sel1");
		for(var i=2017;i>=1900;i--){
			var o = new Option(i,i);
			ob.add(o);
		}
	}
	window.onload=function(){
	chooseyear();
	changetable();
	
	};
	
</script>
		<script>


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
		var inputvalue = document.getElementById("sousuoinput").value;
		var tablevalue = document.getElementById("table_select").value;
		var statusvalue = document.getElementById("status_select").value;
		var yearvalue = document.getElementById("sel1").value;
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = callback;
		var url = "querygrky?table=" + tablevalue + "&year="+yearvalue+"&status="+ statusvalue + "&currpage=1&inputvalue=" + encodeURI(encodeURI(inputvalue));
		xmlHttp.open("POST", url, true);
		xmlHttp.send(null);
	}
	

	var crpge = 1;

	function fzcurrpage(name) {
		crpge = name;
	}
	function fzcurrpage2() {
		crpge = 1;
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
		if (xia == pgecont) {

			document.getElementById("xiayiye").ATTR("onclick", "");
		}
	}

	function changetable() {
		//var tablevalue = document.getElementById("table_select").value;
	//	var statusvalue = document.getElementById("status_select").value;
		//var yearvalue = document.getElementById("sel1").value;
		//if (tablevalue == -1) {
			//window.ifr.location.href = "gerenchoose.jsp";}
		 //else {
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = callback;
			var url="yglmenu?currpage=1&userid=1001";
			//var url = "querygrky?table=" + tablevalue + "&status="
			//		+ statusvalue + "&currpage=" + crpge +"&year="+yearvalue;
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
		//}
	}

	function callback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var message = xmlHttp.responseText;
				var array = new Array();
				array = message.split(",");
				window.ifr.location.href = array[0];
			//	document.getElementById("savecrpge").innerText = array[1];
			//	document.getElementById("xiayiye").name = Number(array[1]) + 1;
			//	document.getElementById("shangyiye").name = Number(array[1]) - 1;
			//	document.getElementById("moye").name = array[2];
			} else {
			}
		}
	}
</script>

		<style type="text/css">
#grky {
	background: url(../images/mian_c_bj_14.gif);
	color: #2f2f2f;
	background-color: white;
	width: 113px;
	height: 30px;
	font-weight: bold;
	text-align: center;
}

* {
	margin: 0px;
	padding: 0px;
}
</style>
	</head>

	<body class="mian_bj">
		<div class="mian_top_01">
			<div class="mian_top_r"></div>
			<div class="mian_top_l"></div>
			<div class="mian_top_c">
				<ul>
					<li>
						<a href="gerenxinxi.jsp" target="mainFrame">
							<p id="xxzl">
								信息总览
							</p> </a>
					</li>
					<li>
						<a href="gerenkeyan.jsp" target="mainFrame">
							<p id="grky">
								菜单管理
							</p> </a>
					</li>
					<li>
						<a href="">
							<p>
								更多教学
							</p> </a>
					</li>
					<li>
						<a href="">
							<p>
								待填
							</p> </a>
					</li>
					<li>
						<a href="">
							<p>
								待填
							</p> </a>
					</li>
					<li>
						<a href="">
							<p>
								待填
							</p> </a>
					</li>

				</ul>
			</div>
			<div class="mian_b">
				<div class="mian_b1">
					<p class="mian_b1_hz">
						年
					</p>
					<p class="mian_b1_hz">
						度：
					</p>
					<p class="mian_b1_niandu">
						<select id="sel1" onchange="changetable();">
							<option value="-1">
								全部
							</option>
			
						</select>
					</p>
					<p class="mian_b1_hz">
						类
					</p>
					<p class="mian_b1_hz">
						别：
					</p>
					<p class="mian_b1_bumen">
						<select onchange="changetable();" id="table_select">
							<!-- <option value="-1">
								-请选择-
							</option>-->
							<option value="lunwen">
								论文管理
							</option>
							<option value="zhuanli">
								专利管理
							</option>
							<!--
							<option value="xueshuzhuzuo">
								学术著作管理
							</option>
							<option value="xuekeguanli">
								学科管理
							</option>
							<option value="keyanjiangli">
								科研奖励管理
							</option>
							<option value="keyanxiangmu">
								科研项目管理
							</option>-->
						</select>
					</p>
					<p class="mian_b1_hz">
						状
					</p>
					<p class="mian_b1_hz">
						态：
					</p>
					<p class="mian_b1_leixing">
						<select onchange="fzcurrpage2();changetable();" id="status_select">
							<option value="-1">
								全部
							</option>
							<option value="0">
								未审核
							</option>
							<option value="1">
								审核通过
							</option>
							<option value="2">
								审核未通过
							</option>
						</select>
					</p>
					<p class="mian_b1_hz">
						关
					</p>
					<p class="mian_b1_hz">
						键
					</p>
					<p class="mian_b1_hz">
						字：
					</p>
					<p class="mian_b1_sousuo">
						<input name="" type="text" value="" id="sousuoinput">
					</p>
					<a href="JavaScript:void(0);" title="搜索" onclick="sousuo();">
						<p class="mian_b1_a3">
						</p> </a>

					<a href="JavaScript:void(0);" title="最后"
						onclick="b();fzcurrpage(this.name);changetable();"id="moye" name="">
						<p class="mian_b1_a4"></p> </a>
					<a href="JavaScript:void(0);" title="下一页"
						onclick="b();fzcurrpage(this.name);changetable();"id="xiayiye"name="">
						<p class="mian_b1_a5"></p> </a>
					<p class="mian_b1_list" id="savecrpge">

					</p>
					<a href="JavaScript:void(0);" title="上一页"
						onclick="a();fzcurrpage(this.name);changetable();"id="shangyiye"name="">
						<p class="mian_b1_a6">
						</p> </a>
					<a href="JavaScript:void(0);" title="最前"
						onclick="a();fzcurrpage(this.name);changetable();"id="shouye"name="1">
						<p class="mian_b1_a7">
						</p> </a>

				</div>

			</div>
			<iframe border="0" scrolling="auto" frameborder="no" framespacing="0"
				marginwidth="0" marginheight="0" src="" width="100%"
				name="ifr"  onload="this.height=ifr.document.body.scrollHeight">
				此框架显示无效
			</iframe>
		</div>

		<script src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript">
	
</script>

	</body>
</html>
