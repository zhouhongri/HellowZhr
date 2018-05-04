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
     <link rel="stylesheet" href="css/bootstrapmodel.css">
     <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/baobiaocss.css">
    <link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
   
       <style type="text/css">
    table{
    	width: 100%;
    	table-layout: fixed;
    }
    th,td{
    	width: 6.3%;
    }
    	 th,td{
		text-overflow:ellipsis; overflow:hidden; white-space:nowrap; 
	}
	.behigher{
	height:1000px;
	}
    </style>
</head>

<body>
<p id="userid" style="display: none;"><%=session.getAttribute("userid") %></p>
     <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-id">序号</th>
                                            <th class="table-title">级别</th>
                                            <th class="table-type am-hide-sm-only">分值</th>
                                            <th class="table-author am-hide-sm-only">院系</th>
                                            <th class="table-date am-hide-sm-only">第一作者</th>
                                            <th class="table-type am-hide-sm-only">第二作者</th>
                                            <th class="table-type am-hide-sm-only">第三作者</th>
                                            <th class="table-type am-hide-sm-only">第四作者</th>
                                            <th class="table-type am-hide-sm-only">第五作者</th>
                                            <th class="table-type am-hide-sm-only">分级描述</th>
                                            <th class="table-set" style="width: 24%;">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:if test="${fn:length(scoreList)==0}"> 
										<tr align="center">
											<td colspan="16" style="color:red;">查询无结果</td>
										</tr>
										</c:if>
										<c:forEach items="${scoreList}" var="a">
                                        <tr id="tr${a.id}">
                                            <td></td>
                                            <td>${a.rank}</td>
                                            <td class="am-hide-sm-only">${a.score}</td>
                                            <td class="am-hide-sm-only">${a.college}</td>
                                            <td class="am-hide-sm-only">${a.author1}</td>
                                            <td class="am-hide-sm-only">${a.author2}</td>
                                            <td class="am-hide-sm-only">${a.author3}</td>
                                            <td class="am-hide-sm-only">${a.author4}</td>
                                            <td class="am-hide-sm-only">${a.author5}</td>
                                            <td class="am-hide-sm-only">${a.rankdesc}</td>
                                            <td style="width: 24%;">
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><a id="modal-834996" href="#modal-container-834996" data-toggle="modal" onclick="beHigher();bianji(${a.id});"><span class="am-icon-pencil-square-o"></span> 编辑</a></button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="del(this)"><span class="am-icon-trash-o"></span> 删除</button>
                                                    </div>
                                                </div>
                                            </td>
                                            <td style="display: none;" id="testid">${a.id}</td>
                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                </table>

