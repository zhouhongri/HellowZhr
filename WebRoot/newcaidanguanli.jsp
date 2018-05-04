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
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrapmodel.css">
    <link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
    <style type="text/css">
    .tpl-alert {
    padding: 0px;
     margin-bottom: 0px; 
     border: 0px solid transparent; 
     border-radius: 0px; 
}
    </style>
     <script src="assets/js/jquery.min.js"></script>
     <script src="<%=path%>/layer/layer.js"></script>
<script>
	function getlist0(){
				
				$.ajax({
					type:"post",
					url:"GetMenuServlet",
					async:true,
					data:{
						type:"0",
					},
					dataType:"json",
					success:function(list){
						//alert(1);
						var jsonlist= eval(list); 
						for(s in jsonlist){
							//alert(jsonlist[s]);
							$("#"+jsonlist[s]).html("<b style='color:red;'>已拥有<b>");
							$("#"+jsonlist[s]).next().children(":first").addClass("disabled");
							$("#"+jsonlist[s]).next().children("").eq(1).removeClass("disabled");
						}
					}
				});
			}
			
			function getlist1(){
				
				$.ajax({
					type:"post",
					url:"GetMenuServlet",
					async:true,
					data:{
						type:"1",
					},
					dataType:"json",
					success:function(list){
						//alert(1);
						var jsonlist= eval(list); 
						for(s in jsonlist){
							//alert(jsonlist[s]);
							$("#"+jsonlist[s]).html("<b style='color:red;'>已拥有<b>");
							$("#"+jsonlist[s]).next().children(":first").addClass("disabled");
							$("#"+jsonlist[s]).next().children("").eq(1).removeClass("disabled");
						}
					}
				});
			}
			
			function add(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu0Servlet",
					async:true,
					data:{
						type:"add",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}
			
			function add1(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu1Servlet",
					async:true,
					data:{
						type:"add",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}
			
			function del(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu0Servlet",
					async:true,
					data:{
						type:"del",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}
			
			function del1(t){
				var id = $(t).parent().prev().attr("id");
				$(t).addClass("disabled");
				//alert(id);
				$.ajax({
					type:"post",
					url:"Menu1Servlet",
					async:true,
					data:{
						type:"del",
						menuid:id,
					},
					dataType:"json",
					success:function(data){
						
					}
				});
			}

		</script>
</head>

<body data-type="index" onload="getlist0();getlist1();">

            <div class="tpl-content-page-title">
                        精于算绩
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">菜单管理</a></li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        	菜单管理
                    </div>
                </div>
                
                <div class="tpl-block">
                    <div class="am-g">
                       <div class="am-tabs" data-am-tabs="{noSwipe: 1}" id="doc-tab-demo-1">
  <ul class="am-tabs-nav am-nav am-nav-tabs">
    <li class="am-active"><a href="javascript: void(0)">科研管理</a></li>
    <li><a href="javascript: void(0)">教学管理</a></li>
  </ul>

  <div class="am-tabs-bd">
    <div class="am-tab-panel am-active">
      <table class="am-table am-table-striped am-table-hover">
          <thead>
             <tr>
               <th class="table-title">二级菜单名</th>
               <th class="table-type">状态</th>
               <th class="table-set" style="width: 24%;">操作</th>
            </tr>
       </thead>
      <tbody>
          <tr >
						<td>
							论文管理
						</td>
						<td id="00">
							未拥有
						</td>
						<td>
							 <button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							 <button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							专利管理
						</td>
						<td id="01">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							学术著作管理
						</td>
						<td id="02">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							学科管理
						</td>
						<td id="03">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							科研奖励管理
						</td>
						<td id="04">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>
					<tr >
						<td>
							科研项目管理
						</td>
						<td id="05">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del(this)">删除此功能</button>
						</td>
					</tr>                              
                                        
                                        
	</tbody>
 </table>
    </div>
    <div class="am-tab-panel">
     <table class="am-table am-table-striped am-table-hover">
          <thead>
             <tr>
               <th class="table-title">二级菜单名</th>
               <th class="table-type">状态</th>
               <th class="table-set" style="width: 24%;">操作</th>
            </tr>
       </thead>
      <tbody>
      <tr >
						<td>
							专业管理
						</td>
						<td id="10">
							未拥有
						</td>
						<td>
							 <button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							 <button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							名师管理
						</td>
						<td id="11">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							课程建设管理
						</td>
						<td id="12">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr  >
						
						<td>
							教学研究项目管理
						</td>
						<td id="13">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">添加此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					<tr >
						<td>
							实验室建设管理
						</td>
						<td id="15">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
					
					<tr >
						<td>
							教材著作管理
						</td>
						<td id="18">
							未拥有
						</td>
						<td>
							<button type="button" class="btn btn-success btn-default" style="font-family: Georgia, serif;" onclick="add1(this)">请求此功能</button>
							<button type="button" class="btn btn-success btn-default disabled" style="font-family: Georgia, serif;" onclick="del1(this)">删除此功能</button>
						</td>
					</tr>
      </tbody>
    </div>
  </div>
</div>
                        
                        
                        
                        
                        
                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>

    <!-- ↓ -->

    <script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
    
</body>

</html>