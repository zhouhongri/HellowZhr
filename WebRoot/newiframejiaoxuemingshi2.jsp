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
                                            <th class="table-title">教师</th>
                                            <th class="table-type am-hide-sm-only">获奖时间</th>
                                            <th class="table-author am-hide-sm-only">教师排序</th>
                                            <th class="table-type am-hide-sm-only">链接</th>
                                            <th class="table-type am-hide-sm-only">院级得分</th>
                                            <th class="table-type am-hide-sm-only">校级得分</th>
                                            <th class="table-type">等级</th>
                                            <th class="table-type am-hide-sm-only">院审核状态</th>
                                            <th class="table-type am-hide-sm-only">校审核状态</th>
                                            <th class="table-set" style="width: 24%;">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:if test="${fn:length(jxmsList)==0}"> 
										<tr align="center">
											<td colspan="16" style="color:red;">查询无结果</td>
										</tr>
										</c:if>
										<c:forEach items="${jxmsList}" var="a">
                                        <tr id="tr${a.id}">
                                            <td></td>
                                            <td>${a.author}</td>
                                            <td class="am-hide-sm-only">${fn:substring(a.time,0,10)}</td>
                                            <td class="am-hide-sm-only">${a.authorseq}</td>
                                            <td class="am-hide-sm-only"><a target="_blank" href=${a.url}>${a.url}</a></td>
                                            <td class="am-hide-sm-only">${a.score}</td>
                                            <td class="am-hide-sm-only">${a.score2}</td>
                                            <td>${a.rank}</td>
                                            <td><c:if test="${a.status == '1'}">
												<span class="label label-success">审核通过</span>
												</c:if>
												<c:if test="${a.status == '0'}">
												<span class="label label-default">未审核</span>
												</c:if>
												<c:if test="${a.status == '2'}">
												<span class="label label-danger">审核未通过</span>
												</c:if>
											</td>
                                            
                                           <td><c:if test="${a.status2 == '1'}">
												<span class="label label-success">审核通过</span>
											</c:if>
											<c:if test="${a.status2 == '0'}">
												<span class="label label-default">未审核</span>
											</c:if>
											<c:if test="${a.status2 == '2'}">
												<span class="label label-danger">审核未通过</span>
											</c:if>
											</td>
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
					<button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
					<h4 class="modal-title" id="myModalLabel">编辑</h4>
				</div>
				<div class="modal-body">
					<form  class="form-horizontal" role="form"  name="loginform" action="Bianji" method="post" enctype="multipart/form-data">
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">教师</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="text" name="author" readonly="readonly" value="${username}"/>
						</div>
					</div>
					<div class="form-group" >
					 	<label class="col-sm-2 control-label" for="inputEmail3"><span style="color:red; font-size:20px;">*</span>获奖时间</label>
						<div class="col-sm-10">
							<input class="form-control ipt"  type="date" name="time" id="year"/>
						</div>
					</div>
					
					
					<div class="form-group">
					 	<label class="col-sm-2 control-label" for="inputEmail3">教师排序</label>
						<div class="col-sm-10">
							<select name="authorseq"  id="seq_select" class="ipt  form-control" onchange="test(${userid});">
								<option value="1">1</option>
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
						<li style="display: none;">
							<strong>id：</strong>
							<input style="display: none;" class="ipt" type="text" name="" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="id" value="" size="20" />
							<input style="display: none;" class="ipt" type="text" name="type" value="jiaoxuemingshi" size="20" />
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
					<button class="btn btn-default" type="button" data-dismiss="modal">关闭</button> <button class="btn btn-primary" type="button"  onclick="button()" >保存</button>
				</div>
			</div>
		</div>
	</div>

    <script src="assets/js/jquery.min.js"></script>
      <script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
    <script type="text/javascript">
    $(function(){
	    var total = "${totalcount}";
	    if(total!=0){
	    	parent.document.getElementById("mainFrame").height=parseInt(parent.document.getElementById("mainFrame").height)-90+(total*57);
    	parent.parent.document.getElementById("mainFrame").height=parseInt(parent.parent.document.getElementById("mainFrame").height)+(total*57);
	    };
    });
    </script>
     <script>
    	$(function(){
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
    $("#closebutton").click(function(){
   $("#mainFrame",parent.document).css("height","auto");
    })
    
    	})
    	function beHigher(){
    	$("#mainFrame",parent.document).css("height","1500px");
    	}
    	
    </script>
    <script language="javascript" type="text/javascript">
		
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
    	if(!$("#year").val()||$.trim($("#year").val())==""){
    	layer.tips("请选择获奖时间!","#year",{
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
    	$("#close").click();
    });
    
    var len = $("table tr").length;
    	var List = "${jxmsList}";
    	 
    if(List.length>2){
    	var pagecount = "${currpage}";
    	
    	 for(i=(pagecount-1)*10+1;i<=len+(pagecount-1)*10;i++){
      	$("table tr:eq("+(i-((pagecount-1)*10))+") td:first").text(i);
      }
    }
   
   })
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
		return false;
		document.getElementById("imggo").ATTR("onclick","");
		}else{
	    createXMLHttpRequest();
	    xmlHttp.onreadystatechange = callback;
	    var url = "queryjxms?currpage="+inputnum+"&year="+yearvalue+"&status="+ statusvalue+"&inputvalue=" + inputvalue;
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
		var url="queryjxms?rank="+encodeURI(encodeURI(rank))+"&authorseq="+authorseq+"&userid="+userid+"&index=1";
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
                 		"type":"jiaoxuemingshi"
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
		
		function button(){
		$("#sb").click();
	}
		
		</script>
</body>

</html>