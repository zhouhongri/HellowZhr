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
    
    <title>论文管理</title>
    
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
	    
	function tiaozhuan(pagecount,year) {
	
		var inputnum = document.getElementById("inputnum").value;

		if(inputnum<1||inputnum>pagecount){
		//下面这行功能实现imggo的onclick点击事件失效
		alert("请输入正确的跳转数值");
		document.getElementById("imggo").ATTR("onclick","");
		}else{
	    createXMLHttpRequest();
	    xmlHttp.onreadystatechange = callback;
	    var url = "querygrky?currpage="+inputnum+"&table=lunwen&year="+year;
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
                 //alert(id);
                 //$(t).parent().parent().remove();
                 $.ajax({
                 	type:"post",
                 	url:"Del",
                 	data:{
                 		"id":id,
                 		"type":"lunwen"
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
							<span></span>论文标题
						</td>
						<td class="mian_b_bg_lm">
							<span></span>刊物名称
						</td>
						<td class="mian_b_bg_lm">
							<span></span>发表时间
						</td>
						<td class="mian_b_bg_lm">
							<span></span>eICode
						</td>
						<td class="mian_b_bg_lm">
							<span></span>sCICode
						</td>
						<td class="mian_b_bg_lm">
							<span></span>iSTPCode
						</td>
						<td class="mian_b_bg_lm">
							<span></span>作者
						</td>
						<td class="mian_b_bg_lm">
							<span></span>作者排序
						</td>
						<td class="mian_b_bg_lm">
							<span></span>url
						</td>
						<td class="mian_b_bg_lm">
							<span></span>得分
						</td>
						<td class="mian_b_bg_lm">
							<span></span>等级
						</td>
						
					
					
						
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${grList}" var="a">
					
					<tr id="tr${a.id}">
						<td></td>
						<td>${a.name}</td>
						<td>${a.kanwu}</td>
						<td>${fn:substring(a.time,0,10)}</td>
						<td>${a.eicode}</td>
						<td>${a.scicode}</td>
						<td>${a.istpcode}</td>
						<td>${a.author}</td>
						<td>${a.authorseq}</td>
						<td><a target="_blank" href=${a.url}>${a.url}</a></td>
						<td>${a.score}</td>
						<td>${a.rank}</td>
				
			
						<td style="display: none;">${a.id}</td>
						
					</tr>
					</c:forEach>
					
					
					<tr>
					<td class="mian_b_bg_lm" colspan="10" style="border-right:medium none;border-left:medium none">
							共${totalcount}条记录,
							当前第${currpage}/${pagecount}页</td>
						
						
						<td class="mian_b_bg_lm" style="border-right:medium none; " > 跳转到第<input type="text" style="width:20px;height:20px;text-align: center;"size="3px" id="inputnum" value="${currpage}">页</td>
						<td class="mian_b_bg_lm" ><a href="JavaScript:;" id="imggo" onclick="tiaozhuan(${pagecount},${year});"><img src="images/go.gif" width="37" height="15" /></a></td>
					</tr>
					
				</table>


 
  </body>
</html>
