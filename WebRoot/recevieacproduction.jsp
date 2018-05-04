<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>院接收活动作品</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="<%=path %>/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=path %>/css/bootstrap.css">
<script src="<%=path %>/js/jquery-1.7.1.min.js"></script>
<script src="<%=path %>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<link rel="icon" type="image/png" href="images/loginlogo.png">
<script type="text/javascript">
	    function danchuacprd(id,sltnameval){
  			var bb1 = document.getElementById("bb1"+id);
  			bb1.href="export?sltnameval="+encodeURI(encodeURI(sltnameval))+"&flag=ypjj"+"&id="+id;
 		}
  		function danchuacscore(){
  			var bb2 = document.getElementById("bb2");
  			var xname = document.getElementById("xnameipt").value;
  			//alert(xname);
  			bb2.href="exportscore?flag=ypjj"+"&xname="+encodeURI(encodeURI(xname));
  		}
  		function danchuacsumscore(){
  			var bb3 = document.getElementById("bb3");
  			var xname = document.getElementById("xnameipt").value;
  			bb3.href="exportsumscore?flag=ypjj"+"&xname="+encodeURI(encodeURI(xname));
  		}
  		
		function prevPage(){
			//alert("prev");
			var page = check("prevPage");
			if(page!="-1"){
				window.location.href = "queryauthors?currpage="+page;
			}
		}
		
		function check(type){
	//alert("check");
		var totalcount = $("#totalcount").text();
		var currpage = $("#currpage").text();
		//currpage = parsenInt(currpage);
		var pagecount = $("#pagecount").text();
		//pagecount = parsenInt(pagecount);
		//alert("totalcount:"+totalcount+"  currpage:"+currpage+"   pagecount:"+pagecount);
		if(type=="prevPage"){
			if(currpage==1){
				return -1;
			}else{
				return currpage-1;
			}
		}
		if(type=="nextPage"){
			if(currpage==pagecount){
				return -1;
			}else{
				return currpage/1+1;
			}
		}
		if(type=="changePage"){
			var change = $("#change").val();
			//alert("change:"+change);
			if(change>=1&&change<=pagecount){
				return change;
			}else{
				alert("请输入正确的值");
				return -1;
			}
		}
	}
		
		function nextPage(){
		var page = check("nextPage");
		//alert(page);
		if(page!="-1"){
			window.location.href = "queryauthors?currpage="+page;
		}
	}
	
	function changPage(){
		//alert("check success");
		var page = check("changePage");
		//alert("page:"+page);
		if(page!="-1"){
			window.location.href = "queryauthors?currpage="+page;
		}
	}
	
	function keyLogin(e){
  		var theEvent = window.event || e;
     	 var code = theEvent.keyCode || theEvent.which;
     	 	//alert(code);
   		if (code==13) {  //回车键的键值为13
  			changPage();  //调用
   		}
  	}
  	
  	function changexname(rownum,xname){
  		var id = document.getElementById("idc"+rownum);
  		id.href="queryauthors?currpage=1"+"&xname="+encodeURI(encodeURI(xname));
  	}  		
  	</script>
</head>

