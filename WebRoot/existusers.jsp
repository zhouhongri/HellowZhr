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
    
    <title>重复教师人员</title>
    
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
	<script src="<%=path%>/layer/layer.js"></script>
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
	<link rel="icon" type="image/png" href="images/loginlogo.png">
  </head>
	<strong id="str">您有 ${error} 这些行的数据不完整</strong>
							<br>
							<strong>您有 ${maxnum} 条数据重复:</strong>
	    <table class="table table-hover ">
	    	<tr>
	    		<th><input type="checkbox" id="all" ></th>
	    		<th>姓名</th>
	    		<th>性别</th>
	    		<th>年龄</th>
	    		<th>院名</th>
	    		<th>系名</th>
	    		<th>职称</th>
	    		<th>获得职称时间</th>
	    		<th>电话</th>
	    	</tr>
	    		<c:forEach items="${listexist}" var="a">
	    			<tr>
	    				<td><input name="checkname" type="checkbox" class="checklist" value="${a.name};${a.sex};${a.age};${a.college};${a.xname};${a.job};${a.jobtime};${a.tel}" ></td>
	    				<td>${a.name}</td>
	    				<td>${a.sex}</td>
	    				<td>${a.age}</td>
	    				<td>${a.college}</td>
	    				<td>${a.xname}</td>
	    				<td>${a.job}</td>
	    				<td>${a.jobtime}</td>
	    				<td>${a.tel}</td>
	    			</tr>
	    		</c:forEach>
	    		<tr>
	    			<td colspan="4" style="text-align: right;"><button class="btn btn-default" id="closebtn" type="button" data-dismiss="modal">取消</button></td>
	    			<td colspan="2"></td>
	    			<td colspan="3"><a id="holdbtn"><button id="savebtn" class="btn btn-primary" type="button" data-dismiss="modal" onclick="checkedbox()">保存</button></a></td>
	    		</tr>
	    </table>
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
			
	    	$(function(){
	    	var listexist = "${listexist}";
	    	if(listexist.length<=2){
	    		$("#savebtn").attr("disabled",true);
	    	}else{
	    		$("#savebtn").attr("disabled",false);
	    	}
	    	var error = "${error}";
	    		//alert(error.length);
	    		if(error.length==0){
	    			$("#str").css("display","none");
	    		}
	    		
	    		$("#closebtn").click(function(){
	    			window.location.href="GetUserServlet?currpage=1&userid=${userid}&index=1";
	    		})
	    	
	    		$("#all").click(function(){
	    			if(this.checked){	
	    				$(".checklist").attr("checked",true);
	    			}else{
	    			
	    				$(".checklist").attr("checked",false);
	    			}
					
	    		});
	    	});
	    	
	    	function checkedbox(){
			var obj = document.getElementsByName("checkname");
			var holdbtn = document.getElementById("holdbtn");
			var checkval = [];
			for(k in obj){
				if(obj[k].checked){
					checkval.push(obj[k].value);
				}
			}
			
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = callback;
			var url = "uploadusers?checkval="+encodeURI(encodeURI(checkval));
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
		}
		function callback(){
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
						var message = xmlHttp.responseText;
						if("success"==message){
							layer.msg("成功！");
							window.location.href="GetUserServlet?currpage=1&userid=${userid}&index=1";
						}else{
							layer.msg("失败！");
						}
					}
				} else {
					//alert(xmlHttp.status);
				}
		}
		
	</script>
</html>
