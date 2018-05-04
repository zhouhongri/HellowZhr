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
    
    <title>分数设定</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="<%=path%>/plug/boot/jquery.min.js"></script>
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="<%=path%>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=path%>/layer/layer.js"></script>
	<link rel="icon" type="image/png" href="images/loginlogo.png">
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
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
				var id = $(t).parent().next().html();
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

  </head>
  
  <body>
  
 <p id="userid" style="display: none;"><%=session.getAttribute("userid") %></p>
 <table class="table table-hover">
		<thead>
			<tr class="success">
				<th style="width: 6.4%;">序号</th>
				<th style="width: 6.4%;">级别</th>
				<th style="width: 6.4%;">分值</th>
				<th style="width: 6.4%;">院系</th>
				<th style="width: 6.4%;">第一作者</th>
				<th style="width: 6.4%;">第二作者</th>
				<th style="width: 6.4%;">第三作者</th>
				<th style="width: 6.4%;">第四作者</th>
				<th style="width: 6.4%;">第五作者</th>
				<th style="width: 30%;">分级描述</th>
				<th colspan="2">操作</th>
			</tr>
		</thead>
		<tbody>
					<c:if test="${fn:length(scoreList)==0}"> 
				<tr align="center">
				<td colspan="15" style="color:red;">查询无结果</td>
				</tr>
				</c:if>
					<c:forEach items="${scoreList}" var="a">
					
					<tr id="tr${a.id}">
						<td></td>
						<td>${a.rank}</td>
						<td>${a.score}</td>
						<td>${a.college}</td>
						<td>${a.author1}</td>
						<td>${a.author2}</td>
						<td>${a.author3}</td>
						<td>${a.author4}</td>
						<td>${a.author5}</td>
						<td title="${a.rankdesc}" style="width: 6.4%;height: 7%;">${a.rankdesc}</td>
			
						<td>
							<a class="btn" id="modal-834996" role="button" href="#modal-container-834996" data-toggle="modal" onclick="bianji(${a.id});">编辑</a>
						</td>
						<td>
							<a href="javascript:;" onclick="del(this)" >删除</a>
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
	
<script type="text/javascript">
	function button(){
		$("#submit").click();
	}
</script>


  <script>
  	$('.mian_b_icon_01').click(function(){
		$('.theme-popover-mask').fadeIn(100);
		$('.theme-popover').slideDown(200);
		})
		$('.theme-poptit .close').click(function(){
			$('.theme-popover-mask').fadeOut(100);
			$('.theme-popover').slideUp(200);
		});
		
		
			
			
		
  </script>
  

 
  </body>
</html>
