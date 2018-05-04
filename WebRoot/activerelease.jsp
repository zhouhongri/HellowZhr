<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>院活动发布</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="cs/pintuer.css">
    	<link rel="stylesheet" href="cs/admin.css">
		<link rel="stylesheet" href="css/index.css" type="text/css">
		<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=path%>/layer/layer.js"></script>
	<link rel="icon" type="image/png" href="images/loginlogo.png">
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
	<script src="<%=path%>/layer/layer.js"></script>
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
	<style type="text/css">
		.quantity-remove, .quantity-add {
		    cursor: pointer;
		}
		.quantity-add.glyphicon, .quantity-remove.glyphicon {
		    display: block;
		    cursor: pointer;
		}
	</style>
	
	<script type="text/javascript">
		window.onload=function(){
			//ymd();
			queryactivity();
			queryactivitytwo();
			//location.reload();
		}
		
		function removea(e){
			var count = 1;
		    var newcount = 0;
		    //Wert holen + Rechnen
		    var elemID = $(e).parent().attr("id");
		    var countField = $("#"+elemID+'inp');
		    var count = $("#"+elemID+'inp').val();
		    if(count==''||count==null){
	        	$("#"+elemID+'inp').val(0);
	        	count=$("#"+elemID+'inp').val();
	        }
		    var newcount = parseInt(count) - 1;
		    //Neuen Wert setzen
		   
	        if(newcount/1<=0){
	        	 $("#"+elemID+'inp').val(0);
	        	 $("#"+elemID+'inp').parent().parent().prev().attr("checked",false);
	        }else{
	        	$("#"+elemID+'inp').val(newcount);
	        	$("#"+elemID+'inp').parent().parent().prev().attr("checked",true);
	        }
		   	
		}
		
		function adda(e){
			var count = 1;
	        var newcount = 0;
	        //Wert holen + Rechnen
	        var elemID = $(e).parent().attr("id");
	        var countField = $("#"+elemID+'inp');
	        var count = $("#"+elemID+'inp').val();
	        if(count==''||count==null){
	        	$("#"+elemID+'inp').val(0);
	        	count=$("#"+elemID+'inp').val();
	        }
	        var newcount = parseInt(count) + 1;
	        //Neuen Wert setzen
	        $("#"+elemID+'inp').val(newcount);
	        
	        if(newcount/1>0){
	        	$(e).parent().parent().prev().attr("checked",true);
	        }else{
	        
	        	$("#"+elemID+'inp').parent().parent().attr("checked",false);
	        }
		}
		
		function removeb(e){
			var count = 1;
		    var newcount = 0;
		    //Wert holen + Rechnen
		    var elemID = $(e).parent().attr("id");
		    var countField = $("#"+elemID+'inp');
		    var count = $("#"+elemID+'inp').val();
		    if(count==''||count==null){
	        	$("#"+elemID+'inp').val(0);
	        	count=$("#"+elemID+'inp').val();
	        }
		    var newcount = parseInt(count) - 1;
		    //Neuen Wert setzen
		   
	        if(newcount/1<=0){
	        	 $("#"+elemID+'inp').val(0);
	        	 $("#"+elemID+'inp').parent().parent().prev().attr("checked",false);
	        }else{
	        	$("#"+elemID+'inp').val(newcount);
	        	$("#"+elemID+'inp').parent().parent().prev().attr("checked",true);
	        }
		   	
		}
		
		function addb(e){
			var count = 1;
	        var newcount = 0;
	        //Wert holen + Rechnen
	        var elemID = $(e).parent().attr("id");
	        var countField = $("#"+elemID+'inp');
	        var count = $("#"+elemID+'inp').val();
	        if(count==''||count==null){
	        	$("#"+elemID+'inp').val(0);
	        	count=$("#"+elemID+'inp').val();
	        }
	        var newcount = parseInt(count) + 1;
	        //Neuen Wert setzen
	        $("#"+elemID+'inp').val(newcount);
	        if(newcount/1>0){
	        	$("#"+elemID+'inp').parent().parent().prev().attr("checked",true);
	        	
	        }else{
	        	$("#"+elemID+'inp').parent().parent().prev().attr("checked",false);
	        }
		}
	
	
			function ymd(){
				var input1 = document.getElementById("input1").value;
			var input2 = document.getElementById("input2").value;
			var input3 = document.getElementById("input3").value;
				var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth();
				//month=month+1;
				var day = now.getDate();
				var today;
				//input2=today;
				if(parseInt(month)<9&&parseInt(day)<10){
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
					$("#input1").val(today);
					$("#input2").val(today);
					$("#input3").val(today);
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
		
		
		function queryactivity(){
			$.post("atvflagquery",function(message){
				if("true"==message){
							
							$("#rlbtn").attr("disabled", true);
							
						}
						if("false"==message){
							$("#ccbtn").attr("disabled", true);
							//location.reload();
						}
			})
			
		}
		
		function queryactivitytwo(){
		var jobname = document.getElementById("job").value;
			$.post("atvflagquerytwo",{"jobname":jobname},function(message){
					if("true"==message){
							
							$("#rlbtn2").attr("disabled", true);
							$("#ccbtn2").attr("disabled", false);
							
						}
						if("false"==message){
							$("#ccbtn2").attr("disabled", true);
							$("#rlbtn2").attr("disabled", false);
							//location.reload();
						}
			})
			
		}	
		
		function changetime(){
			var input1 = document.getElementById("input1").value;
			var input2 = document.getElementById("input2").value;
			
				var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth();
				//month=month+1;
				var day = now.getDate();
				var today;
				//input2=today;
				if(parseInt(month)<9&&parseInt(day)<10){
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
				
					
					layer.msg("请输入正确的日期！");
					$("#input1").val(today);
					return false;
				}
				if(input2>today){
				
					layer.msg("请输入正确的日期！");
					$("#input2").val(today);
					return false;
				}
				if(input1!=""&&input2!=""){
					if(input1>input2){
						layer.msg("请输入正确的日期格式!",function(){});
						$("#input1").val("");
						$("#input2").val("");
						return false;
						//$("#input1").val("");
					}
				}
				
		}
		
		function musttime(){
		var input3 = document.getElementById("input3").value;
			var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth();
				//month=month+1;
				var day = now.getDate();
				var today;
				//input2=today;
				if(parseInt(month)<9&&parseInt(day)<10){
						today=year+"-0"+(month+1)+"-0"+day;
					}else{
						if(parseInt(month)<9){
							today=year+"-0"+(month+1)+"-"+day;
						}
						else if(parseInt(day)<10){
							today=year+"-"+(month+1)+"-0"+day;
						}else{
						today=year+"-"+(month+1)+"-"+day;
						}
					}
				if(input3<today){
						layer.msg("请输入正确的日期！");
						$("#input3").val("");
						return false;
					}
		}
		
		function musttimetwo(){
		var input4 = document.getElementById("input4").value;
			var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth();
				//month=month+1;
				var day = now.getDate();
				var today;
				//input2=today;
				if(parseInt(month)<9&&parseInt(day)<10){
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
				if(input4<today){
						layer.msg("请输入正确的日期！");
						$("#input4").val("");
						return false;
					}
		}
			
			function release(){
			var c0obj = document.getElementsByName("c0kbx");
			var c1obj = document.getElementsByName("c1kbx");
			var checkval = [];
			var zmenu="";
			var n=1;
			var m=1;
			var input3 = document.getElementById("input3").value;
			var input1 = document.getElementById("input1").value;
			var input2 = document.getElementById("input2").value;
			var jjnum = document.getElementsByClassName("pj");
			var jjnumval=[];
			if(input1==""||input2==""||input3==""){
					layer.msg("请将日期输入全！");
					return false;
				}
			
				for(k=0;k<c0obj.length;k++){
					if(c0obj[k].checked){
						checkval.push(c0obj[k].value);
						if(n==1){
							zmenu+="科研管理,";
							n++;
						}
					}
				}
					for(k=0;k<c1obj.length;k++){
						if(c1obj[k].checked){
							checkval.push(c1obj[k].value);
							if(m==1){
								zmenu+="教学管理,";
								m++;
							}
						}
					}
				for(k=0;k<jjnum.length;k++){
					if(jjnum[k].value>0){
						jjnumval.push(parseInt(jjnum[k].value));
					}
				}
				
				if(checkval.length==0){
					layer.msg("请选择评比作品！");
					return false;
				}
				
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = releaseback;
			var url = "release?zmenu="+encodeURI(encodeURI(zmenu))+"&checkval="+encodeURI(encodeURI(checkval))+"&jjnumval="+encodeURI(encodeURI(jjnumval))+"&input1="+input1+"&input2="+input2+"&input3="+input3; 
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
		}
	
		
		
		function releaseback() {
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
						var message = xmlHttp.responseText;
						layer.msg(message);
						if("发布成功！"==message){
							$("#rlbtn").attr("disabled", true);
							$("#ccbtn").attr("disabled", false);
						}
					}
				} else {
				}
			}
			
			function releasetwo(){
			var c2obj = document.getElementsByName("c2kbx");
			var c3obj = document.getElementsByName("c3kbx");
			var checkval2 = [];
			var zmenu2="";
			var n=1;
			var m=1;
			var job = document.getElementById("job").value;
			//var allnum2 = document.getElementById("allnum2").value;
			var input4 = document.getElementById("input4").value;
			var zckynum = document.getElementsByClassName("zckynum");
			var zcjxnum = document.getElementsByClassName("zcjxnum");
			var zcnumval=[];
			
			
			if(input4==""){
				layer.msg("请将日期输入全！");
				return false;
			}
				for(k=0;k<c2obj.length;k++){
					if(c2obj[k].checked){
						checkval2.push(c2obj[k].value);
						zcnumval.push(zckynum[k].value);
						if(n==1){
							zmenu2+="科研管理,";
							n++;
						}
					}
				}
					for(k=0;k<c3obj.length;k++){
						if(c3obj[k].checked){
							checkval2.push(c3obj[k].value);
							zcnumval.push(zcjxnum[k].value);
							if(m==1){
								zmenu2+="教学管理,";
								m++;
							}
						}
					}
				if(checkval2.length==0){
					layer.msg("请选择评比作品！");
					return false;
				}
				
			if("全部"==job){
				if(confirm('是否发布全部职称')){
					createXMLHttpRequest();
					xmlHttp.onreadystatechange = releasebacktwo;
					var url = "releasetwo?zmenu2="+encodeURI(encodeURI(zmenu2))+"&checkval2="+encodeURI(encodeURI(checkval2))+"&zcnumval="+encodeURI(encodeURI(zcnumval))+"&jobname="+encodeURI(encodeURI(job))+"&input4="+input4; 
					xmlHttp.open("POST", url, true);
					xmlHttp.send(null);
				}
			}else{
				createXMLHttpRequest();
				xmlHttp.onreadystatechange = releasebacktwo;
				var url = "releasetwo?zmenu2="+encodeURI(encodeURI(zmenu2))+"&checkval2="+encodeURI(encodeURI(checkval2))+"&zcnumval="+encodeURI(encodeURI(zcnumval))+"&jobname="+encodeURI(encodeURI(job))+"&input4="+input4; 
				xmlHttp.open("POST", url, true);
				xmlHttp.send(null);
			}
		}
	
		
		
		function releasebacktwo() {
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
						var message = xmlHttp.responseText;
						layer.msg(message);
						if("发布成功！"==message){
							$("#rlbtn2").attr("disabled", true);
							$("#ccbtn2").attr("disabled", false);
						}
					}
				} else {
				}
			}
			
			function cancel(){
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = cancelback;
			var url = "cancel?acflag=del";
			xmlHttp.open("POST", url, true);
			xmlHttp.send(null);
		}
	
	
		function cancelback() {
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
						var message = xmlHttp.responseText;
						layer.msg(message);
						if("取消成功！"==message){
							$("#ccbtn").attr("disabled", true);
							$("#rlbtn").attr("disabled", false);
						}
					}
				} else {
				}
			}
			function canceltwo(){
			var jobname = document.getElementById("job").value;
			if("全部"==jobname){
					if(confirm('是否取消已发布职称')){
					createXMLHttpRequest();
					xmlHttp.onreadystatechange = cancelbacktwo;
					var url = "canceltwo?jobname="+encodeURI(encodeURI(jobname));
					xmlHttp.open("POST", url, true);
					xmlHttp.send(null);
				}
			}
			else{
				createXMLHttpRequest();
				xmlHttp.onreadystatechange = cancelbacktwo;
				var url = "canceltwo?jobname="+encodeURI(encodeURI(jobname));
				xmlHttp.open("POST", url, true);
				xmlHttp.send(null);
			}
			
		}
	
	
		function cancelbacktwo() {
			if (xmlHttp.readyState == 4) {
				if (xmlHttp.status == 200) {
						var message = xmlHttp.responseText;
						layer.msg(message);
						if("取消成功！"==message){
							$("#ccbtn2").attr("disabled", true);
							$("#rlbtn2").attr("disabled", false);
						}
					}
				} else {
				}
			}
		//全选
		function checkboxc0qb(){
			var c0obj = document.getElementsByName("c0kbx");
			var c0qb = document.getElementById("c0qb");
			var jjguidingkynum = document.getElementsByClassName("jjguidingkynum");
				if(c0qb.checked){
					c0qb.checked=true;
					for(k in c0obj){
						c0obj[k].checked=true;
						//$(".c0obj").attr("checked",true);
						jjguidingkynum[k].style.display="block";
					}
				}else{
					for(k in c0obj){
						c0obj[k].checked=false;
						jjguidingkynum[k].style.display="none";
					}
				}
			
		}
		function checkboxc0cname(){
			var c0obj = document.getElementsByName("c0kbx");
			var c0qb = document.getElementById("c0qb");
			var jjguidingkynum = document.getElementsByClassName("jjguidingkynum");
			if(!c0obj.checked){
				c0qb.checked=false;
			}
			for(k in c0obj){
					if(c0obj[k].checked){
							jjguidingkynum[k].style.display="block";
					}else{
						jjguidingkynum[k].style.display="none";
					}
				}
		}
		
		//全选
		function checkboxc2qb(){
			var c2obj = document.getElementsByName("c2kbx");
			var c2qb = document.getElementById("c2qb");
			var zcguidingkynum = document.getElementsByClassName("zcguidingkynum");
				if(c2qb.checked){
					c2qb.checked=true;
					for(k in c2obj){
						c2obj[k].checked=true;
						zcguidingkynum[k].style.display="block";
					}
				}else{
					for(k in c2obj){
						c2obj[k].checked=false;
						zcguidingkynum[k].style.display="none";
					}
				}
			
		}
		function checkboxc2cname(){
			var c2obj = document.getElementsByName("c2kbx");
			var c2qb = document.getElementById("c2qb");
			var zcguidingkynum = document.getElementsByClassName("zcguidingkynum");
			if(!c2obj.checked){
				c2qb.checked=false;
			}
				for(k in c2obj){
					if(c2obj[k].checked){
							zcguidingkynum[k].style.display="block";
					}else{
						zcguidingkynum[k].style.display="none";
					}
				}
			
		}
		
		//全选
		function checkboxc1qb(){
			var c1obj = document.getElementsByName("c1kbx");
			var c1qb = document.getElementById("c1qb");
			var jjguidingjxnum = document.getElementsByClassName("jjguidingjxnum");
				if(c1qb.checked){
					c1qb.checked=true;
					for(k in c1obj){
						c1obj[k].checked=true;
						jjguidingjxnum[k].style.display="block";
					}
				}else{
					for(k in c1obj){
						c1obj[k].checked=false;
						jjguidingjxnum[k].style.display="none";
					}
				}
			
		}
		function checkboxc1cname(){
			var c1obj = document.getElementsByName("c1kbx");
			var c1qb = document.getElementById("c1qb");
			var jjguidingjxnum = document.getElementsByClassName("jjguidingjxnum");
			if(!c1obj.checked){
				c1qb.checked=false;
			}
			for(k in c1obj){
					if(c1obj[k].checked){
							jjguidingjxnum[k].style.display="block";
					}else{
						jjguidingjxnum[k].style.display="none";
					}
				}
		}
		
		//全选
		function checkboxc3qb(){
			var c3obj = document.getElementsByName("c3kbx");
			var c3qb = document.getElementById("c3qb");
			var zcguidingjxnum = document.getElementsByClassName("zcguidingjxnum");
				if(c3qb.checked){
					c3qb.checked=true;
					for(k in c3obj){
						c3obj[k].checked=true;
						zcguidingjxnum[k].style.display="block";
					}
				}else{
					for(k in c3obj){
						c3obj[k].checked=false;
						zcguidingjxnum[k].style.display="none";
					}
				}
			
		}
		function checkboxc3cname(){
			var c3obj = document.getElementsByName("c3kbx");
			var c3qb = document.getElementById("c3qb");
			var zcguidingjxnum = document.getElementsByClassName("zcguidingjxnum");
				if(!c3obj.checked){
					c3qb.checked=false;
				}
				for(k in c3obj){
					if(c3obj[k].checked){
							zcguidingjxnum[k].style.display="block";
					}else{
						zcguidingjxnum[k].style.display="none";
					}
				}
		}
		
	</script>
  </head>
  
  <body>
  	
			<div class="panel-group" id="panel-809828">
				<div class="panel panel-success">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-809828" href="#panel-element-438224">院年度评奖</a>
					</div>
					<div id="panel-element-438224" class="panel-collapse collapse in">
						<div class="panel-body">
								<strong>年度：</strong>
							    <strong class="stg">
							    <input type="date" id="input1" onchange="changetime();"style="width: 140px;height: 26px;"/>到
							   	<input type="date" id="input2" onchange="changetime();"style="width: 140px;height: 26px;"/>
							   	</strong><br><br>
								<strong>截止时间：</strong> 
								<strong class="stg">
								<input type="date" id="input3" onchange="musttime();"style="width: 140px;height: 26px;"/>
							 	</strong><br><br>  
									<%
									String[] str1 = (String[])session.getAttribute("zmenus");
										for(String s:str1){ 
										if(s.equals("0")){
									%>
								<strong>科研管理：</strong> 
								<strong class="stg">
							   		<br><br>
							   		<c:forEach items="${c0menulist}" var="a">
							   			
										<div class="item col-xs-6 col-lg-6">
               								 <div class="row">
												<div class="col-md-4">
												<input type="text" id="${a.id}ipt" value="${a.cname}" style="width: 90px;height: 26px;	border: 0px;"/>
							                    <input type="checkbox" name="c0kbx" value="${a.cname}"  style="display: none;"/>
							                        <div class="form-group form-group-options">
							                            <div id="ida${a.id}" class="input-group input-group-option quantity-wrapper">
							                            
							                                <span  class="input-group-addon input-group-addon-remove quantity-remove btn btn-danger" onclick="removea(this);">
							                                    <span class="glyphicon glyphicon-minus"></span>
							                                </span>
							                                <input  id="ida${a.id}inp" type="text" value="0"   class="form-control quantity-count pj" placeholder="0" oninput="this.value=this.value.replace(/[^\d]/g,'') "  onafterpaste="this.value=this.value.replace(/[^\d]/g,'') " name="f_order" value="1">
							                                <span class="input-group-addon input-group-addon-remove quantity-add btn btn-success" onclick="adda(this);">
							                                    <span class="glyphicon glyphicon-plus"></span>
							                                </span>
							                            </div>
							                        </div>
							                    </div>
											</div><!--/Row-->
            							</div><!--/Item--> 
									</c:forEach>
							    </strong><br><br>
							    <%
										}
								%>
									 <%
									 	if(s.equals("1")){
									  %>
								<strong>教学管理：</strong> 
								<strong class="stg">
							   		<br><br>
							   		<c:forEach items="${c1menulist}" var="b">
							   			<div class="item col-xs-6 col-lg-6">
               								 <div class="row">
												<div class="col-md-4">
												<input type="text" value="${b.cname}" style="width: 90px;height: 26px;	border: 0px;"/>
							                    <input type="checkbox" name="c1kbx" value="${b.cname}" style="display: none;" />
							                        <div class="form-group form-group-options">
							                            <div id="idb${b.id}" class="input-group input-group-option quantity-wrapper">
							                                <span  class="input-group-addon input-group-addon-remove quantity-remove btn btn-danger" onclick="removeb(this);">
							                                    <span class="glyphicon glyphicon-minus"></span>
							                                </span>
							                                <input  id="idb${b.id}inp" type="text" value="0"  class="form-control quantity-count pj" placeholder="0" oninput="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') " >
							                                <span  class="input-group-addon input-group-addon-remove quantity-add btn btn-success" onclick="addb(this);">
							                                    <span class="glyphicon glyphicon-plus"></span>
							                                </span>
							                            </div>
							                        </div>
							                    </div>
											</div><!--/Row-->
            							</div><!--/Item--> 
									</c:forEach>
							    </strong><br><br>
							    <%
											}
										}
										
								 %>
						</div>
					<div class="panel-footer">
						 <button type="button" class="btn btn-default btn-primary" onclick="release();" id="rlbtn">发布</button>
						<button type="button" class="btn btn-default btn-primary" onclick="cancel();" id="ccbtn">取消发布</button>
					</div>
				</div>
				</div>
				</div>
				<!-- 
				<div class="panel panel-info">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-809828" href="#panel-element-522370">院职称评定</a>
					</div>
					<div id="panel-element-522370" class="panel-collapse collapse">
						<div class="panel-body">
							<%
									for(String s:str1){
										if(s.equals("0")){
									%>
								<strong>科研管理：</strong> 
								<strong class="stg">
									<input type="checkbox" id="c2qb" style="width: 20px;height: 15px;" onclick="checkboxc2qb();"/>
									<input type="text" value="全部" style="width: 50px;height: 26px;	border: 0px;" />
							   		<br><br>
							   		<c:forEach items="${c0menulist}" var="c">
							   			<input type="checkbox" name="c2kbx" value="${c.cname}" style="width: 20px;height: 15px;" onclick="checkboxc2cname();"/>
							   			<input type="text" value="${c.cname}" style="width: 90px;height: 26px;	border: 0px;"/>
							   			<strong class="zcguidingkynum" style="display: none;">
							   			<strong>个数：</strong>
									    <select class="zckynum" style="width: 40px;height: 26px;">
									    <option value="0">无</option>
									    <option value="1">1</option>
									   	<option value="2">2</option>
									   	<option value="3">3</option>
									   	<option value="4">4</option>
									   	<option value="5">5</option>
									   	<option value="6">6</option>
									   	<option value="5">7</option>
									   	<option value="8">8</option>
									   	<option value="9">9</option>
									   	<option value="10">10</option>
									    </select>
									    </strong><br><br>
									</c:forEach>
							    </strong><br><br>
							    <%
										}
								%>
									 <%
									 	if(s.equals("1")){
									  %>
								<strong>教学管理：</strong> 
								<strong class="stg">
									<input type="checkbox" id="c3qb" style="width: 20px;height: 15px;" onclick="checkboxc3qb();"/>
									<input type="text" value="全部" style="width: 50px;height: 26px;	border: 0px;"/>
							   		<br><br>
							   		<c:forEach items="${c1menulist}" var="d">
							   			<input type="checkbox" name="c3kbx" value="${d.cname}" style="width: 20px;height: 15px;" onclick="checkboxc3cname();"/>
							   			<input type="text" value="${d.cname}" style="width: 120px;height: 26px;	border: 0px;"/>
										<strong class="zcguidingjxnum" style="display: none;">
							   			<strong>个数：</strong>
									    <select class="zcjxnum" style="width: 40px;height: 26px;">
									    <option value="0">无</option>
									    <option value="1">1</option>
									   	<option value="2">2</option>
									   	<option value="3">3</option>
									   	<option value="4">4</option>
									   	<option value="5">5</option>
									   	<option value="6">6</option>
									   	<option value="5">7</option>
									   	<option value="8">8</option>
									   	<option value="9">9</option>
									   	<option value="10">10</option>
									    </select>
									    </strong><br><br>
									</c:forEach>
							    </strong><br><br>
							    <%
											}
										}
								 %>
								 <strong>评定职称：</strong>
								 <strong class="stg">
								 <select id="job" style="width: 140px;height: 26px;" onchange="queryactivitytwo();">
							   	 <option value="全部">全部</option>
							   	 <option value="助教">助教</option>
							   	 <option value="讲师">讲师</option>
							   	 <option value="副教授">副教授</option>
							   	 <option value="教授">教授</option>
								 </select>
								 </strong><br><br>
								 <strong>截止时间：</strong> 
								<strong class="stg">
								<input type="date" id="input4" onchange="musttimetwo();"style="width: 140px;height: 26px;"/>
							 	</strong><br><br>  
							    <button type="button" class="btn btn-default btn-primary" onclick="releasetwo();" id="rlbtn2">发布</button>
								<button type="button" class="btn btn-default btn-primary" onclick="canceltwo();" id="ccbtn2">取消发布</button>
						</div>
					</div>
				</div>
			</div>
			 -->
             
  </body>
</html>
