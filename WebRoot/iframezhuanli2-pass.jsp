<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>专利管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
	<script src="<%=path%>/layer/layer.js"></script>
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
		
		$(function(){
		$("#sb").bind("click",function(){
    	if(!$("#zlmz").val()||$.trim($("#zlmz").val())==""){
    	layer.tips("请填写专利名!","#zlmz",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	if(!$("#zlh").val()||$.trim($("#zlh").val())==""){
    	layer.tips("请填写专利号!","#zlh",{
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
    
    	$("#close").click();
    });
    
    var len = $("table tr").length;
    	var List = "${zlList}";
    	 
    if(List.length>2){
    	var pagecount = "${currpage}";
    	
    	 for(i=(pagecount-1)*10+1;i<=len+(pagecount-1)*10;i++){
      	$("table tr:eq("+(i-((pagecount-1)*10))+") td:first").text(i);
      }
    }
		
		})
		
		
		
		
		function pass(t){
			var id = $(t).parent().next().html();
			$.ajax({
                 	type:"post",
                 	url:"PassServlet",
                 	data:{
                 		"id":id,
                 		"type":"zhuanli",
                 		"pass":"pass",
                 		"identity":"yuan",
                 	},
                 	success:function(data){
                 	//alert("This callback function");
                 		$(t).parent().prev().prev().html('<b style="color: green">审核通过</b>');
						$(t).parent().html('<b style="color: green;">&nbsp;&nbsp;&nbsp;已同意</b>');
						msg(id, "zhuanli","通过");
					}
                 });
           
		}
		
		function nopass(t){
			var id = $(t).parent().next().html();
			$.ajax({
                 	type:"post",
                 	url:"PassServlet",
                 	data:{
                 		"id":id,
                 		"type":"zhuanli",
                 		"pass":"nopass",
                 		"identity":"yuan",
                 	},
                 	success:function(data){
                 	//alert("This callback function");
                 		$(t).parent().prev().prev().html('<b style="color: red">审核不通过</b>');
						$(t).parent().html('<b style="color: red;">&nbsp;&nbsp;&nbsp;不同意</b>');
						msg(id, "zhuanli","不通过");
					}
                 });
           
		}
		
		function msg(z_id,type,status){
			var fromid = getuserid();
			//alert(fromid);
			$.ajax({
				type:"post",
				url:"GetMsgServlet",
				data:{
                 	"fromid":fromid,
                 	"type":type,
                 	"z_id":z_id,
                 	"status":status,
                 },
                success:function(data){
						
				}
			})
		}
		
		function getuserid(){
			var userid = $("#userid").html();
			return userid;
		}
		</script>
		<script language="javascript" type="text/javascript">
		//num判断是否为正整数
		var num = /^[0-9]*[1-9][0-9]*$/;
			window.onload=function(){
			}
					
			function click1(num) {

				if(document.getElementById(num).style.display == "block") {
					document.getElementById(num).style.display = "none";
				} else {
					document.getElementById(num).style.display = "block";

				}

			}
			function a(){
			var shang = document.getElementById("shangyiye");
			if(${currpage}==1){
			shang.href="JavaScript:void(0);";
			}
			}
			function b(){
			var xia = document.getElementById("xiayiye");
		
			if(${currpage}==${pagecount}){
			
			xia.href="JavaScript:void(0);";
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
	    
	function tiaozhuan(pagecount) {
	
		if(!num.test($("#inputnum").val())){
		layer.msg("请输入正确的跳转数值!",{
		offset:"t",
		anim:6
		});
		return false;
		return false;
		}
		var inputnum = document.getElementById("inputnum").value;
		var inputvalue = parent.document.getElementById("sousuoinput").value;
		var statusvalue = parent.document.getElementById("status_select").value;
		var yearvalue = parent.document.getElementById("sel1").value;
		var yrankvalue = parent.document.getElementById("yrank").value;
		if(inputnum<1||inputnum>pagecount){
		//下面这行功能实现imggo的onclick点击事件失效
		layer.msg("请输入正确的跳转数值!",{
		offset:"t",
		anim:6
		});
		return false;
		document.getElementById("imggo").ATTR("onclick","");
		}else{
	    createXMLHttpRequest();
	    xmlHttp.onreadystatechange = callback;
	    var url = "queryzl?currpage="+inputnum+"&year="+yearvalue+"&status="+ statusvalue+"&inputvalue=" + inputvalue+"&yrank="+yrankvalue;
	    xmlHttp.open("POST", url, true);
	    xmlHttp.send(null); 
	    }
	}
	
	function callback() {
	    if(xmlHttp.readyState == 4) {
	        if(xmlHttp.status == 200) {
	             	var message = xmlHttp.responseText;
	        	var array = new Array();
	        	array=message.split(",");
	        	location.href=array[0];
	        	parent.document.getElementById("savecrpge").innerText=array[1];
	        	parent.document.getElementById("xiayiye").name=Number(array[1])+1;
	        	parent.document.getElementById("shangyiye").name=Number(array[1])-1;
	        	parent.document.getElementById("moye").name=array[2];
	        } else {
	        	//alert(xmlHttp.status);
	        }
	    }
	}
		
		function test(userid){
		
		
		var rank = document.getElementById("rank_select").value;
		var authorseq = document.getElementById("seq_select").value;
		if(rank=="-1"){}else{
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = callback2;
		var url="queryzl?rank="+encodeURI(encodeURI(rank))+"&authorseq="+authorseq+"&userid="+userid+"&index=1";
		xmlHttp.open("POST", url, true);
		xmlHttp.send(null)}
	}
	function callback2() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var message = xmlHttp.responseText;
				var array = message.split(",");
				document.getElementById("df").value=array[0];
			
			} else {
				//alert(xmlHttp.status);
			}
		}
	}
			function del(t){
			if(confirm('你确定要删除此记录吗？')){
				var id = $(t).parent().next().html();
                 //alert(id);
                // $(t).parent().parent().remove();
                 $.ajax({
                 	type:"post",
                 	url:"Del",
                 	data:{
                 		"id":id,
                 		"type":"zhuanli"
                 	},
                 	success:function(){
                 		$(t).parent().html("<b>&nbsp;&nbsp;&nbsp;已删除</b>");
                 	}
                 })
              }else{
                 //return false;
             }
			}
		
		function bianji(num){
			
			var trcell = document.getElementById("tr"+num).cells;
			var ipt = document.getElementsByClassName("ipt");
				for(i=0,j=1;i<ipt.length;i++,j++){
					
					ipt[i].value=trcell[j].innerText;
					
				}
		}
		
		function filedownload(id,name,type){
			var hrefid = document.getElementById("href"+id);
			hrefid.href="<%=path%>/download/"+id+"/"+encodeURI(encodeURI(name))+"/"+type;
		}
		
		</script>
		
		<script src="js/jquery-1.7.1.min.js"></script>

  </head>
  
  <body style="background: url(../images/mian_bj_03.gif);">
 <p id="userid" style="display: none;"><%=session.getAttribute("userid") %></p>
 <table class="table table-hover">
		<thead>
			<tr class="success">
				<th>序号</th>
				<th>专利名称</th>
				<th>专利号</th>
				<th>申请时间</th>
				<th>作者</th>
				<th>作者排序</th>
				<th>链接</th>
				<th>院得分</th>
				<th>校得分</th>
				<th>佐证文件</th>
				<th>专利级别</th>
				<th>院审核状态</th>
				<th colspan="2">操作</th>
			</tr>
		</thead>
		
					<tbody>
					<c:if test="${fn:length(zlList)==0}"> 
				<tr align="center">
				<td colspan="15" style="color:red;">查询无结果</td>
				</tr>
				</c:if>
					<c:forEach items="${zlList}" var="a">
					
					<tr id="tr${a.id}">
						<td></td>
						<td>${a.name}</td>
						<td>${a.zlnumber}</td>
						<td>${fn:substring(a.time,0,10)}</td>
						<td>${a.author}</td>
						<td>${a.authorseq}</td>
						<td><a target="_blank" href=${a.url}>${a.url}</a></td>
						<td>${a.score}</td>
						<td>${a.score2}</td>
						<c:set value="${fn:split(a.realfilename,',')}" var="str"/>
						<td style="line-height: 20px;">
						<c:forEach items="${str}" var="s">
						<a id="href${a.id}" onclick="filedownload(${a.id},'${s}','${a.zuopintype}');" href="javascript:void(0);">${s}</a><br>
						</c:forEach>
						</td>
						<td>${a.rank}</td>
						<td><c:if test="${a.status == '1'}">
								<b style="color: green">审核通过</b>
							</c:if>
							<c:if test="${a.status == '0'}">
								<b style="color: gray">未审核</b>
							</c:if>
							<c:if test="${a.status == '2'}">
								<b style="color: red">审核未通过</b>
							</c:if>
						</td>
						<td>
							<a class="btn" id="modal-834996" role="button" href="#modal-container-834996" data-toggle="modal" onclick="bianji(${a.id});">编辑</a>
						</td>
						<td  colspan="2">
							<c:if test="${a.status == '1'}">
								<a href="javascript:;" onclick="del(this)" style="color: red;">删除</a>
							</c:if>
							<c:if test="${a.status == '0'}">
								<i class="glyphicon glyphicon-ok"></i><a href="JavaScript:;" onclick="pass(this);" style="color: green;" >同意</a>
								/<span class="glyphicon glyphicon-remove"></span><a href="JavaScript:;" onclick="nopass(this);" style="color: red">不同意</a>
							</c:if>
							<c:if test="${a.status == '2'}">
								<a href="javascript:;" onclick="del(this)" style="color: red">删除</a>
							</c:if>	
						</td>
						<td style="display: none;">${a.id}</td>
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
		<div class="modal fade" id="modal-container-834996" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
					<h4 class="modal-title" id="myModalLabel">编辑</h4>
				</div>
				<div class="modal-body">
					<form  class="form-horizontal" role="form"  name="loginform" action="Bianji" method="post" enctype="multipart/form-data">
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>专利名称</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="name" id="zlmz"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>专利号</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="kanwu" id="zlh"/>
						</div>
					</div>
					<div class="form-group" >
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>发表时间</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="date" name="time" id="year"/>
						</div>
					</div>
					
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">作者</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="author" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">作者排序</label>
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
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">院得分</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="score" id="df" readonly="readonly" />
						</div>
					</div>
					<div class="form-group" style="display: none;">
					 	<label class="col-sm-2 control-label" for="inputEmail3">校得分</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="score2" id="df2" readonly="readonly" />
						</div>
					</div>
					<input class="ipt" style="display: none;">
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
					 	<label class="col-sm-2 control-label" for="inputEmail3"  data-toggle="tooltip" data-placement="left" title="">等级<i class="glyphicon glyphicon-question-sign"></i></label>
						<div class="col-sm-10">
							<select name="rank"  id="rank_select" class="ipt  form-control" onchange="test(${userid});">
								<c:forEach items="${rankList}" var="a" >
								<option value="${a.rank}" title="${a.rankdesc }">${a.rank}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<ol style="display: none;">
						<li >
							<strong>id：</strong>
							<input  class="" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="id" value="" size="20" />
							<input  class="ipt" type="text" name="type" value="zhuanli" size="20" />
						</li>
						<li >
							<input class="ipt" type="text" name="currpage" value="1" size="20" />
						</li>
						<li >
							<input class="ipt" type="text" name="flag" value="-1" size="20" />
						</li>
						<li >
							<input class="ipt" type="text" name="index" value="2" size="20" />
						</li>
						<li >
							<input class="ipt" type="text" name="year" value="${year}" size="20" />
						</li>
						<li >
							<input class="ipt" type="text" name="status" value="${status}" size="20" />
						</li>
							<li >
							<input class="ipt" type="text" name="inputvalue" value="${inputvalue}" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="yrank" value="${yrank}" size="20" />
						</li>
						<li>
							<input class="btn btn-primary" type="submit" name="submit" value=" 确定 " id="sb"/>
						</li>
					</ol>
				</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" type="button" data-dismiss="modal">关闭</button> <button class="btn btn-primary" type="button" onclick="button()" >保存</button>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
	function button(){

		$("#sb").click();
	}
</script>
  

    </body>
</html>