<div class="modal fade" id="modal-container-834996" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" aria-hidden="true" type="button" data-dismiss="modal" id="closebutton">×</button>
					<h4 class="modal-title" id="myModalLabel">编辑</h4>				
				</div>
					
				<div class="modal-body">
					<form  class="form-horizontal" role="form"  name="loginform" action="Bianji" method="post" enctype="multipart/form-data">
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">级别</label>
						<div class="col-sm-10">
							<input class=" form-control ipt rankipt" id="rankipt" type="text" name="rank"  size="20" readonly="readonly" />
						</div>
					</div>
					<div class="form-group" >
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>分值</label>
						<div class="col-sm-10">
							<input class=" form-control ipt" type="text" name="score" value="" size="20" id="totalscore"/><span style="color:red" id="warnspan"></span>
						</div>
					</div>
					
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">院系</label>
						<div class="col-sm-10">
							<input class="form-control ipt collegeipt" id="collegeipt" type="text" name="college" value="" size="20" readonly="readonly"/>
						</div>
					</div>
					
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>第一作者</label>
						<div class="col-sm-10">
							<input class="form-control ipt" type="text" name="author1" value="" size="20" id="author1"/><span style="color:red" id="warnspan1"></span>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">第二作者</label>
						<div class="col-sm-10">
							<input class="form-control ipt" type="text" name="author2" value="" size="20" id="author2"/><span style="color:red" id="warnspan1"></span>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">第三作者</label>
						<div class="col-sm-10">
							<input class="form-control ipt" type="text" name="author3" value="" size="20" id="author3"/><span style="color:red" id="warnspan1"></span>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">第四作者</label>
						<div class="col-sm-10">
							<input class="form-control ipt" type="text" name="author4" value="" size="20" id="author4"/><span style="color:red" id="warnspan1"></span>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">第五作者</label>
						<div class="col-sm-10">
							<input class="form-control ipt" type="text" name="author5" value="" size="20" id="author5"/><span style="color:red" id="warnspan1"></span>
						</div>
					</div>
					<input style="display: none;" class="ipt" type="text" name="" value="" size="20" />
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">分级描述</label>
						<div class="col-sm-10">
							<textarea name="rankdesc" class="form-control" rows="4" cols="30" style="resize:none" id="ipt1">
							
							</textarea>
						</div>
					</div>
					<ol style="display: none;">
						<li style="display: none;">
							<strong>id：</strong>
							<input style="display: none;" class="ipt" type="text" name="" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="id" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="type" value="lwscore" size="20" />
						</li>
						<li>
							<input class="btn btn-primary" type="submit" name="submit" value="确定 " id="submit"/>
						</li>
					</ol>
				</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" type="button" data-dismiss="modal" id="close">关闭</button> <button class="btn btn-primary" type="button" onclick="button()" >保存</button>
				</div>
			</div>
		</div>
	</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="<%=path%>/layer/layer.js"></script>
      <script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
     <script>
    	$(function(){
    	var tableHeight = $("table").outerHeight();
    	$("#scoreFrame",parent.document).css("height",tableHeight);
    		$(".table-main thead tr").each(function(){  
        $(this).children("th").not("#fixedtd").mouseover(function () {  
            $(this).attr("title", $(this).text());  
        });  
    });  
    $(".table-main tbody tr").each(function(){  
        $(this).children("td").not("#fixedtd").mouseover(function () {  
            $(this).attr("title", $(this).text());  
        });  
    }); 
    $("#closebutton,#close").click(function(){
   $("#scoreFrame",parent.document).css("height",tableHeight);
    })
    
    	})
    	function beHigher(){
    	$("#scoreFrame",parent.document).css("height","800px");
    	}
    	
    	
    	
    	
    	
    </script>
    <script type="text/javascript">
 	$(function(){
		var len = $("table tr").length;
		var totalcount = "${totalcount}";
		if(totalcount/1>0){
			var currpage = "${currpage}";
			for(i=(currpage-1)*5+1;i<=len+(currpage-1)*5;i++){
      			$("table tr:eq("+(i-((currpage-1)*5))+") td:first").text(i);
      		}
		}
		
	}) 
		
	</script>
		<script language="javascript" type="text/javascript">
			//num判断是否为正整数
		var num = /^[0-9]*[1-9][0-9]*$/;
		//num1判断是否为自然数
		var num1 = /^\d+$/;
		$(function(){
	
		
		    	$("#submit").bind("click",function(){
				
				if(!num.test($("#totalscore").val())){
					layer.tips("分值只能为正整数!","#totalscore",{
    				tips:[2,"#FF7F24"]
    				});
    			return false;
				}
				if(!num.test($("#author1").val())||Number($("#author1").val())>Number($("#totalscore").val())){
				layer.tips("分值只能为正整数且不大于总分!","#author1",{
    				tips:[2,"#FF7F24"]
    				});
    			return false;
				}
				if(!num1.test($("#author2").val())||Number($("#author2").val())>Number($("#totalscore").val())){
				layer.tips("分值只能为正整数且不大于总分!","#author2",{
    				tips:[2,"#FF7F24"]
    				});
    			return false;
				}
				if(!num1.test($("#author3").val())||Number($("#author3").val())>Number($("#totalscore").val())){
				layer.tips("分值只能为正整数且不大于总分!","#author3",{
    				tips:[2,"#FF7F24"]
    				});
    			return false;
				}
				if(!num1.test($("#author4").val())||Number($("#author4").val())>Number($("#totalscore").val())){
				layer.tips("分值只能为正整数且不大于总分!","#author4",{
    				tips:[2,"#FF7F24"]
    				});
    			return false;
				}
				if(!num1.test($("#author5").val())||Number($("#author5").val())>Number($("#totalscore").val())){
				layer.tips("分值只能为正整数且不大于总分!","#author5",{
    				tips:[2,"#FF7F24"]
    				});
    			return false;
				}
				$("#close").click();
			});
		})
		
		function button(){
		$("#submit").click();
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
		}
		var inputnum = document.getElementById("inputnum").value;
		if(inputnum<1||inputnum>pagecount){
		//下面这行功能实现imggo的onclick点击事件失效
		layer.msg("请输入正确的跳转数值!",{
		offset:"t",
		anim:6
		});
		document.getElementById("imggo").ATTR("onclick","");
		}else{
	    createXMLHttpRequest();
	    xmlHttp.onreadystatechange = callback;
	    var url = "yglscore?currpage="+inputnum+"&zicdvalue="+encodeURI(encodeURI("${zicdvalue}"));
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
	        }
	    }
	}
		
			function del(t){
			if(confirm('你确定要删除此记录吗？')){
				var id = $(t).parent().parent().parent().next().html();
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
                 //return false;
             }
		}

		

		</script>
		<script>
		function bianji(num){
			var trcell = document.getElementById("tr"+num).cells;
			var ipt = document.getElementsByClassName("ipt");
			 document.getElementById("ipt1").value=trcell[9].innerText;
				for(i=0,j=1;i<ipt.length;i++,j++){
					
					ipt[i].value=trcell[j].innerText;
				}
		}
		
		</script>
</body>

</html>