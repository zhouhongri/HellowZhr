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
     <script src="assets/js/jquery.min.js"></script>
<script>
	var crpge = 1;
	
	$(function(){
			for ( var i = 2017; i >= 1990; i--) {
			$("#sel1").append("<option value='"+i+"'>" + i
							+ "</option>");
			}		
			changetable();
		$("#shul").change(function() {
			if ($(this).val() == 3) {
				$("#shul").val(-1);
			} else {
				$("#shul").val($(this).val());
			}
			changetable();
		})

		$("#sel1").change(function() {
			if ($(this).val() == 0) {
				$("#sel1").val(-1);
			} else {
				$("#sel1").val($(this).val());
			}
			changetable();
			//alert($("#sel1").find("option:selected").text());
			//alert("val值:"+$("#sel1").val());
		})
		
		$("#yrank").change(function() {
			if ($(this).val() == -1) {
				$("#yrank").val(-1);
			} else {
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
    	if(!$("#name").val()||$.trim($("#name").val())==""){
    	layer.tips("请填写科研奖励名称!","#name",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	
    	if(!$("#year").val()||$.trim($("#year").val())==""){
    	layer.tips("请选择时间!","#year",{
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
	
function SetWinHeight(obj)
{
    var test=obj;
    if (document.getElementById)
    {
        if (test && !window.opera)
        {
            if (test.contentDocument && test.contentDocument.body.offsetHeight) 
                test.height = test.contentDocument.body.offsetHeight; 
            else if(test.Document && test.Document.body.scrollHeight)
                test.height = test.Document.body.scrollHeight;
        }
    }
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
		var statusvalue = $("#shul").val();
		var yearvalue = $("#sel1").val();
		
		$.post("querykyjl",{
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
		var statusvalue = $("#shul").val();
		var yearvalue = $("#sel1").val();
		var yrankvalue = $("#yrank").val();
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = callback;
		var url = "querykyjl?currpage=" + crpge + "&year=" + yearvalue
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
				window.mainFrame.location.href = array[0];
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
			var url = "querykyjl?rank=" + encodeURI(encodeURI(rank))
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
			function button(){
				$("#sb").click();
			}
		</script>
</head>

<body data-type="index">

            <div class="tpl-content-page-title">
                精于算绩
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li class="am-active">科研管理</li>
                <li class="am-active">论文管理</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        科研奖励管理
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                               <!-- <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索...">-->
                            	<div class="am-btn-group-xs right">
                                  <a id="modal-834996" role="button" href="#modal-container-834996"
							data-toggle="modal">  <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button></a>
                                
                                </div>
                    </div>

                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        
                        <div class="am-u-sm-12 am-u-md-3">
                                <select data-am-selected="{btnSize: 'sm'}" id="sel1">
            					<option value="-1" style="display: none;">年份</option>
              					<option value="0">全部(默认)</option>
           					    </select>
                            
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                                <select data-am-selected="{btnSize: 'sm'}" id="shul">
            					<option value="-1" style="display: none;">审核状态</option>
              					<option value="3">全部(默认)</option>
            					<option value="0">未审核</option>
            					<option value="1">审核通过</option>
            					<option value="2">审核未通过</option>
           					    </select>
                        </div>
                        <%
						UserDao ud = new UserDao(); 
						String userid = (String)session.getAttribute("userid");
							String identity = ud.QueryIdentity(userid);
						if(!identity.equals("0")){
						%>
						 <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}" id="yrank">
            					<option value="-1" style="display: none;">等级</option>
              					<option value="0">全部(默认)</option>
            					<c:forEach items="${rankList}" var="a">
								<option value="${a.rank}">${a.rank}</option>
								</c:forEach>
           					    </select>
                            </div>
                            
                        </div>
                        <%}%>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field" id="sousuoinput"
										value="">
                                <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button" onclick="sousuo();"></button>
          </span>
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                       <iframe frameborder="0" style="margin-left: 0px;position:relative;" scrolling="no" 
					width="100%"  onload="Javascript:SetWinHeight(this)"  id="mainFrame" name="mainFrame"   src=""></iframe>
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
									style="cursor: default;"><span id="savecrpge">${currpage}</span>/${pagecount}</a></li>
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
    <div class="modal fade" id="modal-container-834996" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel" data-backdrop="static">
			<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
					<h4 class="modal-title" id="myModalLabel">新增</h4>
				</div>
				<div class="modal-body">
					<form  class="form-horizontal" role="form"  name="loginform" action="zengtian" method="post" enctype="multipart/form-data">
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>奖励名称</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="name" id="name"/>
						</div>
					</div>
					<div class="form-group" >
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>获奖时间</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="date" name="year" id="year"/>
						</div>
					</div>
					
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">获奖者</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="author" readonly="readonly" value="${username}"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">获奖者工号</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="authorid" value="${userid}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">获奖者排序</label>
						<div class="col-sm-10">
							<select name="authorseq"  id="seq_select" class="ipt  form-control" onchange="test(${userid});">
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
							<input class="form-control ipt"  type="text" name="url" />
						</div>
					</div>
					<div class="form-group"  style="display: none;">
					 	<label class="col-sm-2 control-label" for="inputEmail3">院得分</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="score" id="df" readonly="readonly" />
						</div>
					</div>
					<div class="form-group"  style="display: none;">
					 	<label class="col-sm-2 control-label" for="inputEmail3">校得分</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="score2" id="df2" readonly="readonly" />
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
					 	<label class="col-sm-2 control-label" for="inputEmail3" data-toggle="tooltip" data-placement="left" title=""><span style="color:red; font-size:20px;">*</span>等级</label>
						<div class="col-sm-10">
							<select name="rank"  id="rank_select" class="ipt  form-control" onchange="test(${userid});">
								<option value="-1">请选择</option>
								<c:forEach items="${rankList}" var="a" >
								<option value="${a.rank}" title="${a.rankdesc }">${a.rank}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<li style="display: none;">
							<strong>当前页：</strong>
							<input class="ipt" type="text" name="currpage" value="1" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="flag" value="pass" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="index" value="1" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="status" value="0" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="status2" value="0" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="type" value="keyanjiangli" size="20" />
						</li>
				<input class="btn btn-primary" type="submit" style="display: none;" name="submit" value=" 确定 " id="sb"/>
				</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" type="button" data-dismiss="modal">关闭</button> <button class="btn btn-primary" type="button"  onclick="button()" >提交</button>
				</div>
			</div>
		</div>
	</div>

    <script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
    
</body>

</html>