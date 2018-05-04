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
    
    <title>菜单管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/index.css" type="text/css">
	<link rel="icon" type="image/png" href="images/loginlogo.png">	
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
		}
		body{
			margin-bottom: 0px;
			margin-left: 0px;
			margin-right: 0px;
			margin-top: 0px;
			overflow:hidden;
			
			
			}
		</style>
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
	    
	function tiaozhuan(pagecount,status,year) {
	
		var inputnum = document.getElementById("inputnum").value;

		if(inputnum<1||inputnum>pagecount){
		//下面这行功能实现imggo的onclick点击事件失效
		alert("请输入正确的跳转数值");
		document.getElementById("imggo").ATTR("onclick","");
		}else{
	    createXMLHttpRequest();
	    xmlHttp.onreadystatechange = callback;
	    var url = "querygrky?currpage="+inputnum+"&status="+status+"&table=lunwen&year="+year;
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
		
			function del(t){
			if(confirm('你确定要删除此记录吗？')){
				var id = $(t).parent().next().html();
                 alert(id);
                 $(t).parent().parent().remove();
                 $.ajax({
                 	type:"post",
                 	url:"Del",
                 	data:{
                 		"id":id,
                 		"type":"lunwen"
                 	}
                 })
              }else{
                 alert("取消");
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
		
		
		
		</script>
		
		<script src="js/jquery-1.7.1.min.js"></script>

  </head>
  
  <body>
 
 
		<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="mian_b_bg table-hover" >
				
					<thead>
					<tr>
						<td class="mian_b_bg_lm">
							<span></span>序号
						</td>
						<td class="mian_b_bg_lm">
							<span></span>一级菜单
						</td>
						<td class="mian_b_bg_lm">
							<span></span>二级菜单
						</td>
						<td class="mian_b_bg_lm">
							<span></span>院系
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
					<c:forEach items="${menuList}" var="a">
					
					<tr id="tr${a.id}">
						<td></td>
						<td>${a.zname}</td>
						<td>${a.cname}</td>
						<td>${a.yname}</td>
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
							<a href="javascript:;" onclick="bianji(${a.id});" >编辑</a>
						</td>
						<td class="mian_b_icon_02">
							<a href="javascript:;" onclick="del(this)" >提交</a>
						</td>
						<td style="display: none;">${a.id}</td>
						
					</tr>
					</c:forEach>
					
					
					<tr>
					<td class="mian_b_bg_lm" colspan="5" style="border-right:medium none;border-left:medium none">
							共${totalcount}条记录,
							当前第${currpage}/${pagecount}页</td>
						
						
						<td class="mian_b_bg_lm" style="border-right:medium none; " > 跳转到第<input type="text" style="width:20px;height:20px;text-align: center;"size="3px" id="inputnum" value="${currpage}">页</td>
						<td class="mian_b_bg_lm"><a href="JavaScript:;" id="imggo" onclick="tiaozhuan(${pagecount},${status},${year});"><img src="images/go.gif" width="37" height="15" /></a></td>
					</tr>
					
				</table>


 
  </body>
</html>
