<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0051)http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282 -->
<html class=" bit-html js_active  vc_desktop  vc_transform  vc_transform  csstransforms csstransforms3d csstransitions iphorm-js js no-touch cssanimations csstransforms csstransforms3d csstransitions cssfilters mobile-false no-touch" dir="ltr" lang="zh-CN"
	style="">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- for 360 -->
		<meta name="renderer" content="webkit">
		<meta name="applicable-device" content="pc,mobile">
		<!-- for baidu -->
		<meta http-equiv="Cache-Control" content="no-transform">
		<!-- for baidu -->
		<meta name="MobileOptimized" content="width">
		<!-- for baidu -->
		<meta name="HandheldFriendly" content="true">
		<!-- for baidu -->

		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>精于算绩登录</title>
		<link rel="profile" href="http://gmpg.org/xfn/11">
		<link rel="pingback" href="http://57e8ecf41155d.t73.qifeiye.com/xmlrpc.php">
		<link rel="stylesheet" href="./loginfiles/respond.css" type="text/css" media="screen">
		<style type="text/css" id="static-stylesheet"></style>
		<link rel="stylesheet" href="./loginfiles/3fd8903d40c7ca4d543fb110f0a63e09.css" type="text/css" media="all">
		<link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
		<!-- Cache! -->
		<link rel="stylesheet" id="dt-main-css" href="./loginfiles/main.css" type="text/css" media="all">
		<link rel="stylesheet" id="dt-custom-less-css" href="./loginfiles/custom-7deeeba33b.css" type="text/css" media="all">
		<link rel="stylesheet" id="dt-bit-custom-less-css" href="./loginfiles/bit-custom-7deeeba33b.css" type="text/css" media="all">
		<link rel="stylesheet" id="qfy_dynamic_css-css" href="./loginfiles/qfy-custom-style.css" type="text/css" media="all">
		<link rel="stylesheet" href="./loginfiles/29d16d3b137ddaaefadf30cdc6b21024.css" type="text/css" media="all">
		<style>
		#newshouyelogo{