<body>
  <nav class="navbar navbar-default navbar-static-top" role="navigation">
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						
						<li class="dropdown">
							 <a href="" class="dropdown-toggle" data-toggle="dropdown">系选择<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="javascript:void(0);" id="idc0" onclick="changexname(0,'全部');">全部</a>
								</li>
								<c:forEach items="${listxname}" var="ltxe">
								<li>
									 <a href="javascript:void(0);" id="idc${ltxe.rownum}" onclick="changexname(${ltxe.rownum},'${ltxe.xname}');">${ltxe.xname}</a>
								</li>		
								</c:forEach>
								
							</ul>
						</li>
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						
						<li >
							 <a href="javascript:void(0);" id="bb2"><input type="button" value="下载各项分数" onclick="danchuacscore();{
								  this.disabled = true;
								  var me = this;
								  setTimeout(function() { me.disabled = false; }, 500);
								}"></a>
						</li>
						<li>
						  		<a href="javascript:void(0);" id="bb3"><input type="button" value="下载总分数" onclick="danchuacsumscore();{
								  this.disabled = true;
								  var me = this;
								  setTimeout(function() { me.disabled = false; }, 500);
								}"></a>
						</li>
					</ul>
					
				</div>
			</nav>
  
  <input type="text" id="xnameipt" value="${xname}" style="display: none;"/>

	<table class="table table-hover">
		<thead>
			<tr class="error">
				<th>姓名</th>
				<th id="lw" style="display: none; ">论文得分</th>
				<th id="zl" style="display: none; ">专利得分</th>
				<th id="xszz" style="display: none; ">学术著作得分</th>
				<th id="xk" style="display: none; ">学科得分</th>
				<th id="kyxm" style="display: none; ">科研项目得分</th>
				<th id="kyjl" style="display: none; ">科研奖励得分</th>

				<th id="zy" style="display: none; ">专业得分</th>
				<th id="ms" style="display: none; " >名师得分</th>
				<th id="kcjs" style="display: none; ">课程建设得分</th>
				<th id="jxyjxm" style="display: none; ">教学研究项目得分</th>
				<th id="sjjyxm" style="display: none; ">实践教育项目得分</th>
				<th id="sysjs" style="display: none; ">实验室建设得分</th>
				<th id="tdjs" style="display: none; ">团队建设得分</th>
				<th id="xkjs" style="display: none; ">学科竞赛得分</th>
				<th id="jczz" style="display: none; ">教材著作得分</th>
				<th id="jxdxcg" style="display: none; ">教学单项成果得分</th>
				<th>总分</th>
				<th>下载个人作品报表</th>
			</tr>
		</thead>
		<c:forEach items="${listprd}" var="prd">
			<tr>
					<td>${prd.authorname}</td>
					<td class="lwtd" style="display: none;">${prd.lwscore}</td>
					<td class="zltd" style="display: none;">${prd.zlscore }</td>
					<td class="xszztd" style="display: none;">${prd.xszzscore }</td>
					<td class="xktd" style="display: none;">${prd.xkscore }</td>
					<td class="kyxmtd" style="display: none;">${prd.kyxmscore }</td>
					<td class="kyjltd" style="display: none;">${prd.kyjlscore }</td>
					<td class="zytd" style="display: none;">${prd.zyscore }</td>
					<td class="mstd" style="display: none;">${prd.msscore }</td>
					<td class="kcjstd" style="display: none;">${prd.kcjsscore }</td>
					<td class="jxyjxmtd" style="display: none;">${prd.jxyjxmscore }</td>
					<td class="sjjyxmtd" style="display: none;">${prd.sjjyxmscore }</td>
					<td class="sysjstd" style="display: none;">${prd.sysjsscore }</td>
					<td class="tdjstd" style="display: none;">${prd.tdjsscore }</td>
					<td class="xkjstd" style="display: none;">${prd.xkjsscore }</td>
					<td class="jczztd" style="display: none;">${prd.jczzscore }</td>
					<td class="jxdxcgtd" style="display: none;">${prd.jxdxcgscore }</td>
					<td >${prd.sumscore}</td>
				<td><a href="javascript:void(0);" id="bb1${prd.id}"><input type="button" 
				value="点击下载" onclick="danchuacprd(${prd.id},'${prd.authorname}');{
					  this.disabled = true;
					  var me = this;
					  setTimeout(function() { me.disabled = false; }, 500);
					 }"></a></td>
			</tr>

		

		</c:forEach>
	</table>

	<ul class="pagination" style="float:right;">
		<li><a>共<span id="totalcount">${totalcount}</span>条数据&nbsp;当前第<span
				id="currpage">${currpage }</span>页/共<span id="pagecount">${pagecount}</span>页
		    </a></li>
		<li><a href="queryauthors?currpage=1">首页</a></li>
		<li><a href="javascript:void(0);" onclick="prevPage();">&laquo;</a>
		</li>
		<li><a>跳转到<input type="text" style="height: 18px;width: 25px"
				value="${currpage}" id="change" onkeydown="keyLogin(event);">页</a>
		</li>
		<li><a href="javascript:void(0);" onclick="nextPage();">&raquo;</a>
		</li>
		<li><a href="queryauthors?currpage=${pagecount}">末页</a></li>
	</ul>

	<script type="text/javascript">
		$(function(){
		//alert("${listprd}");
			var cmenu="${cmenu}";
			//alert(cmenu);
					if(cmenu.indexOf("论文管理")!=-1){
						$("#lw").css("display","table-cell");
						$(".lwtd").css("display","table-cell");
					}if(cmenu.indexOf("专利管理")!=-1){
						$("#zl").css("display","table-cell");
						$(".zltd").css("display","table-cell");
					}if(cmenu.indexOf("学术著作管理")!=-1){
						$("#xszz").css("display","table-cell");
						$(".xszztd").css("display","table-cell");
					}if(cmenu.indexOf("学科管理")!=-1){
						$("#xk").css("display","table-cell");
						$(".xktd").css("display","table-cell");
					}if(cmenu.indexOf("科研项目管理")!=-1){
						$("#kyxm").css("display","table-cell");
						$(".kyxmtd").css("display","table-cell");
					}if(cmenu.indexOf("科研奖励管理")!=-1){
						$("#kyjl").css("display","table-cell");
						$(".kyjltd").css("display","table-cell");
					}if(cmenu.indexOf("专业管理")!=-1){
						$("#zy").css("display","table-cell");
						$(".zytd").css("display","table-cell");
					}if(cmenu.indexOf("名师管理")!=-1){
						$("#ms").css("display","table-cell");
						$(".mstd").css("display","table-cell");
					}if(cmenu.indexOf("课程建设管理")!=-1){
						$("#kcjs").css("display","table-cell");
						$(".kcjstd").css("display","table-cell");
					}if(cmenu.indexOf("教学研究项目管理")!=-1){
						$("#jxyjxm").css("display","table-cell");
						$(".jxyjxmtd").css("display","table-cell");
					}if(cmenu.indexOf("实践教育项目管理")!=-1){
						$("#sjjyxm").css("display","table-cell");
						$(".sjjyxmtd").css("display","table-cell");
					}if(cmenu.indexOf("实验室建设管理")!=-1){
						$("#sysjs").css("display","table-cell");
						$(".sysjstd").css("display","table-cell");
					}if(cmenu.indexOf("团队建设管理")!=-1){
						$("#tdjs").css("display","table-cell");
						$(".tdjstd").css("display","table-cell");
					}if(cmenu.indexOf("学科竞赛管理")!=-1){
						$("#xkjs").css("display","table-cell");
						$(".xkjstd").css("display","table-cell");
					}if(cmenu.indexOf("教材著作管理")!=-1){
						$("#jczz").css("display","table-cell");
						$(".jczztd").css("display","table-cell");
					}if(cmenu.indexOf("教学单项成果管理")!=-1){
						$("#jxdxcg").css("display","table-cell");
						$(".jxdxcgtd").css("display","table-cell");
					}
		})
		
	</script>
</body>
</html>
