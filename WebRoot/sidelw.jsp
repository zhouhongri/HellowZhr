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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人信息</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
	
		<script language="javascript" type="text/javascript">
			function click1(num) {

				if(document.getElementById(num).style.display == "block") {
					document.getElementById(num).style.display = "none";
				} else {
					document.getElementById(num).style.display = "block";

				}

			}
			function a(){
			alert(1);
			var shang = document.getElementById("shangyiye");
			var bl1 = "${currpage}";
			var intbl1 = parseInt(bl1)-1;
			//alert(intbl1+1);
			//alert("${zcdsltval}");
			var bl2 = "${zcdsltval}";
			var bl3 = "${input1}";
			var bl4 = "${input2}";
			var bl5= "${zcdval}";
			alert(bl3);
			if(${currpage}==1){
			shang.href="JavaScript:void(0);";
			}else{
				shang.href="cxjs?currpage="+intbl1+"&input1="+bl3+"&input2="+bl4+"&zcdsltval="+encodeURI(encodeURI(bl2))+"&zcdval="+bl5;
			}
			
			}
			function b(){
			var xia = document.getElementById("xiayiye");
			//alert(bl1);
			var bl1 = "${currpage}";
			var intbl1 = parseInt(bl1)+1;
			//alert(intbl1+1);
			//alert("${zcdsltval}");
			var bl2 = "${zcdsltval}";
			var bl3 = "${input1}";
			var bl4 = "${input2}";
			var bl5= "${zcdval}";
			
			if(${currpage}>=${pagecount}){
			xia.href="JavaScript:void(0);";
			//xia.href="cx?currpage="+bl1+"&zcdsltval="+encodeURI(encodeURI(bl2));
			}else{
			xia.href="cxjs?currpage="+intbl1+"&input1="+bl3+"&input2="+bl4+"&zcdsltval="+encodeURI(encodeURI(bl2))+"&zcdval="+bl5;
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

		
		</script>
		<style type="text/css">
	#gerenjixiao{
		padding-left: 0px;
	}
</style>
    
    <script src="assets/js/echarts.min.js"></script>
  </head>
  <body  style="background: #fff;">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-title">名称</th>
                                            <th class="table-type">作者排序</th>
                                            <th class="table-author am-hide-sm-only">得分</th>
                                            <th class="table-date am-hide-sm-only">发表时间</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lwlist}" var="a">
                                        <tr>
                                            <td>${a.name}</td>
                                            <td>${a.authorseq}</td>
                                            <td class="am-hide-sm-only">${a.score}</td>
                                            <td class="am-hide-sm-only">${fn:substring(a.time,0,10)}</td>
                                        	<td style="display: none;">${a.id}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li><a href="javascript:;"
									onclick="a();" id="shangyiye">上一页</a></li>
                                            <li><a href="javascript:;" 
									style="cursor: default;"><span id="savecrpge">${currpage}</span>/${pagecount}</a></li>
                                            <li><a href="javascript:;"
									onclick="b();" id="xiayiye">下一页</a></li>
                                        </ul>
                                    </div>
                                </div>
                               <hr>

                            </form>
	    <script src="assets/js/jquery.min.js"></script>
	    <script src="assets/js/amazeui.min.js"></script>
	    <script src="assets/js/iscroll.js"></script>
	    <script src="assets/js/app.js"></script>
		<script type="text/javascript">
		$(function(){
		//alert("${input1}");
		//alert("${input2}");
			parent.changeScore("${score}");
			//parent.changeTime("${input1}","${input2}");
			parent.changeButtonDisable(false);
			/* $("#sousuoinput").keyup(
        function(){
        alert("1");          
          $("tbody tr:gt(0)").hide();
          var $d = $("tbody tr:gt(0)").filter(":contains('"+$.trim($("#sousuoinput").val())+"')");
          $d.show();
        
        });
        
      var len = $("table tr").length;
      for(i=2;i<len-1;i++){
      	$("table tr:eq("+i+") td:first").text(i-1);
      }
      
       $("#sel1").change(
      	function(){
      	var a = $("#sel1").val();
      	if(a=="全部"){
      		$("tbody tr:gt(0)").show();
      	}else{
      		$("tbody tr:gt(0)").hide();	
      		var $d = $("tbody tr:gt(0)").filter(":contains('"+$.trim($("#sel1").val())+"')");
      		$d.show();
      		$("table tr:last").show();
      	} */
		});
  	</script>
  </body>
</html>
