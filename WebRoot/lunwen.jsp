<%@ page language="java" import="java.util.*,Util.UserDao" pageEncoding="utf-8"%>
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
<title>论文管理</title>
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

body html {
	height: 100%;
	width: 100%;
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
<script>
var crpge = 1;
	$(function() {
		for ( var i = 2017; i >= 1990; i--) {
			$("#nful").append(
					"<li value='"+i+"'><a href='javascript:;'>" + i
							+ "</a></li>");
		}
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
				$("#sel1").text("年份");
				$("#sel1").val(-1);
			} else {
				$("#sel1").text($(this).text());
				$("#sel1").val($(this).val());
			}
			changetable();
		})
		
		$("#djul li").click(function() {
			if ($(this).val() == -1) {
				$("#yrank").text("等级");
				$("#yrank").val(-1);
			} else {
				$("#yrank").text($(this).text());
				$("#yrank").val($(this).text());
			}
			changetable();
		})

		//上传文件
		$('input[id=lefile]').change(function() {
				var len = document.getElementById("lefile").files;
				if(len.length>1){
					$('#photoCover').val(len.length+"个文件");
				}else{
				$('#photoCover').val($(this).val());}
			});

		$("#sb").bind("click",function(){
    	if(!$("#lwbt").val()||$.trim($("#lwbt").val())==""){
    	layer.tips("请填写论文题目!","#lwbt",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	if(!$("#kwmc").val()||$.trim($("#kwmc").val())==""){
		layer.tips("请填写刊物!","#kwmc",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	
    	if(!$("#time").val()||$.trim($("#time").val())==""){
    	layer.tips("请选择时间!","#time",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	var len = document.getElementById("lefile").files;
    	if(len.length>3){
    	layer.tips("上传文件数超过3个!","#photoCover",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}else {
    	for(var i = 0; i < len.length; i++ ){
    		if(len[i].size>1024*1024*2){
    			layer.tips(len[i].name+"大小超过2MB!","#photoCover",{
    			tips:[2,"#FF7F24"]
    		});
    		return false;
    		}
    	}
    	}
    	
    	if($("#rank_select").val()=="-1"){
    	layer.tips("请选择等级!","#rank_select",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    $("#close").click();
    })
	
	})
	

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
		
		$.post("querylw",{
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
		var yrankvalue = $("#yrank").val();
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = callback;
		var url = "querylw?currpage=" + crpge + "&year=" + yearvalue
				+ "&status=" + statusvalue + "&inputvalue=" + inputvalue
				+ "&flag=1";
		if(0!=${identity}){
		url +="&yrank="+yrankvalue;
		}
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
			var url = "querylw?rank=" + encodeURI(encodeURI(rank))
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
	
	
	
		
		$("#zengtian").click(function(){
		
		$(".popo").slideDown(200);
				$(".ipt[type=text]").val()=="";
				$(".ipt[type=date]").val()=="";
		});
		$(".theme-poptit .close").click(function(){
			
			$(".popo").slideUp(200);
		});
		
		$("input[id=uploadfile]").change(function(){
		
		$("photoCover").val($(this).val());
		})
		
</script>

</head>

<body>

	<div>
			<div class="col-md-12 column"
				style="margin: 0px;padding-left: 0px;padding-right: 0px;">

				<div class="panel panel-default" style=" width: 100%;">
					<div class="panel-heading">
						<a id="modal-834996" role="button" href="#modal-container-834996"
							data-toggle="modal"><input type="button"
							class="btn btn-default" value="新增">
						</a>

					</div>
					<div class="panel-body">

						<!--  下拉按钮  -->
						<div class="btn-group">

							<button class="btn btn-default" id="sel1" value="-1">年份</button>
							<button data-toggle="dropdown"
								class="btn btn-default dropdown-toggle">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu"
								style="overflow-y: auto; height: 150px;" id="nful">
								<li value="-1"><a href="javascript:;">全部(默认)</a>
								</li>

							</ul>
						</div>

						<div class="btn-group">

							<button class="btn btn-default" id="status_select" value="-1">审核状态</button>
							<button data-toggle="dropdown"
								class="btn btn-default dropdown-toggle">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="shul">
								<li value="-1"><a href="javascript:;">全部(默认)</a>
								</li>
								<li value="0"><a href="javascript:;">未审核</a>
								</li>
								<li value="1"><a href="javascript:;">审核通过</a>
								</li>
								<li value="2"><a href="javascript:;">审核未通过</a>
								</li>
							</ul>
						</div>
						<%
						UserDao ud = new UserDao(); 
						String userid = (String)session.getAttribute("userid");
							String identity = ud.QueryIdentity(userid);
						if(!identity.equals("0")){
						%>
						<!--  等级分类  -->
						<div class="btn-group">

							<button class="btn btn-default" id="yrank" value="-1">等级</button>
							<button data-toggle="dropdown"
								class="btn btn-default dropdown-toggle">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu"
								style="overflow-y: auto; height: 150px;" id="djul">
								<li value="-1"><a href="javascript:;">全部(默认)</a>
								</li>
								<c:forEach items="${rankList}" var="a">
								<li value="${a.rank}"><a href="javascript:;">${a.rank}</a>
								</li>
								</c:forEach>
							</ul>
						</div>
						<%}%>
						<!--  搜索  -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<form class="navbar-form navbar-left" method="post" role="search">
								<div class="form-group">
									<input type="text" class="form-control" id="sousuoinput"
										value="" />
								</div>
								<input class="btn btn-default" type="button" onclick="sousuo();"
									value="搜索">
							</form>
							<ul class="pagination">
								<li><a href="javascript:;"
									onclick="a();fzcurrpage(this);changetable();" id="shouye"
									name="1">首页 </a>
								</li>
								<li><a href="javascript:;"
									onclick="a();fzcurrpage(this);changetable();" id="shangyiye"
									name="${currpage-1}">上一页</a></li>
								<li><a href="javascript:;" id="savecrpge"
									style="cursor: default;">${currpage}</a>
								</li>
								<li><a href="javascript:;"
									onclick="b();fzcurrpage(this);changetable();" id="xiayiye"
									name="${currpage+1}">下一页</a></li>
								<li><a href="javascript:;"
									onclick="b();fzcurrpage(this);changetable();" id="moye"
									name="${pagecount}">末页</a>
								</li>
							</ul>
						</div>

					</div>
					<iframe scrolling="no" frameborder="no" framespacing="0"
						marginwidth="0" marginheight="0" src="" width="100%"
						height="830px" name="ifr" id="childFrame"> 此框架显示无效 </iframe>
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
								<form class="form-horizontal" role="form" name="loginform"
									action="zengtian" method="post" enctype="multipart/form-data">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>论文标题</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="lwbt"
												id="lwbt" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3"><span
											style="color:red; font-size:20px;">*</span>刊物名称</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="kwmc"
												id="kwmc" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">
										<span style="color:red; font-size:20px;">*</span>发表时间</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="date" name="time"
												id="time" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">eICode</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="ec" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">sCICode</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="sc" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">iSTPCode</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="ic" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">作者</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="zzmz" value="${username}"
												readonly="readonly" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">作者工号</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="zzgh"
												value="${userid}" readonly="readonly" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">作者排序</label>
										<div class="col-sm-10">
											<select name="authorseq" id="seq_select"
												class="ipt  form-control" onchange="test(${userid});">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">链接</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="url" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="inputEmail3">文件上传</label>
										<div class="col-sm-10">

											<div class="btn-group" style="width: 490px">
												<input id="lefile" type="file" multiple="multiple" name="uploadfile" style="display:none;" >
												<span class="btn btn-default" onclick="$('input[id=lefile]').click();"
													style="cursor: pointer; background-color: #e7e7e7">
													<img src="<%=path%>/images/folder.png" style="width: 20px;">&nbsp;浏览</span> 
													<input id="photoCover" class="btn btn-default" type="text" readonly="readonly" style="width:390px; cursor: default;">
											</div>
										</div>
									</div>

									<div class="form-group" style="display:none">
										<label class="col-sm-2 control-label" for="inputEmail3">院得分</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="df" id="df"
												readonly="readonly" />
										</div>
									</div>
									<div class="form-group" style="display:none">
										<label class="col-sm-2 control-label" for="inputEmail3">校得分</label>
										<div class="col-sm-10">
											<input class="form-control ipt" type="text" name="df2"
												id="df2" readonly="readonly" />
										</div>
									</div>
									<div class="form-group">
										<script type="text/javascript">
										$(function () {
											$("[data-toggle='tooltip']").tooltip();
										});
										</script>
										<%
											List<Map<String,Object>> rankList = (List<Map<String,Object>>)session.getAttribute("rankList");
														String rankdesc = "";
														for(int i= 0 ;i<rankList.size();i++){
															rankdesc = rankdesc+rankList.get(i).get("rank")+":"+rankList.get(i).get("rankdesc");
														}
										%>
										<label class="col-sm-2 control-label" for="inputEmail3"
											data-toggle="tooltip" data-placement="left" title=""><span
											style="color:red; font-size:20px;">*</span>等级</label>
										<div class="col-sm-10">
											<select name="rank" id="rank_select"
												class="ipt  form-control" onchange="test(${userid});">
												<option value="-1">请选择</option>
												<c:forEach items="${rankList}" var="a">
													<option value="${a.rank}" title="${a.rankdesc }">${a.rank}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div style="display: none;">
										<strong>id：</strong> <input style="display: none;" class="ipt"
											type="text" name="" value="" size="20" /> <input
											style="display: none;" class="ipt" type="text" name=""
											value="" size="20" /> <input style="display: none;"
											class="ipt" type="text" name="" value="" size="20" /> <input
											style="display: none;" class="ipt" type="text" name="id"
											value="" size="20" /> <input style="display: none;"
											class="ipt" type="text" name="type" value="lunwen" size="20" />
									</div>
									<li style="display: none;"><strong>当前页：</strong> <input
										class="ipt" type="text" name="currpage" value="1" size="20" />
									</li>
									<li style="display: none;"><input class="ipt" type="text"
										name="flag" value="pass" size="20" /></li>
									<li style="display: none;"><input class="ipt" type="text"
										name="index" value="1" size="20" /></li>
									<li style="display: none;"><input class="ipt" type="text"
										name="status" value="0" size="20" /></li>
									<li style="display: none;"><input class="ipt" type="text"
										name="status2" value="0" size="20" /></li>
									<li style="display: none;"><input class="ipt" type="text"
										name="type" value="lunwen" size="20" /></li> <input type="submit"
										id="sb" style="display: none;">
								</form>
							</div>
							<div class="modal-footer">
								<button class="btn btn-default" type="button"
									data-dismiss="modal" id="close">关闭</button>
								<input class="btn btn-primary" type="button" value="提交" id="sub"
									onclick="button()">
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
			
			function button(){
				$("#sb").click();
			}
		</script>

				<!-- ↑ -->

			</div>

	</div>
	<script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
</body>

</html>