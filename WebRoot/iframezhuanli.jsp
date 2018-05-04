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
	<link rel="icon" type="image/png" href="images/loginlogo.png">
<style type="text/css">

*{
	margin:0px;
	padding:0px;
}


</style>
<link rel="stylesheet" href="css/index.css" type="text/css">
		<script language="javascript" type="text/javascript">
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
                 alert("取消");
                 //return false;
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
	    
	function tiaozhuan(pagecount,userid,status,year) {
		var inputnum = document.getElementById("inputnum").value;

		if(inputnum<1||inputnum>pagecount){
		//下面这行功能实现imggo的onclick点击事件失效
		alert("请输入正确的跳转数值");
		document.getElementById("imggo").ATTR("onclick","");
		}else{
	    createXMLHttpRequest();
	    xmlHttp.onreadystatechange = callback;
	    var url = "querygrky?userid="+userid+"&table=zhuanli&status="+status+"&currpage="+inputnum+"&year="+year;
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
		
		
		
		
		</script>
		
		<script src="js/jquery-1.7.1.min.js"></script>
		
					<style type="text/css">
			body{
				margin-bottom: 0px;
				margin-left: 0px;
				margin-right: 0px;
				margin-top: 0px;
				overflow:hidden;

			}
		
			
		</style>
  </head>
  
  <body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg">
					
					<thead>
					<tr>
						
						<td class="mian_b_bg_lm">
							<span></span>序号
						</td>
						<td class="mian_b_bg_lm">
							<span></span>专利名称
						</td>
						<td class="mian_b_bg_lm">
							<span></span>专利级别
						</td>
						<td class="mian_b_bg_lm">
							<span></span>申请时间
						</td>
						<td class="mian_b_bg_lm">
							<span></span>专利号
						</td>
				
						<td class="mian_b_bg_lm">
							<span></span>作者信息
						</td>
						<td class="mian_b_bg_lm">
							<span></span>审核状态
						</td>
						<td colspan="2" class="mian_b_bg_lm">
							<span></span>操作
						</td>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${grList}" var="a">
					<tr>
						
						<td></td>
						<td>${a.name}</td>
						<td>${a.rank}</td>
						<td>${fn:substring(a.time,0,10)}</td>
						<td>${a.zlnumber}</td>
					
						<td>${a.author}/第${a.authorseq}作者</td>
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
						<td class="mian_b_icon_01">
							<a href="">编辑</a>
						</td>
						<td class="mian_b_icon_02">
							<a href="javascript:;" onclick="del(this)">删除</a>
						</td>
					</tr>
					</c:forEach>
					
					
					<tr>
					<td class="mian_b_bg_lm" colspan="7" style="border-right:medium none;border-left:medium none">
							共${totalcount}条记录,
							当前第${currpage}/${pagecount}页</td>
						
						
						<td class="mian_b_bg_lm" style="border-right:medium none; " > 跳转到第<input type="text" style="width:20px;height:20px;text-align: center;"size="3px" id="inputnum" value="${currpage}">页</td>
						<td class="mian_b_bg_lm" ><a href="JavsScript:void(0);" id="imggo" onclick="tiaozhuan(${pagecount},${userid},${status},${year});"><img src="images/go.gif" width="37" height="15" /></a></td>
					</tr>
					
				</table>






  </body>
</html>
