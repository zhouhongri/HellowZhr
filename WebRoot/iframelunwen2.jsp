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
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="<%=path%>/plug/boot/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
	<link rel="icon" type="image/png" href="images/loginlogo.png">
	<script src="<%=path%>/layer/layer.js"></script>
	<style type="text/css">
	.table{
	margin-bottom:0px;
	}
	.tiaoa .tiaoli{
	padding:0px;
	}
	</style>
	
   <script>
   
   $(function(){
  
			
			//上传文件
		$('input[id=lefile]').change(function() {
				var len = document.getElementById("lefile").files;
				if(len.length>1){
					$('#photoCover').val(len.length+"个文件");
				}else{
				$('#photoCover').val($(this).val());}
			});

		$("#sb").bind("click",function(){
    	if(!$("#lwbt").val()||$.trim($("#lwbt").val())==""){
    	layer.tips("请填写论文题目!","#lwbt",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	if(!$("#kwmc").val()||$.trim($("#kwmc").val())==""){
		layer.tips("请填写刊物!","#kwmc",{
    	tips:[2,"#FF7F24"]
    	});
    	return false;
    	}
    	
    	if(!$("#time").val()||$.trim($("#time").val())==""){
    	layer.tips("请选择时间!","#time",{
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
    });
    
    var len = $("table tr").length;
    	var List = "${lwList}";
    	//alert(len);
    if(List.length>2){
    	var pagecount = "${currpage}";
    	 for(i=(pagecount-1)*10+1;i<len+(pagecount-1)*10;i++){
      	$("table tr:eq("+(i-((pagecount-1)*10))+") td:first").text(i);
      }
    }
	
	})
	

   
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
	
		function test(userid){
		var rank = document.getElementById("rank_select").value;
		var authorseq = document.getElementById("seq_select").value;
		if(rank=="-1"){}else{
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = callback2;
		var url="querylw?rank="+encodeURI(encodeURI(rank))+"&authorseq="+authorseq+"&userid="+userid+"&index=1";
		xmlHttp.open("POST", url, true);
		xmlHttp.send(null)}
	}

		function callback2() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var message = xmlHttp.responseText;
				var array = message.split(",");
				document.getElementById("df").value=array[0];
				document.getElementById("df2").value=array[1];
			
			} else {
				//alert(xmlHttp.status);
			}
		}
	}
  </script>  

	  	<script type="text/javascript">
			//num判断是否为正整数
		var num = /^[0-9]*[1-9][0-9]*$/;
			window.onload=function(){
			};

			function init(){  
   			//leftTree是左边Frame的id  
    		//重新加载这个页面  
   			 window.parent.frames[ "mainFrame"].location.reload();  
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
	
	

	function tiaozhuan(pagecount) {
		if(!num.test($("#inputnum").val())){
		layer.msg("请输入正确的跳转数值!",{
		offset:"t",
		anim:6
		});
		return false;
		}
		var inputnum = document.getElementById("inputnum").value;
		var inputvalue = parent.document.getElementById("sousuoinput").value;
		var statusvalue = parent.document.getElementById("status_select").value;
		var yearvalue = parent.document.getElementById("sel1").value;
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
	    var url = "querylw?&currpage="+inputnum+"&year="+yearvalue+"&status="+ statusvalue+"&inputvalue=" + inputvalue;
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
		

		
		

  </head>
  <body>

  	<p id="userid" style="display: none;"><%=session.getAttribute("userid") %></p>
  	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>序号</th>
				<th >论文标题</th>
				<th>刊物名称</th>
				<th>发表时间</th>
				<th>eICode</th>
				<th>sCICode</th>
				<th>iSTPCode</th>
				<th>作者</th>
				<th>作者排序</th>
				<th>链接</th>
				<th>院级得分</th>
				<th>校级得分</th>
				<th>等级</th>
				<th>院审核状态</th>
				<th>校审核状态</th>
				<th colspan="2">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:if test="${fn:length(lwList)==0}"> 
				<tr align="center">
				<td colspan="15" style="color:red;">查询无结果</td>
				</tr>
				</c:if>
			<c:forEach items="${lwList}" var="a">
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
					<td>${a.score2}</td>
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
					<td><c:if test="${a.status2 == '1'}">
								<b style="color: green">审核通过</b>
							</c:if>
							<c:if test="${a.status2 == '0'}">
								<b style="color: gray">未审核</b>
							</c:if>
							<c:if test="${a.status2 == '2'}">
								<b style="color: red">审核未通过</b>
							</c:if>
					</td>
						
					<td >
						<a class="btn" id="modal-834996" role="button" href="#modal-container-834996" data-toggle="modal" onclick="bianji(${a.id});">编辑</a>
					</td>
						
					<td>
						<a href="javascript:;" onclick="del(this)" style="color: red">删除</a>	
					</td>
					<td style="display: none;" id="testid">${a.id}</td>
				</tr>
			</c:forEach>
		</tbody>
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
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>论文标题</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="name" id="lwbt"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>刊物名称</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="kanwu" id="kwmc"/>
						</div>
					</div>
					<div class="form-group" >
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>发表时间</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="date" name="time" id="time"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">eICode</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="eicode"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">sCICode</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="scicode"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">iSTPCode</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="istpcode"/>
						</div>
					</div>
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">作者</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="author" readonly="readonly" value="${username}"/>
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
					<div class="form-group">
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
							<input  class="ipt" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="" value="" size="20" />
							<input  class="ipt" type="text" name="id" value="" size="20" id="bjid"/>
							<input  class="ipt" type="text" name="type" value="lunwen" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="currpage" value="1" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="flag" value="-1" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="index" value="2" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="year" value="${year}" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="status" value="${status}" size="20" />
						</li>
						<li style="display: none;">
							<input class="ipt" type="text" name="inputvalue" value="${inputvalue}" size="20" />
						</li>
						<li>
							<input class="btn btn-primary" type="submit" name="submit" value=" 确定 " id="sb"/>
						</li>
					</ol>
				</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" id="close" type="button" data-dismiss="modal">关闭</button> <button class="btn btn-primary" type="button"  onclick="button()">保存</button>
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