width: 300px !important;
height: 280px !important;
max-height:350px !important;
margin-top:-65px;
}
#zhucedenglu{
margin-top:-100px !important;
}
		</style>
		<!-- Cache! -->
		<script src="./loginfiles/hm.js"></script>
		<script src="./loginfiles/hm(1).js"></script>
		<script src="<%=path%>/layer/layer.js"></script>
		<script type="text/javascript">
		
		function chrome(){
    		var explorer = window.navigator.userAgent;
    		if(explorer.indexOf("Chrome")>=0){
    			return "chrome";
    		}else if(explorer.indexOf("Firefox")>=0){
    			return "firefox";
    		}else{
    			return "ie";
    		}
    	}
			/* <![CDATA[ */
			/* thickbox */
			var thickboxL10n = {
				"next": "\u4e0b\u4e00\u5f20 >",
				"prev": "< \u4e0a\u4e00\u5f20",
				"image": "\u56fe\u7247",
				"of": "\/",
				"close": "\u5173\u95ed",
				"noiframes": "\u8fd9\u4e2a\u529f\u80fd\u9700\u8981iframe\u7684\u652f\u6301\u3002\u60a8\u53ef\u80fd\u7981\u6b62\u4e86iframe\u7684\u663e\u793a\uff0c\u6216\u60a8\u7684\u6d4f\u89c8\u5668\u4e0d\u652f\u6301\u6b64\u529f\u80fd\u3002",
				"loadingAnimation": "\/\/fast.qifeiye.com\/FeiEditor\/bitSite\/images\/preloader.gif"
			};
			/* iphorm-plugin */
			var iphormL10n = {
				"error_submitting_form": "\u5728\u63d0\u4ea4\u8868\u5355\u65f6\u6709\u9519\u8bef",
				"swfupload_flash_url": "http:\/\/57e8ecf41155d.t73.qifeiye.com\/qfy-includes\/js\/swfupload\/swfupload.swf",
				"swfupload_upload_url": "http:\/\/57e8ecf41155d.t73.qifeiye.com\/?iphorm_swfupload=1",
				"swfupload_too_many": "\u961f\u5217\u4e2d\u7684\u6587\u4ef6\u592a\u591a\u4e86",
				"swfupload_file_too_big": "\u6587\u4ef6\u592a\u5927\u4e86",
				"swfupload_file_empty": "\u4e0d\u80fd\u4e0a\u4f20\u7a7a\u6587\u4ef6",
				"swfupload_file_type_not_allowed": "\u8be5\u6587\u4ef6\u7684\u7c7b\u578b\u662f\u4e0d\u5141\u8bb8\u4e0a\u4f20\u7684",
				"swfupload_unknown_queue_error": "\u672a\u77e5\u961f\u5217\u9519\u8bef\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5",
				"swfupload_upload_error": "\u4e0a\u4f20\u9519\u8bef",
				"swfupload_upload_failed": "\u4e0a\u4f20\u5931\u8d25",
				"swfupload_server_io": "\u670d\u52a1\u5668IO\u9519\u8bef",
				"swfupload_security_error": "\u5b89\u5168\u9519\u8bef",
				"swfupload_limit_exceeded": "\u4e0a\u4f20\u8d85\u8fc7\u9650\u5236",
				"swfupload_validation_failed": "\u9a8c\u8bc1\u5931\u8d25",
				"swfupload_upload_stopped": "\u4e0a\u4f20\u88ab\u7ec8\u6b62",
				"swfupload_unknown_upload_error": "\u6587\u4ef6\u4e0a\u4f20\u88ab\u610f\u5916\u7ec8\u6b62",
				"plugin_url": "http:\/\/57e8ecf41155d.t73.qifeiye.com\/qfy-content\/plugins\/qfy_form",
				"preview_no_submit": "\u5728\u9884\u89c8\u6a21\u5f0f\u4e0b\u4e0d\u80fd\u63d0\u4ea4\u8868\u5355"
			};
			/* dt-plugins */
			var dtLocal = {
				"passText": "\u67e5\u770b\u8fd9\u4e2a\u52a0\u5bc6\u8d44\u8baf\uff0c\u8bf7\u5728\u4e0b\u9762\u8f93\u5165\u5bc6\u7801\uff1a",
				"moreButtonAllLoadedText": "\u5168\u90e8\u5df2\u52a0\u8f7d",
				"postID": "15282",
				"ajaxurl": "http:\/\/57e8ecf41155d.t73.qifeiye.com\/admin\/admin-ajax.php",
				"contactNonce": "ddcbbf352d",
				"ajaxNonce": "e105dd0048",
				"pageData": {
					"type": "page",
					"template": "page",
					"layout": null
				},
				"themeSettings": {
					"smoothScroll": "on"
				}
			};
			/* ]]> */
			
				function Login(){
		if(chrome()=="ie"){
			layer.msg('暂不支持ie内核浏览器,请更换至chrome内核的浏览器使用');
		}else if(chrome()=="firefox"||chrome()=="chrome"){
			if(chrome()=="firefox"){
				//信息框-例2
				layer.msg('使用fireFox可能导致部分功能无法正常显示,确定登录？', {
  				time: 0 //不自动关闭
  				,btn: ['确定', '取消']
  				,yes: function(index){
   				layer.close(index);
   				var username = $("#username").val();
		var pwd = $("#userpwd").val();
		var school = $("#school").val();
		if(!school||$.trim(school)==""){
			layer.tips("<span style='color:red'>学校编码不能为空!</span>","#school",{
    		tips:[2,"#FFF"]
    		});
		return false;
		}
		if(!username||$.trim(username)==""){
			layer.tips("<span style='color:red'>账号不能为空!</span>","#username",{
    		tips:[2,"#FFF"]
    		});
		return false;
		}
		if(!pwd||$.trim(pwd)==""){
			layer.tips("<span style='color:red'>密码不能为空!</span>","#userpwd",{
    		tips:[2,"#FFF"]
    		});
		return false;
		}
		$.ajax({
			type:"post",
			url:"LoginServlet",
			async:true,
			data:{
				username:username,
				pwd:pwd,
				school:school
			},
			success:function(data){
				if(data=="0"){
				 $("form").fadeOut(500);
	 			 $(".wrap").addClass('form-success');
				setTimeout(function(){
					window.location.href='grxx?flag=grjs';
					//教师登陆
				}, 1000);
					
				}else if(data=="1"||data=="-0"||data=="-1"){
				 $("form").fadeOut(500);
	 			 $(".wrap").addClass('form-success');
				setTimeout(function(){
				window.location.href='newyuan_index.jsp';
				},1000);
				}else if(data=="2"){
				 $("form").fadeOut(500);
	 			 $(".wrap").addClass('form-success');
				setTimeout(function(){
				window.location.href='newxiao_index.jsp';
				},1000);
				}else{
					layer.msg("账号或密码错误!!!",function(){});
					return false;
				}
			}
		});
  				}
				});
			}else{
				var username = $("#username").val();
		var pwd = $("#userpwd").val();
		var school = $("#school").val();
		if(!school||$.trim(school)==""){
			layer.tips("<span style='color:red'>学校编码不能为空!</span>","#school",{
    		tips:[2,"#FFF"]
    		});
		return false;
		}
		if(!username||$.trim(username)==""){
			layer.tips("<span style='color:red'>账号不能为空!</span>","#username",{
    		tips:[2,"#FFF"]
    		});
		return false;
		}
		if(!pwd||$.trim(pwd)==""){
			layer.tips("<span style='color:red'>密码不能为空!</span>","#userpwd",{
    		tips:[2,"#FFF"]
    		});
		return false;
		}
		$.ajax({
			type:"post",
			url:"LoginServlet",
			async:true,
			data:{
				username:username,
				pwd:pwd,
				school:school
			},
			success:function(data){
				if(data=="0"){
				 $("form").fadeOut(500);
	 			 $(".wrap").addClass('form-success');
				setTimeout(function(){
					window.location.href='grxx?flag=grjs';
					//教师登陆
				}, 1000);
					
				}else if(data=="1"||data=="-0"||data=="-1"){
				 $("form").fadeOut(500);
	 			 $(".wrap").addClass('form-success');
				setTimeout(function(){
				window.location.href='newyuan_index.jsp';
				},1000);
				}else if(data=="2"){
				 $("form").fadeOut(500);
	 			 $(".wrap").addClass('form-success');
				setTimeout(function(){
				window.location.href='newxiao_index.jsp';
				},1000);
				}else{
					layer.msg("账号或密码错误!!!",function(){});
					return false;
				}
			}
		});
			}
		
		}
		
	}
	
	function keyLogin(e){
  			var theEvent = window.event || e;
     	 	var code = theEvent.keyCode || theEvent.which;
     	 	
   			if (code==13) {  //回车键的键值为13
  				Login();  //调用
   			}
  		}
  		
		</script>
		<script type="text/javascript" src="./loginfiles/75de9791a479e56c42678234003e3078.js">
			/*Cache!*/
		</script>
		<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://57e8ecf41155d.t73.qifeiye.com/xmlrpc.php?rsd">
		<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://57e8ecf41155d.t73.qifeiye.com/qfy-includes/wlwmanifest.xml">

		<link rel="canonical" href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282">
		<link rel="shortlink" href="http://57e8ecf41155d.t73.qifeiye.com/?p=15282">
		<style class="style_0">
			.bitRightSider .widget-title,
			.bitLeftSider .widget-title {
				padding: 0 0 0 10px;
				height: 28px;
				line-height: 28px;
				background-color: #024886;
				margin: 0px;
				font-family: ;
				font-size: px;
				font-weight: normal;
				font-style: normal;
				text-decoration: none;
				color: #fff;
				border-top: 0;
				border-left: 0;
				border-right: 0;
				border-bottom: 0;
				background-image: url(//fast.qifeiye.com/qfy-content/plugins//bit-plugin/assets/frame/header_bg/1/bg.png);
				background-repeat: repeat;
				-webkit-border-top-left-radius: 0;
				-webkit-border-top-right-radius: 0;
				-moz-border-radius-topleft: 0;
				-moz-border-radius-topright: 0;
				border-top-left-radius: 0;
				border-top-right-radius: 0;
			}
			
			.bitRightSider .bitWidgetFrame,
			.bitLeftSider .bitWidgetFrame {
				border-top: 0;
				border-bottom: 1px solid #bababa;
				border-left: 1px solid #bababa;
				border-right: 1px solid #bababa;
				padding: 4px 10px 4px 10px;
				-webkit-border-bottom-left-radius: 0;
				-webkit-border-bottom-right-radius: 0;
				-moz-border-radius-bottomleft: 0;
				-moz-border-radius-bottomright: 0;
				border-bottom-left-radius: 0;
				border-bottom-right-radius: 0;
			}
			
			.bitRightSider .site_tooler,
			.bitLeftSider .site_tooler {
				-webkit-box-shadow: none;
				box-shadow: none;
			}
			
			.bitRightLeftSiderWidget.site_tooler .bitWidgetFrame,
			.bitRightLeftSiderWidget.site_tooler .bitWidgetFrame {
				background-color: transparent;
				background-image: none;
				-webkit-border-bottom-left-radius: 0px;
				border-bottom-left-radius: 0px;
				-webkit-border-bottom-right-radius: 0px;
				border-bottom-right-radius: 0px;
			}
			
			#page {
				z-index: 999
			}
			
			#page .blue {
				color: #29cee9
			}
			
			#page .red {
				color: #f22
			}
			
			.ovf-hidden {
				overflow: hidden;
				height: 100%
			}
			
			.ajax-loading {
				z-index: 2147483647;
				background-color: #000;
				position: fixed;
				width: 100%;
				height: 100%;
				top: 0;
				text-align: center;
				display: none;
				opacity: .6;
				filter: alpha(opacity=60)
			}
			
			.ajax-loading div {
				margin-top: 23%
			}
			
			.ajax-loading img {
				width: 50px;
				height: 50px
			}
			
			ul,
			li,
			p,
			em {
				list-style-type: none;
				-webkit-padding-start: 0;
				-webkit-margin-before: 0;
				-webkit-margin-after: 0;
				-webkit-margin-start: 0;
				-webkit-margin-end: 0;
				margin: 0;
				padding: 0
			}
			
			div[id^="yht"] *,
			div[class^="yht"] * {
				box-sizing: border-box;
				margin: 0;
				padding: 0;
				text-decoration: inherit
			}
			
			.yht-red {
				color: #FC4E4E
			}
			
			.yht-panel-right {
				position: fixed;
				right: 0;
				bottom: 300px;
				z-index: 2147483647
			}
			
			.yht-panel-right .yht-hide {
				display: none
			}
			
			.yht-panel-right a {
				position: relative;
				display: inline-block
			}
			
			.yht-panel-right a .close {
				position: absolute;
				right: 0;
				top: -5px;
				width: 11px;
				height: 11px;
				display: inline-block;
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAALCAYAAACprHcmAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6Njk5QUNFNjhGM0U3MTFFNkIyQjVGRDJDQzY2OENDRjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Njk5QUNFNjlGM0U3MTFFNkIyQjVGRDJDQzY2OENDRjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo2OTlBQ0U2NkYzRTcxMUU2QjJCNUZEMkNDNjY4Q0NGOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo2OTlBQ0U2N0YzRTcxMUU2QjJCNUZEMkNDNjY4Q0NGOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pv16ibIAAAEkSURBVHjaVJC/L0NRFMe/97E+NjpIvIGxTYxIMVKNRKT8DxYjEoPRyNJEhMGmwdh2E/EfWCyGiqXmtxE5Pve+1746ud9zz4/vPefc46y2pCCmWdSRnKvhlUAftMEZuQ85ydnGItqtE2yBWKNihnIpxF2MbgQxwbgjEReE0MkX8UZMzBdKItQxmAiEm0ep1sjIdYpdtfIHoePh2OncTBNjMgR/fqX9A2rMS9s8ur2W3t98C3+mxiFND2ds30uVBam6Jj0/SZ2HbKysesmP8TUk1/ek5RXpBWJ1VdpsDIhe+p7cGX7Kt26es6wT7gtpa6f4LNtw7DnBeWWmuEjYaEUvKaFKhOrle0xD+B9nQDTy1ovyZBeUwSX4BN/hNnyzcp7XnwADAO0gVGJsn/VTAAAAAElFTkSuQmCC) no-repeat
			}
			
			.yht-panel-right a .tips {
				position: absolute;
				right: 14px;
				bottom: 22px;
				width: 10px;
				height: 10px;
				display: inline-block;
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjlBMTlCNzlGMjhGMTFFNkFGNzJDMUU5QzcyNTM2NzkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjlBMTlCN0FGMjhGMTFFNkFGNzJDMUU5QzcyNTM2NzkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCOUExOUI3N0YyOEYxMUU2QUY3MkMxRTlDNzI1MzY3OSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCOUExOUI3OEYyOEYxMUU2QUY3MkMxRTlDNzI1MzY3OSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PlPVhYUAAACESURBVHjaYvz//z8DFMgDsS4Qi0L5r4H4EhA/AnEYoQpNgdiQAQGEgfgtlH0eiE8zAQk5JEUgBZlAbIWkCSQnD1KohyTIBcTHGTCBLguSm0DgMRBzYlEoysRAJGCC+o4QeA1SeBlN8DuSj2HgMq7gQQbg4GHEEuBiUP4rqG0PQRyAAAMApbkf/hNU998AAAAASUVORK5CYII=) no-repeat
			}
			
			.yht-panel-right a .tips:hover .tip {
				display: block
			}
			
			.yht-panel-right a .tip {
				display: inline-block;
				vertical-align: middle;
				margin: 5px;
				width: 60px;
				font: 12px "Microsoft YaHei", "SimHei", "Arial"!important;
				word-break: break-line;
				word-wrap: break-word;
				text-align: center;
				position: absolute;
				top: 5px;
				left: -44px;
				line-height: 16px;
				color: #29cee9;
				padding-top: 9px
			}
			
			.yht-panel-right a .tip .tip-content {
				position: relative;
				background: #fff;
				border-radius: 8px;
				border: 1px solid #29cee9
			}
			
			.yht-panel-right a .tip .tip-content:before,
			.yht-panel-right a .tip .tip-content:after,
			.yht-panel-right a .tip .tip-content .before,
			.yht-panel-right a .tip .tip-content .after {
				position: absolute;
				top: -13px;
				right: 5px;
				width: 0;
				height: 0;
				content: '';
				border-style: solid;
				border-color: transparent;
				border-bottom: 9px solid #29cee9;
				border-left-width: 9px;
				border-right-width: 10px
			}
			
			.yht-panel-right a .tip .tip-content:after,
			.yht-panel-right a .tip .tip-content .after {
				position: absolute;
				top: -12px;
				border-bottom-color: #fff
			}
			
			.yht-panel-right a .tip .tip-content {
				padding: 3px
			}
			
			.yht-panel-right a .tip {
				display: none;
				z-index: 999999
			}
			
			.yht-panel-right a>div {
				position: absolute;
				right: 20px;
				top: -35px
			}
			
			.yht-panel-as {
				position: fixed;
				bottom: 20px;
				left: 0;
				z-index: 2147483647
			}
			
			.yht-panel-as .yht-hide {
				display: none
			}
			
			.yht-small-panel-bg {
				position: relative;
				display: inline-block
			}
			
			.yht-small-panel-bg img {
				cursor: pointer
			}
			
			.yht-small-panel-bg .yht-small-panel-close {
				position: absolute;
				top: 0;
				right: 0
			}
			
			.yht-panel-at {
				position: relative;
				font-size: 14px
			}
			
			.yht-panel-at .yht-red-pack {
				position: absolute;
				top: -47px;
				left: 73px
			}
			
			.yht-panel-at .yht-panel-back {
				position: absolute;
				top: 105px;
				right: 6px
			}
			
			.yht-panel-at .yht-read-inpunt {
				position: absolute;
				top: 33px;
				right: 240px;
				font-family: "Microsoft YaHei", "SimHei", "Arial"!important;
				display: inline-block;
				width: 250px;
				text-align: center;
				color: #de8001
			}
			
			.yht-panel-at .yht-read-inpunt input {
				line-height: 30px;
				text-indent: 10px;
				font-family: "Microsoft YaHei", "SimHei", "Arial"!important
			}
			
			.yht-panel-at .yht-read-inpunt input,
			.yht-panel-at .yht-read-inpunt button {
				height: 30px;
				display: inline-block;
				border: none;
				background: #fff
			}
			
			.yht-panel-at .yht-read-inpunt .yht-mobile,
			.yht-panel-at .yht-read-inpunt button {
				width: 205px
			}
			
			.yht-panel-at .yht-read-inpunt .yht-mobile {
				margin-top: 10px
			}
			
			.yht-panel-at .yht-read-inpunt .yht-image {
				width: 205px;
				margin: 10px 0
			}
			
			.yht-panel-at .yht-read-inpunt .yht-image a {
				float: right
			}
			
			.yht-panel-at .yht-read-inpunt .yht-image-code {
				width: 104px;
				margin-left: 6px
			}
			
			.yht-panel-at .yht-read-inpunt img {
				width: 62px;
				height: 28px;
				display: inline-block
			}
			
			.yht-panel-at .yht-read-inpunt button {
				background: #de8001;
				color: #fff;
				line-height: 25px;
				font: 14px "Microsoft YaHei", "SimHei", "Arial"!important;
				text-indent: 0
			}
			
			.yht-panel-at .yht-read-inpunt button:hover {
				background: #c57101
			}
			
			.panel-qq-zone {
				position: fixed;
				right: 0;
				bottom: 20px;
				z-index: 2147483647;
				box-shadow: 3px 3px 3px #E2E2E2, 2px 2px 0 #333
			}
			
			.panel-qq-zone .yht-hide {
				display: none
			}
			
			.panel-qq-zone .close {
				position: absolute;
				right: 0;
				top: 0;
				width: 22px;
				height: 22px;
				display: inline-block;
				z-index: 1111;
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAVCAYAAABCIB6VAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NDg0RjM3MTdGRTIzMTFFNjg5MDFFNzlDOUNGMUQxMDciIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NDg0RjM3MThGRTIzMTFFNjg5MDFFNzlDOUNGMUQxMDciPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0ODRGMzcxNUZFMjMxMUU2ODkwMUU3OUM5Q0YxRDEwNyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0ODRGMzcxNkZFMjMxMUU2ODkwMUU3OUM5Q0YxRDEwNyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pk/mPTAAAAGpSURBVHjatJXNTsJAEMenFctHKSAQpCj4kagvwAt4N/gsepWjnHkY7voCvoAXD0SjQBERCy2U1tlt0U0ptJI6yTY7s9lfpzv/nXLK4wOg3eK4gXCsgaPOIfgCJy0I12o8Pq4hfLsi4CobSe2fQjwrBybEMgVIl8/c4SoBS2zE0MeQyJcgls77QgVpB8RCGYyp5l6SIu7IuPcM5kwHcfcALPT1obISKsnHMFZeYPL+trQe8dqkffSAUJMI5zjO9hmLSllIykcroSvBFD5EGELFQgVfYqGvBIauBduZd5Fp0sxNYwamOQ8E9QWDc8amMYXU3gn1R69PMB0NfAvLB5GUNZ8zcyOQDH0zXpwpyRTPgupc7bTtGmwKZgu1+Hy120YpVn4L/FdwNIXQ4nKhbClaVOdApdgNDqaZEihelsmg4yFFIj2OZk5U43WJlsDxnAyJXAlUhGoeUFbnVIrFQ9gSYjQJN3jE9gtBTNMs10F/pPjZB35bACGZcS99kX58h5PzkNvmPdFx8x/6cZN3/h6NEKGE1VrcvDqOS/IJRKobwFRnb81hwbcAAwDKH7n8m4BodQAAAABJRU5ErkJggg==) no-repeat
			}
			
			.panel-qq-zone a {
				position: relative;
				display: inline-block
			}
			
			.panel-qq-zone a .go {
				position: absolute;
				right: 40px;
				bottom: 16px;
				font: 20px "Microsoft YaHei", "SimHei", "Arial"!important;
				width: 164px;
				height: 40px;
				-webkit-user-select: none;
				-moz-user-select: none;
				user-select: none;
				line-height: 40px;
				text-align: center;
				background: #ec4241;
				border-radius: 5px;
				cursor: pointer;
				border: none;
				color: #fff
			}
			
			.panel-qq-zone a .go:hover {
				background-color: #ea2b2a
			}
			
			.panel-qq-zone a .go:active {
				background-color: #ea2b2a;
				outline: thin dotted;
				outline-offset: -2px
			}
			
			body .jd-hide {
				display: none
			}
			
			.jd-detail-left-recommend {
				font: 13px "Microsoft YaHei", "SimHei", "Arial"!important;
				color: #333;
				position: fixed;
				top: 150px;
				right: 0;
				background-color: #fff;
				z-index: 2147483647;
				-webkit-box-shadow: 0 0 10px rgba(0, 204, 204, .5);
				-ms-box-shadow: 0 0 10px rgba(0, 204, 204, .5);
				box-shadow: 0 0 10px rgba(0, 204, 204, .5)
			}
			
			.jd-hot-goods {
				float: left;
				width: 180px
			}
			
			.jd-hot-goods .title {
				font: 600 16px/34px "Microsoft YaHei", "SimHei", "Arial"!important;
				width: 180px;
				text-align: left;
				background-color: #ff8b8b;
				color: #fff;
				position: relative
			}
			
			.jd-hot-goods .title:hover .tip {
				display: block
			}
			
			.jd-hot-goods .title em {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAcAAAAMCAYAAACulacQAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RjlEMzcxNzMwNEFBMTFFN0FBN0JEQkVEM0IxMkIxNzQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RjlEMzcxNzQwNEFBMTFFN0FBN0JEQkVEM0IxMkIxNzQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGOUQzNzE3MTA0QUExMUU3QUE3QkRCRUQzQjEyQjE3NCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGOUQzNzE3MjA0QUExMUU3QUE3QkRCRUQzQjEyQjE3NCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PlykkQEAAAB5SURBVHjaYvj//78GEO8GYn4gZkDGIOL4fwg4AsRc6JIqQPwKqmAHELMhS4KwPhB/gCpYDcTMyJIgbAXEX6EK5gAxIwOaI9yA+CdUQS8TAypgQWL/RdZli2TsTGRjjZActBzZQepIXtmK7hVYIBzEFQjbsQUfQIABAPC3AbsL1ASsAAAAAElFTkSuQmCC) no-repeat center;
				cursor: pointer;
				display: inline-block;
				width: 7px;
				height: 12px;
				margin: 0 28px 0 10px
			}
			
			.jd-hot-goods .title p {
				padding-left: 20px;
				cursor: pointer;
				display: inline-block;
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAASCAYAAAC9+TVUAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6N0M2Nzc2MEUwNEE5MTFFNzg0QzRBOEM1MzhCOUI0NDQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6N0M2Nzc2MEYwNEE5MTFFNzg0QzRBOEM1MzhCOUI0NDQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo3QzY3NzYwQzA0QTkxMUU3ODRDNEE4QzUzOEI5QjQ0NCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo3QzY3NzYwRDA0QTkxMUU3ODRDNEE4QzUzOEI5QjQ0NCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PmZuzDoAAALtSURBVHjajJNJaFRBEIb/7vcyZlwyGRNFECEuuOFCFBERPShRoqgIEfGg4iEIgoLoUTx48CCCEkUUUTS4geJCQFDc8OASl0TBuOESxySTzWQyk3nTb+myeoxh1KAWFK+rX33/q1ddDQxgRDSF/TR7G/2wFvbj7BMGykdC6Qi/HJMjsI3dpYEtw74pJ3eM4ZF09SkO1vZtbs8lmtKKqt42UUN36nexzX35aw0vCVjF8coupWdowj7zkp+IpRXOf2mH4qDqdQzxjNtfPW8d7Fa6xHCGFxxQJCQoIFR0ZPRuFfjT19e+k52uh2jIBnkuAstG0tco0D5qFs3SAYknxflyrxS4mnBJSFdTghWFJXCmUDXWh1oeytIvtRgHFwW8OTiUh6ECKHYSmNr8EiL+WEZU41sWuGA4w9tEuJ/2acVgW4R9ldgYjo5GpO4ExqdqsLByC8SwKKijGXcuHwNpDa/8ADhvwyBWYA6Gl7ZEBZcUSyXbuFMa7Z29iMdb0PutA+UTS1BWJFE+bRLyhEZGKTR+bsrmpXpaYTjDC9OozkwQyku8icvAiT6v/wTfUyidX4ZIdDgXLMwxIJ1K4WXtPbieh9kzx4LscJcXmTKqKN9ypRHJLnQmSKZ9qIyDBeVrUFg0EkLarGFln0MKCjF30Qoox0HSAaRW2nC/DJ3z7b3T7gRk/G/GVVNrOiDV87VfQPQNjaTA9YQVkvhvI4OPEkK0ZiHu8pz/Eehqb8mJBHh0lptVFnR8Gs0b/7QHN6/gY0Nddn2t+ghqzh7dVbls1jg7qylwvcvVqRH5cmgu9OHVs19E5pWtRnXVHj7uAM2xRsxbWlFSECm8KH4mtDnBfj7JHSPCEuIfFZ07eRgvbpzRPHwy1tHztL8PI8PWTq7o0NdUoLtdgvfb7/HdQtIjNPVqWrxuy+2M8i+1JXrJtuTxPz7KRzjZD4ITrhZzfeIr9WPWYAnS3PrXtpRbi8PW3U1Lpg0KtC6tvtXw6LsAAwDnbfhm4S/8xQAAAABJRU5ErkJggg==) no-repeat left;
				background-size: 17px 18px
			}
			
			.jd-hot-goods .title .tip {
				display: inline-block;
				vertical-align: middle;
				margin: 5px;
				font: 400 12px "Microsoft YaHei", "SimHei", "Arial"!important;
				min-width: 30px;
				position: absolute;
				top: -27px;
				left: 6px;
				padding-bottom: 6px;
				word-break: break-line;
				word-wrap: break-word;
				line-height: 16px;
				color: #29cee9
			}
			
			.jd-hot-goods .title .tip .tip-content {
				position: relative;
				background: #fff;
				border-radius: 8px;
				border: 1px solid #29cee9
			}
			
			.jd-hot-goods .title .tip .tip-content:before,
			.jd-hot-goods .title .tip .tip-content:after,
			.jd-hot-goods .title .tip .tip-content .before,
			.jd-hot-goods .title .tip .tip-content .after {
				position: absolute;
				right: 40px;
				bottom: -9px;
				width: 0;
				height: 0;
				content: '';
				border-style: solid;
				border-color: transparent;
				border-top: 5px solid #29cee9;
				border-left-width: 5px;
				border-right-width: 6px
			}
			
			.jd-hot-goods .title .tip .tip-content:after,
			.jd-hot-goods .title .tip .tip-content .after {
				position: absolute;
				bottom: -8px;
				border-top-color: #fff
			}
			
			.jd-hot-goods .title .tip .tip-content {
				padding: 3px 10px
			}
			
			.jd-hot-goods .title .tip {
				display: none;
				z-index: 999999
			}
			
			.jd-hot-goods span {
				color: #8C8C8C
			}
			
			.jd-hot-goods .guess-item-img {
				width: 108px;
				height: 80px;
				display: inline-block;
				vertical-align: middle;
				font-size: 0;
				line-height: 0;
				text-align: center
			}
			
			.jd-hot-goods .guess-item-img:before {
				display: inline-block;
				vertical-align: middle;
				content: "";
				height: 100%;
				font-size: 0;
				line-height: 0;
				width: 0
			}
			
			.jd-hot-goods .guess-item-img img {
				display: inline-block;
				max-width: 100%;
				max-height: 100%;
				display: inline-block;
				vertical-align: middle;
				font-size: 1rem;
				line-height: normal
			}
			
			.jd-hot-goods ul {
				margin-top: 10px
			}
			
			.jd-hot-goods ul li {
				text-align: center;
				color: #333;
				font: 13px "Microsoft YaHei", "SimHei", "Arial"!important
			}
			
			.jd-hot-goods ul li p {
				overflow: hidden;
				text-overflow: ellipsis;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 2;
				width: 150px;
				margin: 10px 0 0 15px
			}
			
			.jd-hot-goods ul li.hide {
				display: none
			}
			
			.jd-hot-goods ul .jd-price,
			.jd-next-hot {
				text-align: center;
				margin-bottom: 10px
			}
			
			.jd-next-hot {
				color: #949395
			}
			
			.jd-next-hot .active {
				margin-left: 7px
			}
			
			.jd-next-hot .total {
				margin-right: 7px
			}
			
			.jd-next-hot em {
				background-color: #f0f0f0;
				width: 20px;
				height: 20px;
				display: inline-block;
				font: 600 12px "Microsoft YaHei", "SimHei", "Arial"!important;
				color: #fff;
				border-radius: 50%;
				text-align: center;
				line-height: 15px;
				cursor: pointer
			}
			
			.jd-hot-goods-close {
				display: block;
				width: 38px;
				max-width: 38px;
				font: 17px/26px "Microsoft YaHei", "SimHei", "Arial"!important;
				color: #ff8b8b;
				cursor: pointer
			}
			
			.jd-hot-goods-close em {
				background: #ff8b8b url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAMCAYAAAC5tzfZAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MDUyNzM5RkJGOThGMTFFNkJBMUZCREY1RDAxNDM2MkMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MDUyNzM5RkNGOThGMTFFNkJBMUZCREY1RDAxNDM2MkMiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDowNTI3MzlGOUY5OEYxMUU2QkExRkJERjVEMDE0MzYyQyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDowNTI3MzlGQUY5OEYxMUU2QkExRkJERjVEMDE0MzYyQyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjiqrSoAAAC+SURBVHjajJJbCsIwEEWnugYR0R/xtTIF/RAXoaCgFMHtCNIliIj4qeIu2nhHb+gQInTgNHDaS5LOiHNOAhJwANPAd8AJ9GKBvftVDkb0bXCnz8JQyhcFmNC1wI3+Abo2sDWBGV0TXOmfejT1PrA2gTldA1zoX2DgN9DH0pW1MIEz3dvc7UtNRHIpq861IFr6TSK2mF5V2G1oj+fZVLhXPwwpuyp/UCITkUaaa3uVyZ8x0qkYB16n4qjN/QgwAMlO5mJd2qcFAAAAAElFTkSuQmCC) no-repeat center;
				display: inline-block;
				width: 38px;
				height: 38px
			}
			
			.jd-hot-goods-close p {
				padding: 0 10px;
				margin-bottom: 8px
			}
			
			.jd-add-qq {
				position: fixed;
				right: 5px;
				bottom: 10px;
				font: 12px "Microsoft YaHei", "SimHei", "Arial"!important;
				-webkit-box-shadow: 0 0 10px rgba(0, 204, 204, .5);
				-ms-box-shadow: 0 0 10px rgba(0, 204, 204, .5);
				box-shadow: 0 0 10px rgba(0, 204, 204, .5);
				-webkit-border-radius: 5px;
				-moz-border-radius: 5px;
				-ms-border-radius: 5px;
				-o-border-radius: 5px;
				border-radius: 5px;
				background-color: #fff;
				z-index: 2147483647
			}
			
			.jd-add-qq .add-qq-header {
				text-align: right;
				padding: 5px 8px
			}
			
			.jd-add-qq .add-qq-content {
				display: inline-block;
				text-align: center;
				padding: 0 20px;
				margin-bottom: 25px;
				color: #333;
				text-decoration: none;
				cursor: auto
			}
			
			.jd-add-qq .qq-warm {
				font: 600 14px "Microsoft YaHei", "SimHei", "Arial"!important;
				color: #333;
				margin-bottom: 18px
			}
			
			.jd-add-qq .add-qq-button {
				margin-top: 18px
			}
			
			.jd-add-qq .add-qq-button span {
				width: 145px;
				height: 30px;
				-webkit-user-select: none;
				-moz-user-select: none;
				user-select: none;
				line-height: 30px;
				text-align: center;
				background: #ff8b8b;
				border-radius: 15px;
				cursor: pointer;
				color: #fff;
				display: inline-block
			}
			
			.jd-add-qq .add-qq-button span:hover {
				background-color: #ff7272
			}
			
			.jd-add-qq .add-qq-button span:active {
				background-color: #ff7272;
				outline: thin dotted;
				outline-offset: -2px
			}
			
			.yht-panel-notification {
				width: 360px;
				z-index: 2147483647;
				background-color: #fff;
				border: 1px solid #eee;
				box-shadow: 0 2px 4px rgba(0, 0, 0, .12), 0 0 6px rgba(0, 0, 0, .04);
				transition: opacity .3s, transform .3s, right .3s, top .4s;
				padding: 10px 10px 0;
				position: fixed;
				right: 0;
				bottom: 10px
			}
			
			.yht-panel-notification .yht-close {
				display: inline-block;
				width: 8px;
				height: 8px;
				position: absolute;
				top: 6px;
				right: 5px;
				background: url("//1pcdn.1haitao.com/explugin/img/panel/icon-close3.png") no-repeat
			}
			
			.yht-panel-notification .goos-item {
				line-height: 0;
				font-size: 12px;
				text-align: left;
				border-bottom: 1px solid #eee;
				padding-bottom: 10px
			}
			
			.yht-panel-notification .goos-item:before {
				display: inline-block;
				vertical-align: middle;
				content: "";
				height: 100%;
				font-size: 0;
				line-height: 0;
				width: 0
			}
			
			.yht-panel-notification .goos-item>div {
				display: inline-block;
				vertical-align: middle;
				max-width: 100%;
				max-height: 100%
			}
			
			.yht-panel-notification .goos-item .img {
				width: 110px;
				height: 80px;
				display: inline-block;
				vertical-align: middle;
				font-size: 0;
				line-height: 0;
				text-align: center
			}
			
			.yht-panel-notification .goos-item .img:before {
				display: inline-block;
				vertical-align: middle;
				content: "";
				height: 100%;
				font-size: 0;
				line-height: 0;
				width: 0
			}
			
			.yht-panel-notification .goos-item .img img {
				display: inline-block;
				max-width: 100%;
				max-height: 100%;
				display: inline-block;
				vertical-align: middle;
				font-size: 1rem;
				line-height: normal
			}
			
			.yht-panel-notification .goos-item .yht-info {
				width: 220px;
				height: 80px;
				display: inline-block;
				color: #999
			}
			
			.yht-panel-notification .goos-item .yht-info .yht-title {
				font-size: 14px;
				color: #333;
				overflow: hidden;
				text-overflow: ellipsis;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 2;
				line-height: 26px
			}
			
			.yht-panel-notification .goos-item .yht-info .yht-subhead {
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
				margin-top: 5px;
				height: 28px
			}
			
			.yht-panel-notification .yht-bottom {
				text-align: left;
				margin-top: 5px
			}
			
			.yht-panel-notification .yht-bottom>div {
				display: inline-block
			}
			
			.yht-panel-notification .yht-bottom .yht-left p {
				background: url("//1pcdn.1haitao.com/explugin/img/yht-icon-logo.png") no-repeat left;
				padding-left: 25px;
				color: #29cee9;
				font-size: 14px
			}
			
			.yht-panel-notification .yht-bottom .yht-right {
				display: inline-block;
				float: right
			}
			
			.yht-panel-notification .yht-bottom .yht-right p {
				background: url("//1pcdn.1haitao.com/explugin/img/panel/icon-go.png") no-repeat right;
				padding-right: 18px;
				color: #333
			}
			
			.yht-inject-price {
				width: 460px;
				font: 12px "Microsoft YaHei", "SimHei", "Arial"!important;
				background-color: #fff;
				margin-left: 10px
			}
			
			.yht-inject-price ul {
				font-size: 0;
				line-height: 0;
				text-align: left;
				border-top: 3px solid #29cee9;
				border-bottom: 1px solid #eee
			}
			
			.yht-inject-price ul:before {
				display: inline-block;
				vertical-align: middle;
				content: "";
				height: 100%;
				font-size: 0;
				line-height: 0;
				width: 0
			}
			
			.yht-inject-price ul li {
				display: inline-block;
				vertical-align: middle;
				max-width: 100%;
				max-height: 100%
			}
			
			.yht-inject-price li {
				display: inline-block;
				font: 600 12px "Microsoft YaHei", "SimHei", "Arial"!important;
				padding: 3px 8px;
				color: #29cee9;
				line-height: 24px
			}
			
			.yht-inject-price li a {
				color: #29cee9
			}
			
			.yht-inject-price li span {
				padding: 0 15px;
				border-left: 2px solid #29cee9;
				border-right: 2px solid #29cee9
			}
			
			.yht-inject-price li .yht-app {
				background: url("//1pcdn.1haitao.com/explugin/img/icon-qr2.png") no-repeat left 1px;
				padding-left: 20px;
				position: relative;
				cursor: pointer
			}
			
			.yht-inject-price li .yht-app:hover .tip {
				display: block
			}
			
			.yht-inject-price li h2 {
				font: 600 15px PingFangSC-Regular, "Droid Sans Regular", "Rotobo", "Microsoft YaHei";
				margin: 5px 0
			}
			
			.yht-inject-price li .tip {
				display: inline-block;
				vertical-align: middle;
				margin: 5px;
				width: 145px;
				font: 12px "Microsoft YaHei", "SimHei", "Arial"!important;
				word-break: break-line;
				word-wrap: break-word;
				text-align: center;
				position: absolute;
				top: 10px;
				left: -44px;
				line-height: 16px;
				color: #29cee9;
				padding-top: 9px
			}
			
			.yht-inject-price li .tip .tip-content {
				position: relative;
				background: #fff;
				border-radius: 8px;
				border: 1px solid #29cee9
			}
			
			.yht-inject-price li .tip .tip-content:before,
			.yht-inject-price li .tip .tip-content:after,
			.yht-inject-price li .tip .tip-content .before,
			.yht-inject-price li .tip .tip-content .after {
				position: absolute;
				top: -13px;
				left: 65px;
				width: 0;
				height: 0;
				content: '';
				border-style: solid;
				border-color: transparent;
				border-bottom: 9px solid #29cee9;
				border-left-width: 9px;
				border-right-width: 10px
			}
			
			.yht-inject-price li .tip .tip-content:after,
			.yht-inject-price li .tip .tip-content .after {
				position: absolute;
				top: -12px;
				border-bottom-color: #fff
			}
			
			.yht-inject-price li .tip .tip-content {
				padding: 3px
			}
			
			.yht-inject-price li .tip p {
				margin: 5px 0
			}
			
			.yht-inject-price li .tip {
				display: none;
				z-index: 999999
			}
			
			.yht-inject-price .yht-active-item {
				padding: 5px 12px
			}
			
			.yht-inject-price .yht-active-item a:hover {
				color: #f22
			}
			
			.yht-inject-price .yht-active-item p {
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
				line-height: 24px;
				padding-right: 20px;
				color: #333
			}
		</style>
		<style class="style_0">
			.footer .widget-title {
				padding: 0 0 0 10px;
				height: 28px;
				line-height: 28px;
				background-color: #024886;
				margin: 0px;
				font-family: ;
				font-size: px;
				font-weight: normal;
				font-style: normal;
				text-decoration: none;
				color: #fff;
				border-top: 0;
				border-left: 0;
				border-right: 0;
				border-bottom: 0;
				background-image: none;
				-webkit-border-top-left-radius: 4px;
				-webkit-border-top-right-radius: 4px;
				-moz-border-radius-topleft: 4px;
				-moz-border-radius-topright: 4px;
				border-top-left-radius: 4px;
				border-top-right-radius: 4px;
			}
			
			.footer .widget-title {
				border-top: 0;
				border-left: 0;
				border-right: 0;
			}
			
			.footer .bitWidgetFrame {
				border-bottom: 0;
				border-top: 0;
				border-left: 0;
				border-right: 0;
				padding: 4px 10px 4px 10px;
			}
			
			.footer .site_tooler {
				-webkit-box-shadow: none;
				box-shadow: none;
			}
			
			.footer .site_tooler .bitWidgetFrame {
				background-color: transparent;
				background-image: none;
				-webkit-border-bottom-left-radius: 4px;
				border-bottom-left-radius: 4px;
				-webkit-border-bottom-right-radius: 4px;
				border-bottom-right-radius: 4px;
			}
		</style>
		<script type="text/javascript">
			var qfyuser_ajax_url = 'http://57e8ecf41155d.t73.qifeiye.com/admin/admin-ajax.php';
		</script>
		<script type="text/javascript">
			var qfyuser_upload_url = 'http://57e8ecf41155d.t73.qifeiye.com/qfy-content/plugins/qfyuser/lib/fileupload/fileupload.php';
		</script>
		<meta name="robots" content="index, follow">
		<style type="text/css">

		</style>
		<script type="text/javascript">
			dtGlobals.logoEnabled = 1;
			dtGlobals.curr_id = 15282;
			dtGlobals.logoURL = '';
			dtGlobals.logoW = '0';
			dtGlobals.logoH = '0';
			dtGlobals.qfyname = '起飞页';
			dtGlobals.id = '57e8ecf41155d';
			dtGlobals.language = '';
			smartMenu = 0;
			document.cookie = 'resolution=' + Math.max(screen.width, screen.height) + '; path=/';
			dtGlobals.gallery_bgcolor = 'rgba(51,51,51,1)';
			dtGlobals.gallery_showthumbs = '0';
			dtGlobals.gallery_style = '';
			dtGlobals.gallery_autoplay = '0';
			dtGlobals.gallery_playspeed = '3';
			dtGlobals.gallery_imagesize = '100';
			dtGlobals.gallery_stopbutton = '';
			dtGlobals.gallery_thumbsposition = '';
			dtGlobals.gallery_tcolor = '#fff';
			dtGlobals.gallery_tsize = '16';
			dtGlobals.gallery_dcolor = '#fff';
			dtGlobals.gallery_dsize = '14';
			dtGlobals.gallery_tfamily = '';
			dtGlobals.gallery_dfamily = '';
			dtGlobals.gallery_blankclose = '0';
			dtGlobals.fm_showstyle = '';
			dtGlobals.fm_showspeed = '';
			dtGlobals.cdn_url = 'http://static.qifeiye.com';
			dtGlobals.qfymodel = "";
			dtGlobals.viewtemplate = "";
			var socail_back_url = '';
		</script>

	</head>

	<body class="page page-id-15282 page-child parent-pageid-15279 page-template-default image-blur btn-flat content-fullwidth wpb-js-composer js-comp-ver-4.0.1 vc_responsive no-mobile is-webkit" data-pid="15282" data-pkey="957403aec645b43ffc1120941129dbf6" onkeydown="keyLogin(event);">
		<div id="dl-menu" class="dl-menuwrapper wf-mobile-visible dropTopStyle_containter center">
			<a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282#show-menu" data-padding="" data-top="8" data-right="8" rel="nofollow" id="mobile-menu" class="dropTopStyle center">
				<span class="menu-open  phone-text">登录</span>
				<span class="menu-close">关闭</span>
				<span class="menu-back">返回上一级</span>
				<span class="wf-phone-visible">&nbsp;</span>
				<span class="mobile_icon glyphicon glyphicon-icon-angle-down"></span></a>
			<div class="dl-container">
				<ul data-st="0" data-sp="0" data-fh="0" data-mw="0" data-lh="48" class="dl-menu" data-bit-menu="underline-hover" data-bit-float-menu="underline-hover">
					<li class=" menu-item menu-item-type-post_type menu-item-object-page bit-menu-post-id-2160 menu-item-2319 first"><a href="newshouye.jsp"><span>s首页<i class="underline"></i></span></a></li>
				</ul>
			</div>
		</div>

		<div id="page" class="bodyheader0 breackall hidefooter wide ">
			<header id="header" class="logo-left-right wf-mobile-hidden headerPM menuPosition transparent" role="banner">
				<!-- class="overlap"; class="logo-left", class="logo-center", class="logo-classic" -->
				<div class="wf-wrap">
					<div class="wf-table">

						<div id="branding" class="wf-td bit-logo-bar" style="">
							<a class="bitem logo small" style="display: table-cell;" href="newshouye.jsp"><span class="logospan"><img class="preload-me" src="images/newshouyelogo.png" id="newshouyelogo" alt="软件公司"></span></a>
						</div>
						<nav style="0" id="navigation" class="wf-td" bitdataaction="site_menu_container" bitdatalocation="primary">
							<ul id="main-nav" data-st="0" data-sp="0" data-fh="0" data-mw="0" data-lh="48" class="mainmenu fancy-rollovers wf-mobile-hidden bit-menu-default underline-hover" data-bit-menu="underline-hover" data-bit-float-menu="underline-hover">
							</ul>

						</nav>
						<div style="display:none;" id="main-nav-slide">
							<div class="main-nav-slide-inner" data-class="">
								<div class="floatmenu-bar-right bit_widget_more" bitdatamarker="bitHeader-3" bitdataaction="site_fix_container" bitdatacolor="white">
								</div>
							</div>
						</div>

						<div class="wf-td assistive-info    " role="complementary" style="">
							<div class="top-bar-right right bit_widget_more" id="zhucedenglu" bitdatamarker="bitHeader-2" bitdataaction="site_fix_container" bitdatacolor="white" style="">
								<div id="bit_postlist-6" style="margin-top:0px;margin-bottom:0px;" class="headerWidget_1 widget_text site_tooler">
									<div class="bitWidgetFrame ">
										<div style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="0" data-anitime="0.7" class="qfy-element vc_btn3-container vc_btn3-inline"><a onmouseleave="this.style.borderColor=&#39;#ffffff&#39;; this.style.backgroundColor=&#39;#ffffff&#39;; this.style.color=&#39;#ef4f19&#39;;" onmouseenter="this.style.backgroundColor=&#39;transparent&#39;; this.style.borderColor=&#39;#ffffff&#39;; this.style.color=&#39;#ffffff&#39;;"
												style="font-family:微软雅黑; font-size:14px; padding-top:6px;padding-bottom:6px; border-width:1px; border-color:#ffffff; background-color:#ffffff; color:#ef4f19;" class="vc_general vc_btn3 vc_btn3-size-sm vc_btn3-shape-rounded vc_btn3-style-qfy-custom"
												href="newregister.jsp" target="">注册</a></div>
									</div>
								</div>
								<div id="bit_postlist-7" style="margin-top:0px;margin-bottom:0px;" class="headerWidget_1 widget_text site_tooler">
									<div class="bitWidgetFrame ">
										<div style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="0" data-anitime="0.7" class="qfy-element vc_btn3-container vc_btn3-inline"><a onmouseleave="this.style.borderColor=&#39;#ffffff&#39;; this.style.backgroundColor=&#39;transparent&#39;; this.style.color=&#39;#ffffff&#39;;" onmouseenter="this.style.backgroundColor=&#39;#ffffff&#39;; this.style.borderColor=&#39;#ffffff&#39;; this.style.color=&#39;#ef4f19&#39;;"
												style="font-family:微软雅黑; font-size:14px; padding-top:6px;padding-bottom:6px; border-width:1px; border-color:#ffffff; background-color:transparent; color:#ffffff;" class="vc_general vc_btn3 vc_btn3-size-sm vc_btn3-shape-rounded vc_btn3-style-qfy-custom"
												href="newlogin.jsp" target="">登录</a></div>
									</div>
								</div>
								<div id="loginandregister-2" style="display:none;" class="headerWidget_1 loginandregister site_tooler">
									<div class="wf-td" style="display:inline-block;"><a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282" style="color:#ffffff;font-size:12px;" rel="nofollow"><i class="glyphicon glyphicon-icon-user"></i>&nbsp;登录</a>&nbsp;<a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15281" style="color:#ffffff;font-size:12px;"
											rel="nofollow"><i class="glyphicon glyphicon-icon-signin"></i>&nbsp;注册</a></div>
								</div>
							</div>
						</div>
					</div>
					<!-- #branding -->
				</div>
				<!-- .wf-wrap -->
			</header>
			<!-- #masthead -->

			<section class="bitBanner" id="bitBanner" bitdatamarker="bitBanner" bitdataaction="site_fix_container">
			</section>
			<div id="main" class="bit_main_content">

				<div class="main-gradient"></div>

				<div class="wf-wrap">
					<div class="wf-container-main">

						<div id="content" class="content" role="main">

							<div class="main-outer-wrapper ">
								<div class="bit_row">

									<div class="twelve columns no-sidebar-content ">

										<div class="bit_row">

											<div class="content-wrapper twelve columns ">
												<section data-fixheight="" class="qfy-row-1-5932a71721343663936 section minperheight100    no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_gbb71" style="margin-bottom: 0px; border-radius: 0px; color: transparent; min-height: 730px;">
													<div data-time="3" data-imagebgs="" class="background-media  " style="background-image: url(&#39;http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9jNzIxOTEwMTZjZTRiMzYzNGU3Nzg5Y2QyOTIzNDU1Mi5qcGc_p_p100_p_3D.jpg&#39;); background-repeat:no-repeat; background-size:auto; background-attachment:scroll; background-position:0 0%;">
													</div>

													<div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: rgba(0,0,0,0.2);"></div>

													<div class="container">
														<div class="row wpb_row">
															<div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-1-5932a71721616823895 qfy-column-inner  vc_span12  text-default small-screen-undefined fullrow" data-dw="1/1" data-fixheight="">
																<div style=";position:relative;;" class="column_inner ">
																	<div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div>
																	<div class="column_containter" style="z-index:3;position:relative;">
																		<div m-padding="50px 0px 50px 0px" p-padding="50px 0px 50px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_2g6xo" class="qfy-element qfy-text qfy-text-41072 wpb_text_column wpb_content_element  0" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:50px;padding-bottom:50px;">
																			<div class="wpb_wrapper">
																				<div style="text-align: center;"><span style="font-family:微软雅黑;"><strong><span style="color: rgb(255, 255, 255);"><span style="font-size: 40px;">用户登录</span></span>
																					</strong>
																					</span>
																				</div>

																			</div>
																		</div>
																		
																		<div class="qfy-element qfyuser qfyuser-447 qfyuser-float" data-modal_profile_saved="您的个人资料已保存！" data-template="login" data-uploads_dir="http://57e8ecf41155d.t73.qifeiye.com/qfy-content/uploads/qfyuser/" data-default_avatar_male="http://57e8ecf41155d.t73.qifeiye.com/qfy-content/plugins/qfyuser/img/default_avatar_male.jpg"
																			data-default_avatar_female="http://57e8ecf41155d.t73.qifeiye.com/qfy-content/plugins/qfyuser/img/default_avatar_male.jpg" data-skin="elegant" data-required_text="此项必须填写" data-password_too_short="你的密码太短了" data-passwords_do_not_match="两个密码不匹配"
																			data-password_not_strong="密码不够强高" data-keep_one_section_open="0" data-allow_sections="1" data-permalink="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282" data-field_icons="0" data-profile_thumb_size="80" data-register_heading="注册帐号"
																			data-register_side="注册会员点这里" data-register_side_action="login" data-register_button_action="login" data-register_button_primary="注册" data-register_button_secondary="登录" data-register_group="default" data-register_redirect="0" data-type="0"
																			data-login_heading="登录" data-login_side="忘记密码？点这里找回" data-login_side_action="reset" data-login_button_action="register" data-login_button_primary="登录" data-login_button_secondary="注册" data-login_group="default" data-login_redirect="0"
																			data-rememberme="true" data-delete_heading="删除个人资料" data-delete_side="取消并返回" data-delete_side_action="view" data-delete_button_action="view" data-delete_button_primary="确认删除" data-delete_button_secondary="返回到用户资料" data-delete_group="default"
																			data-reset_heading="重设密码" data-reset_side="返回登录" data-reset_side_action="login" data-reset_button_action="change" data-reset_button_primary="发送" data-reset_button_secondary="更改您的密码" data-reset_group="default" data-change_heading="更改您的密码"
																			data-change_side="重发验证码" data-change_side_action="reset" data-change_button_action="reset" data-change_button_primary="更新密码" data-change_button_secondary="重新发送验证码" data-change_group="default" data-list_heading="最新成员" data-list_per_page="5"
																			data-list_sortby="registered" data-list_order="desc" data-list_users="0" data-list_group="default" data-list_thumb="50" data-list_showthumb="1" data-list_showsocial="1" data-list_showbio="0" data-list_verified="0" data-list_relation="or"
																			data-online_heading="查看在线用户" data-online_thumb="30" data-online_showthumb="1" data-online_showsocial="0" data-online_showbio="0" data-online_mini="1" data-online_mode="vertical" data-edit_button_primary="保存更改" data-edit_group="default"
																			data-view_group="default" data-social_target="_blank" data-social_group="default" data-card_width="250px" data-card_img_width="250" data-card_showbio="1" data-card_showsocial="1" data-link_target="_blank" data-error_heading="有错误发生" data-memberlist_table="0"
																			data-memberlist_table_columns="user_id,picture,name,country,gender,role,email_user,message_user" data-show_on_mobile="picture,name,country,email_user,message_user" data-memberlist_v2="1" data-memberlist_v2_pic_size="86" data-memberlist_v2_fields="age,gender,country"
																			data-memberlist_v2_bio="1" data-memberlist_v2_showbadges="1" data-memberlist_v2_showname="1" data-memberlist_v2_showsocial="1" data-memberlist_pic_size="120" data-memberlist_pic_topspace="15" data-memberlist_pic_sidespace="30" data-memberlist_pic_rounded="1"
																			data-memberlist_width="100%" data-memberlist_paginate="1" data-memberlist_paginate_top="1" data-memberlist_paginate_bottom="1" data-memberlist_show_name="1" data-memberlist_popup_view="0" data-memberlist_withavatar="0" data-memberlist_verified="0"
																			data-memberlist_filters="0" data-memberlist_default_search="1" data-per_page="12" data-sortby="registered" data-order="desc" data-relation="and" data-search="1" data-exclude="0" data-show_social="1" data-registration_closed_side="已经注册了？请登录"
																			data-registration_closed_side_action="login" data-facebook_redirect="profile" data-logout_redirect="0" data-postsbyuser_num="12" data-postsbyuser_types="post" data-postsbyuser_mode="grid" data-postsbyuser_thumb="50" data-postsbyuser_showthumb="1"
																			data-postsbyuser_taxonomy="category" data-postsbyuser_category="0" data-publish_heading="添加一个新资讯" data-publish_button_primary="发布" data-layout="float" data-margin_top="0" data-margin_bottom="0" data-align="center" data-max_width="480"
																			data-fontcolor="#333" data-bzfontcolor="#888" data-inputbordercolor="#ddd" data-inputborderhovercolor="#aaa" data-fonthovercolor="#aaa" data-button1color="#ef4f19" data-button1bordercolor="#ef4f19" data-button1fontcolor="#fff" data-button2color="#fff"
																			data-button2bordercolor="#ddd" data-button2fontcolor="#666" data-linebackground="#666" data-linefontcolor="#fff" data-line2background="#f5f5f5" data-line2fontcolor="#888" data-box_background="0" data-bg_image="0" data-bg_color="0" data-bg_image_repeat="no-repeat"
																			data-box_border="0" data-box_border_settings="1|^|1|^|#ffffff|^|0|^|1|^|#ffffff|^|0|^|1|^|#ffffff|^|0|^|1|^|#ffffff|^|0" data-box_shadow="0" data-box_shadowcolor="#000000" data-box_shadowstyle="0" data-box_shadowsize="1" data-z_index="0"
																			data-show_logout_login="0" data-show_groups="0" data-isshowlabel="0" data-login_txt0="0" data-login_txt1="0" data-login_txt2="0" data-login_txt3="0" data-login_txt4="0" data-custom_template="0" data-dependency_tab="6" data-allfontsize="12"
																			data-margintop="10" data-updateparamtime="1478324386363" data-marginbottom="0" data-paddingtop="20" data-paddingbottom="20" data-paddingleft="20" data-paddingright="20" data-display_device="0" data-qfyuuid="qfyuser_bn8vz" data-password_checking="0">

																			<a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282#" class="qfyuser-close-popup">关闭</a>

																			<div class="qfyuser-head">
																				<div class="qfyuser-left">登录</div>
																				<div class="qfyuser-right"><a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282#" data-template="reset"></a></div>
																				<div class="qfyuser-clear"></div>
																			</div>

																			<div class="qfyuser-body">

																				<form  method="post" class="qfyuser_login">

																					<input type="hidden" name="force_redirect_uri-447" id="force_redirect_uri-447" value="">
																					<input type="hidden" name="redirect_uri-447" id="redirect_uri-447" value="">

																					<input type="hidden" id="_myqfyuser_nonce" name="_myqfyuser_nonce" value="95e9b9ea21"><input type="hidden" name="_wp_http_referer" value="/?page_id=15282"> <input type="hidden" name="unique_id" id="unique_id" value="447">
																					<div class="qfyuser-field qfyuser-field-username_or_email " data-key="username_or_email">
																						<div class="qfyuser-label"><label for="username_or_email-447">高校代码</label>
																							<div class="required">*</div>
																						</div>
																						<div class="qfyuser-input ">
																						<input type="text" name="username_or_email-447" id="school" value="" placeholder="" data-ajaxcheck="" data-help="" data-label="用户名或者邮箱" data-placeholder="" data-_builtin="1" data-hidden="0" data-hideable="0" data-html="0"
																								data-locked="0" data-private="0" data-required="1" data-type="text" data-woo="0">
																							<div class="qfyuser-clear"></div>
																						</div>
																					</div>
																					<div class="qfyuser-clear"></div>
																					<div class="qfyuser-field qfyuser-field-username_or_email " data-key="username_or_email">
																						<div class="qfyuser-label"><label for="username_or_email-447">用户名</label>
																							<div class="required">*</div>
																						</div>
																						<div class="qfyuser-input ">
																						<input type="text" name="username_or_email-447" id="username" value="" placeholder="" data-ajaxcheck="" data-help="" data-label="用户名或者邮箱" data-placeholder="" data-_builtin="1" data-hidden="0" data-hideable="0" data-html="0"
																								data-locked="0" data-private="0" data-required="1" data-type="text" data-woo="0">
																							<div class="qfyuser-clear"></div>
																						</div>
																					</div>
																					<div class="qfyuser-clear"></div>

																					<div class="qfyuser-field qfyuser-field-user_pass " data-key="user_pass">
																						<div class="qfyuser-label"><label for="user_pass-447">密码</label>
																							<div class="required">*</div>
																						</div>
																						<div class="qfyuser-input ">
																						<input type="password" class="password" name="user_pass-447" id="userpwd" value="" placeholder="" data-ajaxcheck="" data-help="Your password must be 8 characters long at least." data-label="密码" data-placeholder="" data-_builtin="1"
																								data-hidden="0" data-hideable="0" data-html="0" data-locked="0" data-private="0" data-required="1" data-type="password" data-woo="0">
																							<div class="qfyuser-clear"></div>
																						</div>
																					</div>
																					
																					<div class="qfyuser-clear"></div>
																					<div class="qfyuser-clear"></div>

																					<div class="qfyuser-field qfyuser-submit qfyuser-column" align="center">

																						<input type="button" onclick="Login();" name="button" id="button"  value="登录" class="qfyuser-button">
																						<a href="newregister.jsp"><input type="button" id="register_btn" value="注册" class="qfyuser-button secondary" ></a>

																						<img src="./loginfiles/loading.gif" alt="" class="qfyuser-loading">
																					</div>

																				</form>

																			</div>

																		</div>

																		<style type="text/css">
																			div.qfyuser-awsm-pic {
																				margin-left: -48px;
																				top: -48px;
																			}
																			
																			div.qfyuser-awsm-pic img {
																				width: 86px;
																				height: 86px;
																			}
																			
																			div.qfyuser,
																			div.emd-main,
																			div.emd-filters,
																			div.qfyuser-search-results,
																			div.qfyuser-label label,
																			div.qfyuser input,
																			div.qfyuser textarea,
																			div.qfyuser select,
																			div.qfyuser-field textarea.qfyuser_editor,
																			div.qfyuser-msg-overlay-content,
																			div.qfyuser-msg-overlay-content input,
																			div.qfyuser-msg-overlay-content textarea,
																			div.qfyuser-notifier {
																				font-family: Roboto;
																			}
																			
																			div.qfyuser-447 {
																				max-width: 480px;
																				width: 100%;
																				margin-left: auto;
																				margin-right: auto;
																			}
																			
																			div.qfyuser-447.qfyuser-nostyle {
																				max-width: 250px;
																			}
																			
																			div.qfyuser-447.qfyuser-users {
																				max-width: 100% !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-user {
																				margin-top: 15px;
																				margin-left: 30px;
																				margin-right: 30px;
																			}
																			
																			div.qfyuser-447 div.qfyuser-user a.qfyuser-user-img {
																				width: 120px;
																				height: 120px;
																			}
																			
																			div.qfyuser-447 div.qfyuser-user a.qfyuser-user-img span {
																				top: -120px;
																				line-height: 120px;
																			}
																			
																			div.qfyuser-447 div.qfyuser-user div.qfyuser-user-link {
																				width: 120px;
																			}
																			
																			div.qfyuser-447 div.qfyuser-user a.qfyuser-user-img,
																			div.qfyuser-447 div.qfyuser-user a.qfyuser-user-img span {
																				border-radius: 999px !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-list-item-i {
																				width: 50px;
																				height: 50px;
																			}
																			
																			div.qfyuser-447 div.qfyuser-online-item-i {
																				width: 30px;
																				height: 30px;
																			}
																			
																			div.qfyuser-447 div.qfyuser-online-item {
																				border-bottom: 0px !important;
																				padding: 10px 0 0 0;
																			}
																			
																			div.qfyuser-447 div.qfyuser-online-item img.qfyuser-profile-badge,
																			div.qfyuser-447 div.qfyuser-online-item img.qfyuser-profile-badge-right {
																				max-width: 14px !important;
																				max-height: 14px !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-profile-img {
																				width: 80px;
																				height: 80px;
																			}
																			
																			div.emd-user {
																				width: !important;
																				margin-left: !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-label label,
																			div.qfyuser-447 .qfyuser-qfy-action,
																			div.qfyuser-447 div.qfyuser-profile-name a {
																				color: #333 !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-input label.qfyuser-checkbox.hide-field,
																			div.qfyuser-447 .open_social_box span,
																			div.qfyuser-447 .open_social_box .login_button,
																			div.qfyuser-447 .qfyuser-checkbox-wrap,
																			div.qfyuser-447 div.qfyuser-input label.qfyuser-radio,
																			div.qfyuser-447 div.qfyuser-input label.qfyuser-checkbox,
																			div.qfyuser-447.qfyuser .qfyuser-pic-upload,
																			div.qfyuser-447 .qfyuser-qfy-bz-action,
																			div.qfyuser-447 .qfyuser-pic-none,
																			div.qfyuser-447 div.qfyuser-maxwidth div.qfyuser-input label,
																			div.qfyuser-447 .strength-text {
																				color: #888 !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-input input[type="text"],
																			div.qfyuser-447 div.qfyuser-input input[type="password"],
																			div.qfyuser-447 div.qfyuser-input select,
																			div.qfyuser-447 .chosen-container-single .chosen-single,
																			div.qfyuser-447 div.qfyuser-input textarea,
																			div.qfyuser-447 .qfyuser-checkbox >span,
																			div.qfyuser-447 img.qfyuser-img {
																				border: 1px solid #ddd !important;
																				color: #333 !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-input input[type="text"]:focus,
																			div.qfyuser-447 div.qfyuser-input input[type="password"]:focus,
																			div.qfyuser-447 div.qfyuser-input textarea:focus {
																				border: 1px solid #aaa !important;
																				color: #aaa !important;
																			}
																			
																			div.qfyuser-447 input.qfyuser-button,
																			div.qfyuser-447 a.qfyuser-button {
																				background: #ef4f19 !important;
																				border: 1px solid #ef4f19 !important;
																				color: #fff !important;
																				box-shadow: inset 0 1px #ef4f19 !important;
																			}
																			
																			div.qfyuser-447 input.qfyuser-button.secondary,
																			div.qfyuser-447 a.qfyuser-button.secondary,
																			div.qfyuser-447 div.qfyuser div.ajax-file-upload {
																				background: #fff !important;
																				border: 1px solid #ddd !important;
																				color: #666 !important;
																				box-shadow: inset 0 1px #fff !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-section.qfyuser-collapsed-0 {
																				background: #666;
																				border: none;
																				color: #fff !important;
																				text-shadow: none;
																			}
																			
																			div.qfyuser-447 div.qfyuser-section.qfyuser-collapsed-1 {
																				background: #f5f5f5;
																				border: none;
																				color: #888 !important;
																				text-shadow: none;
																			}
																			
																			div.qfyuser-447 .qfyuser-input.fa:before {
																				left: 10px;
																				position: absolute;
																				top: 8px;
																			}
																			
																			div.qfyuser-447 .qfyuser-input.fa.fa-envelope-o:before {
																				left: 8px;
																				position: absolute;
																			}
																			
																			div.qfyuser-447 .qfyuser-field div.qfyuser-input.fa input {
																				padding-left: 28px !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-label label,
																			div.qfyuser-447,
																			div.qfyuser-447 div.qfyuser-input label.qfyuser-checkbox.hide-field,
																			div.qfyuser-447 div.qfyuser input,
																			div.qfyuser-447 div.qfyuser textarea,
																			div.qfyuser-447 div.qfyuser select {
																				font-size: 12px !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-input input[type="text"],
																			div.qfyuser-447 div.qfyuser-input input[type="password"],
																			div.qfyuser-447 div.qfyuser-input textarea,
																			div.qfyuser-447 div.qfyuser-input select,
																			div.qfyuser-447 div.qfyuser-submit input,
																			div.qfyuser-447 div.qfyuser-section,
																			div.qfyuser-447 div.qfyuser-input label.qfyuser-radio,
																			div.qfyuser-447 div.qfyuser-input label.qfyuser-checkbox,
																			div.qfyuser-447 input.input-after-button {
																				font-size: 13px !important;
																			}
																			
																			div.qfyuser-447 div.qfyuser-input input[type="text"],
																			div.qfyuser-447 div.qfyuser-input input[type="password"],
																			div.qfyuser-447 div.qfyuser-submit input,
																			div.qfyuser-447 .qfyuser-qfy-action,
																			div.qfyuser-447 input.input-after-button,
																			div.qfyuser-447 .qfyuser-input img.qfyuser-img {
																				height: 30px !important;
																				line-height: 30px !important;
																			}
																			
																			div.qfyuser-447 {
																				margin-top: 10px;
																				margin-bottom: 0px;
																			}
																			
																			div.qfyuser-447 {
																				padding-top: 20px;
																				padding-bottom: 20px;
																				padding-right: 20px;
																				padding-left: 20px;
																			}
																			
																			@media screen and (max-width: 768px) {
																				.bit-html div.qfyuser-447 {
																					padding: 20px 0px 20px 0px;
																				}
																			}
																		</style>
																	</div>
																</div>
															</div>
															<style>
																.qfy-column-1-5932a71721616823895 > .column_inner:hover {}
																
																.qfy-column-1-5932a71721616823895 > .column_inner:hover {}
																
																.qfy-column-1-5932a71721616823895 > .column_inner:hover >.background-media {}
																
																.qfy-column-1-5932a71721616823895 > .column_inner:hover >.background-overlay {}
																
																@media only screen and (min-width: 992px) {
																	.qfy-column-1-5932a71721616823895 > .column_inner {
																		padding-left: 0px;
																		padding-right: 0px;
																		padding-top: 109px;
																		padding-bottom: 124px;
																	}
																	.wpb_row .vc_span_class.qfy-column-1-5932a71721616823895 {}
																	;
																}
																
																@media only screen and (max-width: 992px) {
																	.qfy-column-1-5932a71721616823895 > .column_inner {
																		margin: 0px auto 0px !important;
																		padding-left: 0px;
																		padding-right: 0px;
																		padding-top: 109px;
																		padding-bottom: 124px;
																	}
																	.display_entire .wpb_row .vc_span_class.qfy-column-1-5932a71721616823895 {}
																	;
																}
															</style>
														</div>
													</div>
													<style>
														@media only screen and (min-width: 992px) {
															section.section.qfy-row-1-5932a71721343663936 {
																padding-left: 0px;
																padding-right: 0px;
																padding-top: 20px;
																padding-bottom: 0px;
																margin-top: 0px;
															}
															section.section.qfy-row-1-5932a71721343663936 > .container {
																max-width: 600px;
																margin: 0 auto;
															}
														}
														
														@media only screen and (max-width: 992px) {
															.bit-html section.section.qfy-row-1-5932a71721343663936 {
																padding-left: 15px;
																padding-right: 15px;
																padding-top: 20px;
																padding-bottom: 0px;
																margin-top: 0px;
															}
														}
													</style>
												</section>
											</div>

											<div class="clear"></div>
										</div>
									</div>
								</div>
								<!-- END .page-wrapper -->
								<div class="clear"></div>
							</div>
							<div class="clear"></div>

						</div>

					</div>
					<!-- .wf-container -->
				</div>
				<!-- .wf-wrap -->
			</div>
			<!-- #main -->
			<footer id="footer" class="footer">
				<div class="wf-wrap">
					<div class="wf-container wpb_row footer1" bitdataaction="site_widget_container" bitdatamarker="sidebar_2">
						<section id="simplepage-2" style="margin-bottom:20px;" class="widget simplepage site_tooler">
							<style class="style_simplepage-2">
								#simplepage-2 .widget-title {
									padding: 0 0 0 10px;
									height: 28px;
									line-height: 28px;
									background-color: transparent;
									margin: 0px;
									font-family: ;
									font-size: px;
									font-weight: normal;
									font-style: normal;
									text-decoration: none;
									color: #ffffff;
									border-top: 1px solid transparent;
									border-left: 1px solid transparent;
									border-right: 1px solid transparent;
									border-bottom: 0px solid transparent;
									background-image: none;
									-webkit-border-top-left-radius: 4px;
									-webkit-border-top-right-radius: 4px;
									-moz-border-radius-topleft: 4px;
									-moz-border-radius-topright: 4px;
									border-top-left-radius: 4px;
									border-top-right-radius: 4px;
								}
								
								#simplepage-2 .widget-title {
									border-top: 0;
									border-left: 0;
									border-right: 0;
								}
								
								#simplepage-2 .bitWidgetFrame {
									border-bottom: 0;
									border-top: 0;
									border-left: 0;
									border-right: 0;
									padding: 4px 10px 4px 10px;
								}
								
								#simplepage-2 {
									-webkit-box-shadow: none;
									box-shadow: none;
								}
								
								#simplepage-2 .bitWidgetFrame {
									background-color: transparent;
									background-image: none;
									-webkit-border-bottom-left-radius: 4px;
									border-bottom-left-radius: 4px;
									-webkit-border-bottom-right-radius: 4px;
									border-bottom-right-radius: 4px;
								}
								
								#simplepage-2 .bitWidgetFrame {
									padding-left: 0px;
									padding-right: 0px;
								}
								
								body #simplepage-2 .bitWidgetFrame {
									padding-top: 0px !important;
									padding-bottom: 0px !important;
								}
							</style>
							<div class="simplepage_container bitWidgetFrame" data-post_id="18298">
								<section data-fixheight="" class="qfy-row-2-5932a71724163122179 section     no  section-text-no-shadow section-inner-no-shadow section-normal mobileHidden" id="bit_y46zk" style="margin-bottom:0px;border-radius:0px;color:#a9a9a9;">
									<div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

									<div class="container">
										<div class="row wpb_row">
											<div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-2-5932a717243ee687312 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight="">
												<div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner ">
													<div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div>
													<div class="column_containter" style="z-index:3;position:relative;">
														<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_2cp8s" data-anitime="0.7" class="qfy-element qfy-text qfy-text-74830 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
															<div class="wpb_wrapper">
																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 16px;"><span style="font-size: 18px;"><strong>关于我们</strong></span></span>
																	</span>
																</div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;">応损捠捡换攳，攴朰朲朳枛朸桸桹桺奿妀。夲夳夵壱売壳圢圤圥圦圧！圩圪囡団囤囥咍咎，咐咑厺厼厽桻桼忝忞帄帇帉帊峢団囤囥咍咎，咐咑厺厼厽桻桼忝忞帄帇帉帊峢団囤囥</span>。</span>
																	</span>
																</div>

															</div>
														</div>
													</div>
												</div>
											</div>
											<style>
												.qfy-column-2-5932a717243ee687312 > .column_inner:hover {}
												
												.qfy-column-2-5932a717243ee687312 > .column_inner:hover {}
												
												.qfy-column-2-5932a717243ee687312 > .column_inner:hover >.background-media {}
												
												.qfy-column-2-5932a717243ee687312 > .column_inner:hover >.background-overlay {}
												
												@media only screen and (min-width: 992px) {
													.qfy-column-2-5932a717243ee687312 > .column_inner {
														padding-left: 20px;
														padding-right: 20px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.wpb_row .vc_span_class.qfy-column-2-5932a717243ee687312 {}
													;
												}
												
												@media only screen and (max-width: 992px) {
													.qfy-column-2-5932a717243ee687312 > .column_inner {
														margin: 0px auto 0px !important;
														padding-left: 0px;
														padding-right: 0px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.display_entire .wpb_row .vc_span_class.qfy-column-2-5932a717243ee687312 {}
													;
												}
											</style>
											<div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-3-5932a717248f1288912 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight="">
												<div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner ">
													<div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div>
													<div class="column_containter" style="z-index:3;position:relative;">
														<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_po1lv" data-anitime="0.7" class="qfy-element qfy-text qfy-text-64814 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
															<div class="wpb_wrapper">
																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><strong><span style="font-family: 微軟正黑體;"><span style="font-size: 18px;">新品发布</span></span>
																	</strong>
																	</span>
																</div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-family: 华文楷体;"></span></span>
																	</span>

																	<div><span style="color:#A9A9A9;"><span style="font-size: 12px;">Created especially for you </span></span>
																	</div>

																	<div>
																		<div><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;">October 1, 2</span></span>
																			</span>
																		</div>

																		<hr bitsize="100" class="bitLine" style="border-width: 1px 0px 0px; border-style: solid; border-color: rgb(68, 68, 68) -moz-use-text-color; padding: 0px; width: 100%; height: 1px; float: none; margin: 2px 2px 10px 0px; top: 5px;">
																	</div>

																	<div><span style="color:#A9A9A9;"><span style="font-size: 12px;">&nbsp;Awesome theme with endless possibilities. August 28, 2013 </span></span>
																	</div>
																</div>

															</div>
														</div>
													</div>
												</div>
											</div>
											<style>
												.qfy-column-3-5932a717248f1288912 > .column_inner:hover {}
												
												.qfy-column-3-5932a717248f1288912 > .column_inner:hover {}
												
												.qfy-column-3-5932a717248f1288912 > .column_inner:hover >.background-media {}
												
												.qfy-column-3-5932a717248f1288912 > .column_inner:hover >.background-overlay {}
												
												@media only screen and (min-width: 992px) {
													.qfy-column-3-5932a717248f1288912 > .column_inner {
														padding-left: 20px;
														padding-right: 20px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.wpb_row .vc_span_class.qfy-column-3-5932a717248f1288912 {}
													;
												}
												
												@media only screen and (max-width: 992px) {
													.qfy-column-3-5932a717248f1288912 > .column_inner {
														margin: 0px auto 0px !important;
														padding-left: 0px;
														padding-right: 0px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.display_entire .wpb_row .vc_span_class.qfy-column-3-5932a717248f1288912 {}
													;
												}
											</style>
											<div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-4-5932a71724e67844128 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight="">
												<div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner ">
													<div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div>
													<div class="column_containter" style="z-index:3;position:relative;">
														<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_3z5iv" data-anitime="0.7" class="qfy-element qfy-text qfy-text-15757 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
															<div class="wpb_wrapper">
																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 16px;"><span style="font-size: 18px;"><strong>公司介绍</strong></span></span>
																	</span>
																</div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;">応损捠捡换攳，攴朰朲朳枛朸桸桹桺奿妀。夲夳夵壱売壳圢圤圥圦圧！圩圪囡団囤囥咍咎，咐咑厺厼厽桻桼忝忞帄帇帉帊峢団囤囥咍咎，咐咑厺厼厽桻桼忝忞帄帇帉帊峢団囤囥</span>。</span>
																	</span>
																</div>

															</div>
														</div>
													</div>
												</div>
											</div>
											<style>
												.qfy-column-4-5932a71724e67844128 > .column_inner:hover {}
												
												.qfy-column-4-5932a71724e67844128 > .column_inner:hover {}
												
												.qfy-column-4-5932a71724e67844128 > .column_inner:hover >.background-media {}
												
												.qfy-column-4-5932a71724e67844128 > .column_inner:hover >.background-overlay {}
												
												@media only screen and (min-width: 992px) {
													.qfy-column-4-5932a71724e67844128 > .column_inner {
														padding-left: 20px;
														padding-right: 20px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.wpb_row .vc_span_class.qfy-column-4-5932a71724e67844128 {}
													;
												}
												
												@media only screen and (max-width: 992px) {
													.qfy-column-4-5932a71724e67844128 > .column_inner {
														margin: 0px auto 0px !important;
														padding-left: 0px;
														padding-right: 0px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.display_entire .wpb_row .vc_span_class.qfy-column-4-5932a71724e67844128 {}
													;
												}
											</style>
											<div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-5-5932a71725361382122 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight="">
												<div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner ">
													<div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div>
													<div class="column_containter" style="z-index:3;position:relative;">
														<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_y7zwd" data-anitime="0.7" class="qfy-element qfy-text qfy-text-107 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
															<div class="wpb_wrapper">
																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 18px;"><strong>联系方式</strong></span></span>
																</div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

																<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-family: 华文楷体;"></span></span>
																	<a class="bitIcon iconLeft" data-tooltip="off" style="" target="_blank" tooltip="off">
																		<b style="color: rgb(68, 68, 68); border: 0px none; font-size: 13px; border-radius: 0px;"> 
<i class="glyphicon glyphicon-envelope" style="margin: 2px 6px; top: 0px;"> </i>
</b>
																		<span class="iconText" style="font-size:14px;"></span></a><span style="font-size: 12px;">info@softwore.com</span><br>
																	<span style="font-size: 14px;"></span></span>

																	<div>
																		<div><span style="color:#A9A9A9;"><a class="bitIcon iconLeft" data-tooltip="off" style="" target="_blank" tooltip="off"> 
<b style="color: rgb(68, 68, 68); border: 0px none; font-size: 13px; border-radius: 0px;"> 
<i class="glyphicon glyphicon-icon-phone" style="margin: 2px 6px; top: 0px;"> </i>
</b>
<span class="iconText" style="font-size:14px;"></span></a><span style="font-size: 12px;">+86 188 1234 1234</span></span>
																		</div>

																		<div><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;"></span></span>
																			</span>
																		</div>
																	</div>

																	<div><span style="font-size: 12px;"><span style="color:#A9A9A9;"><a class="bitIcon iconLeft" data-tooltip="off" style="" target="_blank" tooltip="off" url-flag="0" url-flagtarget="_blank"> 
<b style="color: rgb(68, 68, 68); border: 0px none; font-size: 12px; border-radius: 0px;"> 
<i class="glyphicon glyphicon-icon-globe" style="margin: 2px 6px; top: 0px;"> </i>
</b>
<span class="iconText" style="font-size: 14px;"></span></a><span style="font-size: 12px;">Little Lomsdale St.</span></span>
																		</span>
																	</div>
																</div>

															</div>
														</div>
													</div>
												</div>
											</div>
											<style>
												.qfy-column-5-5932a71725361382122 > .column_inner:hover {}
												
												.qfy-column-5-5932a71725361382122 > .column_inner:hover {}
												
												.qfy-column-5-5932a71725361382122 > .column_inner:hover >.background-media {}
												
												.qfy-column-5-5932a71725361382122 > .column_inner:hover >.background-overlay {}
												
												@media only screen and (min-width: 992px) {
													.qfy-column-5-5932a71725361382122 > .column_inner {
														padding-left: 20px;
														padding-right: 20px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.wpb_row .vc_span_class.qfy-column-5-5932a71725361382122 {}
													;
												}
												
												@media only screen and (max-width: 992px) {
													.qfy-column-5-5932a71725361382122 > .column_inner {
														margin: 0px auto 0px !important;
														padding-left: 0px;
														padding-right: 0px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.display_entire .wpb_row .vc_span_class.qfy-column-5-5932a71725361382122 {}
													;
												}
											</style>
											<div class="wf-mobile-hidden" style="clear:both;"></div>
										</div>
									</div>
									<style>
										@media only screen and (min-width: 992px) {
											section.section.qfy-row-2-5932a71724163122179 {
												padding-left: 0px;
												padding-right: 0px;
												padding-top: 20px;
												padding-bottom: 0px;
												margin-top: 0px;
											}
										}
										
										@media only screen and (max-width: 992px) {
											.bit-html section.section.qfy-row-2-5932a71724163122179 {
												padding-left: 15px;
												padding-right: 15px;
												padding-top: 20px;
												padding-bottom: 0px;
												margin-top: 0px;
											}
										}
									</style>
								</section>
								<section data-fixheight="" class="qfy-row-3-5932a71725918139858 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_hhsp3" style="margin-bottom:0px;border-radius:0px;color:#a9a9a9;">
									<div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

									<div class="container">
										<div class="row wpb_row">
											<div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-6-5932a71725ac4131194 qfy-column-inner  vc_span12  text-default small-screen-undefined fullrow" data-dw="1/1" data-fixheight="">
												<div style=";position:relative;;" class="column_inner ">
													<div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div>
													<div class="column_containter" style="z-index:3;position:relative;">
														<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_rg8v4" data-anitime="0.7" class="qfy-element qfy-text qfy-text-20243 wpb_text_column wpb_content_element  mobile_fontsize" style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
															<div class="wpb_wrapper">
																<div style="text-align: center;"><span style="font-size:14px;">&nbsp;版权所有 ©2017&nbsp;&nbsp; 地址：苏州市工业园区大道金鸡湖大道99号&nbsp;&nbsp;&nbsp;&nbsp; 苏ICP备1230012300号</span></div>

															</div>
														</div>
													</div>
												</div>
											</div>
											<style>
												.qfy-column-6-5932a71725ac4131194 > .column_inner:hover {}
												
												.qfy-column-6-5932a71725ac4131194 > .column_inner:hover {}
												
												.qfy-column-6-5932a71725ac4131194 > .column_inner:hover >.background-media {}
												
												.qfy-column-6-5932a71725ac4131194 > .column_inner:hover >.background-overlay {}
												
												@media only screen and (min-width: 992px) {
													.qfy-column-6-5932a71725ac4131194 > .column_inner {
														padding-left: 0px;
														padding-right: 0px;
														padding-top: 0px;
														padding-bottom: 0px;
													}
													.wpb_row .vc_span_class.qfy-column-6-5932a71725ac4131194 {}
													;
												}
												
												@media only screen and (max-width: 992px) {
													.qfy-column-6-5932a71725ac4131194 > .column_inner {
														margin: 0px auto 0px !important;
														padding-left: 0px;
														padding-right: 0px;
														padding-top: px;
														padding-bottom: px;
													}
													.display_entire .wpb_row .vc_span_class.qfy-column-6-5932a71725ac4131194 {}
													;
												}
											</style>
										</div>
									</div>
									<style>
										@media only screen and (min-width: 992px) {
											section.section.qfy-row-3-5932a71725918139858 {
												padding-left: 0px;
												padding-right: 0px;
												padding-top: 20px;
												padding-bottom: 0px;
												margin-top: 20px;
											}
											section.section.qfy-row-3-5932a71725918139858 > .container {
												max-width: 1280px;
												margin: 0 auto;
											}
										}
										
										@media only screen and (max-width: 992px) {
											.bit-html section.section.qfy-row-3-5932a71725918139858 {
												padding-left: 15px;
												padding-right: 15px;
												padding-top: 20px;
												padding-bottom: 0px;
												margin-top: 0px;
											}
										}
									</style>
								</section>
							</div>
						</section>
					</div>
					<!-- .wf-container -->
				</div>
				<!-- .wf-wrap -->
				<!--  ************begin************* -->
				<style type="text/css" id="static-stylesheet-footer">
					#footer.footer .footer1 .widget {
						width: 99%;
					}
					
					#footer.footer .footer1 .widget.simplepage {
						width: 100%;
					}
					
					#footer.footer .footer2 .widget {
						width: 99%;
					}
					
					#footer.footer .footer2 .widget.simplepage {
						width: 100%;
					}
					
					#footer.footer .footer3 .widget {
						width: 99%;
					}
					
					#footer.footer .footer3 .widget.simplepage {
						width: 100%;
					}
					
					.bit_main_content {
						margin-top: 0px;
						margin-bottom: 0px
					}
				</style>
				<!--  ************end************* -->
			</footer>

			<a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282#" class="scroll-top "></a>

		</div>
		<!-- #page -->

		<div style="display:none;"></div>

		<a data-cltversion="2.4.9" data-cltsource="10023" data-cltuuid="29cbf51b36aef0e3a60ce6505bb26ccc" data-cltats="4" href="javascript:" id="yht-info-explugin" style="display: none;"></a>
	</body>

</html>