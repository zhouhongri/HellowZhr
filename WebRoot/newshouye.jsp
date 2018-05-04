<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html class=" bit-html js_active  vc_desktop  vc_transform  vc_transform  csstransforms csstransforms3d csstransitions iphorm-js js no-touch cssanimations csstransforms csstransforms3d csstransitions cssfilters mobile-false no-touch" dir="ltr" lang="zh-CN" style=""><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- for 360 -->
	<meta name="renderer" content="webkit"> 
	<meta name="applicable-device" content="pc,mobile"> 
	<meta http-equiv="Cache-Control" content="no-transform"> <!-- for baidu -->
    <meta name="MobileOptimized" content="width">
    <meta name="HandheldFriendly" content="true">
    
	<!-- start of customer header -->
		<!-- end of customer header -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
			<title>精于算绩</title>
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="http://57e8ecf41155d.t73.qifeiye.com/xmlrpc.php">
		<!--[if lt IE 9]>
	<script src="http://57e8ecf41155d.t73.qifeiye.com/FeiEditor/bitSite/js/html5shiv.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="./shouyefiles/respond.css" type="text/css" media="screen">
	<!--[if lt IE 9]>
	<script src="http://57e8ecf41155d.t73.qifeiye.com/FeiEditor/bitSite/js/respond.min.js"></script>
	<![endif]-->
		<style type="text/css" id="static-stylesheet"></style>
	<link rel="stylesheet" href="./shouyefiles/3fd8903d40c7ca4d543fb110f0a63e09.css" type="text/css" media="all">
<link rel="stylesheet" id="dt-main-css" href="./shouyefiles/main.css" type="text/css" media="all">
<link rel="stylesheet" id="dt-custom-less-css" href="./shouyefiles/custom-7deeeba33b.css" type="text/css" media="all">
<link rel="stylesheet" id="dt-bit-custom-less-css" href="./shouyefiles/bit-custom-7deeeba33b.css" type="text/css" media="all">
<link rel="stylesheet" id="qfy_dynamic_css-css" href="./shouyefiles/qfy-custom-style.css" type="text/css" media="all">
<link rel="stylesheet" href="./shouyefiles/29d16d3b137ddaaefadf30cdc6b21024.css" type="text/css" media="all">
<style>
#main-nav{

left:50px !important;

}
		#newshouyelogo{
width: 300px !important;
height: 280px !important;
max-height:350px !important;
margin-top:-65px;
}
#zhucedenglu{
margin-top:-100px !important;
}
#footerlogo{
margin-top:-100px !important;
width: 250px !important;
height: 230px !important;
max-height:350px !important;
}
</style>
<script src="./shouyefiles/hm.js"></script><script type="text/javascript">
/* <![CDATA[ */
/* thickbox */
var thickboxL10n = {"next":"\u4e0b\u4e00\u5f20 >","prev":"< \u4e0a\u4e00\u5f20","image":"\u56fe\u7247","of":"\/","close":"\u5173\u95ed","noiframes":"\u8fd9\u4e2a\u529f\u80fd\u9700\u8981iframe\u7684\u652f\u6301\u3002\u60a8\u53ef\u80fd\u7981\u6b62\u4e86iframe\u7684\u663e\u793a\uff0c\u6216\u60a8\u7684\u6d4f\u89c8\u5668\u4e0d\u652f\u6301\u6b64\u529f\u80fd\u3002","loadingAnimation":"\/\/fast.qifeiye.com\/FeiEditor\/bitSite\/images\/preloader.gif"};
/* iphorm-plugin */
var iphormL10n = {"error_submitting_form":"\u5728\u63d0\u4ea4\u8868\u5355\u65f6\u6709\u9519\u8bef","swfupload_flash_url":"http:\/\/57e8ecf41155d.t73.qifeiye.com\/qfy-includes\/js\/swfupload\/swfupload.swf","swfupload_upload_url":"http:\/\/57e8ecf41155d.t73.qifeiye.com\/?iphorm_swfupload=1","swfupload_too_many":"\u961f\u5217\u4e2d\u7684\u6587\u4ef6\u592a\u591a\u4e86","swfupload_file_too_big":"\u6587\u4ef6\u592a\u5927\u4e86","swfupload_file_empty":"\u4e0d\u80fd\u4e0a\u4f20\u7a7a\u6587\u4ef6","swfupload_file_type_not_allowed":"\u8be5\u6587\u4ef6\u7684\u7c7b\u578b\u662f\u4e0d\u5141\u8bb8\u4e0a\u4f20\u7684","swfupload_unknown_queue_error":"\u672a\u77e5\u961f\u5217\u9519\u8bef\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5","swfupload_upload_error":"\u4e0a\u4f20\u9519\u8bef","swfupload_upload_failed":"\u4e0a\u4f20\u5931\u8d25","swfupload_server_io":"\u670d\u52a1\u5668IO\u9519\u8bef","swfupload_security_error":"\u5b89\u5168\u9519\u8bef","swfupload_limit_exceeded":"\u4e0a\u4f20\u8d85\u8fc7\u9650\u5236","swfupload_validation_failed":"\u9a8c\u8bc1\u5931\u8d25","swfupload_upload_stopped":"\u4e0a\u4f20\u88ab\u7ec8\u6b62","swfupload_unknown_upload_error":"\u6587\u4ef6\u4e0a\u4f20\u88ab\u610f\u5916\u7ec8\u6b62","plugin_url":"http:\/\/57e8ecf41155d.t73.qifeiye.com\/qfy-content\/plugins\/qfy_form","preview_no_submit":"\u5728\u9884\u89c8\u6a21\u5f0f\u4e0b\u4e0d\u80fd\u63d0\u4ea4\u8868\u5355"};
/* dt-plugins */
var dtLocal = {"passText":"\u67e5\u770b\u8fd9\u4e2a\u52a0\u5bc6\u8d44\u8baf\uff0c\u8bf7\u5728\u4e0b\u9762\u8f93\u5165\u5bc6\u7801\uff1a","moreButtonAllLoadedText":"\u5168\u90e8\u5df2\u52a0\u8f7d","postID":"2160","ajaxurl":"http:\/\/57e8ecf41155d.t73.qifeiye.com\/admin\/admin-ajax.php","contactNonce":"0273e2b12d","ajaxNonce":"227f06fafe","pageData":{"type":"page","template":"page","layout":null},"themeSettings":{"smoothScroll":"on"}};

/* ]]> */
</script>
<script type="text/javascript" src="./shouyefiles/75de9791a479e56c42678234003e3078.js"></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://57e8ecf41155d.t73.qifeiye.com/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://57e8ecf41155d.t73.qifeiye.com/qfy-includes/wlwmanifest.xml"> 

<link rel="canonical" href="./shouyefiles/newshouye.html">
<link rel="shortlink" href="http://57e8ecf41155d.t73.qifeiye.com/?p=2160">
<style class="style_0">.bitRightSider .widget-title,.bitLeftSider .widget-title{padding:0 0 0 10px;height:28px;line-height:28px;background-color:#024886;margin:0px;font-family:;font-size:px;font-weight:normal;font-style:normal;text-decoration:none;color:#fff;border-top:0;border-left:0;border-right:0;border-bottom:0;background-image: url(//fast.qifeiye.com/qfy-content/plugins//bit-plugin/assets/frame/header_bg/1/bg.png);background-repeat: repeat;-webkit-border-top-left-radius: 0;-webkit-border-top-right-radius: 0;-moz-border-radius-topleft: 0;-moz-border-radius-topright: 0;border-top-left-radius: 0;border-top-right-radius: 0;} .bitRightSider .bitWidgetFrame,.bitLeftSider .bitWidgetFrame{border-top:0;border-bottom:1px solid #bababa;border-left:1px solid #bababa;border-right:1px solid #bababa;padding:4px 10px 4px 10px;-webkit-border-bottom-left-radius: 0;-webkit-border-bottom-right-radius: 0;-moz-border-radius-bottomleft: 0;-moz-border-radius-bottomright: 0;border-bottom-left-radius: 0;border-bottom-right-radius: 0;}.bitRightSider .site_tooler,.bitLeftSider .site_tooler{-webkit-box-shadow:none;box-shadow:none;}.bitRightLeftSiderWidget.site_tooler .bitWidgetFrame,.bitRightLeftSiderWidget.site_tooler .bitWidgetFrame{background-color:transparent;background-image:none;-webkit-border-bottom-left-radius: 0px;border-bottom-left-radius: 0px;-webkit-border-bottom-right-radius: 0px;border-bottom-right-radius: 0px;}#page{z-index:999}#page .blue{color:#29cee9}#page .red{color:#f22}.ovf-hidden{overflow:hidden;height:100%}.ajax-loading{z-index:2147483647;background-color:#000;position:fixed;width:100%;height:100%;top:0;text-align:center;display:none;opacity:.6;filter:alpha(opacity=60)}.ajax-loading div{margin-top:23%}.ajax-loading img{width:50px;height:50px}ul,li,p,em{list-style-type:none;-webkit-padding-start:0;-webkit-margin-before:0;-webkit-margin-after:0;-webkit-margin-start:0;-webkit-margin-end:0;margin:0;padding:0}div[id^="yht"] *,div[class^="yht"] *{box-sizing:border-box;margin:0;padding:0;text-decoration:inherit}.yht-red{color:#FC4E4E}.yht-panel-right{position:fixed;right:0;bottom:300px;z-index:2147483647}.yht-panel-right .yht-hide{display:none}.yht-panel-right a{position:relative;display:inline-block}.yht-panel-right a .close{position:absolute;right:0;top:-5px;width:11px;height:11px;display:inline-block;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAALCAYAAACprHcmAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6Njk5QUNFNjhGM0U3MTFFNkIyQjVGRDJDQzY2OENDRjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Njk5QUNFNjlGM0U3MTFFNkIyQjVGRDJDQzY2OENDRjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo2OTlBQ0U2NkYzRTcxMUU2QjJCNUZEMkNDNjY4Q0NGOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo2OTlBQ0U2N0YzRTcxMUU2QjJCNUZEMkNDNjY4Q0NGOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pv16ibIAAAEkSURBVHjaVJC/L0NRFMe/97E+NjpIvIGxTYxIMVKNRKT8DxYjEoPRyNJEhMGmwdh2E/EfWCyGiqXmtxE5Pve+1746ud9zz4/vPefc46y2pCCmWdSRnKvhlUAftMEZuQ85ydnGItqtE2yBWKNihnIpxF2MbgQxwbgjEReE0MkX8UZMzBdKItQxmAiEm0ep1sjIdYpdtfIHoePh2OncTBNjMgR/fqX9A2rMS9s8ur2W3t98C3+mxiFND2ds30uVBam6Jj0/SZ2HbKysesmP8TUk1/ek5RXpBWJ1VdpsDIhe+p7cGX7Kt26es6wT7gtpa6f4LNtw7DnBeWWmuEjYaEUvKaFKhOrle0xD+B9nQDTy1ovyZBeUwSX4BN/hNnyzcp7XnwADAO0gVGJsn/VTAAAAAElFTkSuQmCC) no-repeat}.yht-panel-right a .tips{position:absolute;right:14px;bottom:22px;width:10px;height:10px;display:inline-block;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjlBMTlCNzlGMjhGMTFFNkFGNzJDMUU5QzcyNTM2NzkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjlBMTlCN0FGMjhGMTFFNkFGNzJDMUU5QzcyNTM2NzkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCOUExOUI3N0YyOEYxMUU2QUY3MkMxRTlDNzI1MzY3OSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCOUExOUI3OEYyOEYxMUU2QUY3MkMxRTlDNzI1MzY3OSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PlPVhYUAAACESURBVHjaYvz//z8DFMgDsS4Qi0L5r4H4EhA/AnEYoQpNgdiQAQGEgfgtlH0eiE8zAQk5JEUgBZlAbIWkCSQnD1KohyTIBcTHGTCBLguSm0DgMRBzYlEoysRAJGCC+o4QeA1SeBlN8DuSj2HgMq7gQQbg4GHEEuBiUP4rqG0PQRyAAAMApbkf/hNU998AAAAASUVORK5CYII=) no-repeat}.yht-panel-right a .tips:hover .tip{display:block}.yht-panel-right a .tip{display:inline-block;vertical-align:middle;margin:5px;width:60px;font:12px "Microsoft YaHei","SimHei","Arial"!important;word-break:break-line;word-wrap:break-word;text-align:center;position:absolute;top:5px;left:-44px;line-height:16px;color:#29cee9;padding-top:9px}.yht-panel-right a .tip .tip-content{position:relative;background:#fff;border-radius:8px;border:1px solid #29cee9}.yht-panel-right a .tip .tip-content:before,.yht-panel-right a .tip .tip-content:after,.yht-panel-right a .tip .tip-content .before,.yht-panel-right a .tip .tip-content .after{position:absolute;top:-13px;right:5px;width:0;height:0;content:'';border-style:solid;border-color:transparent;border-bottom:9px solid #29cee9;border-left-width:9px;border-right-width:10px}.yht-panel-right a .tip .tip-content:after,.yht-panel-right a .tip .tip-content .after{position:absolute;top:-12px;border-bottom-color:#fff}.yht-panel-right a .tip .tip-content{padding:3px}.yht-panel-right a .tip{display:none;z-index:999999}.yht-panel-right a>div{position:absolute;right:20px;top:-35px}.yht-panel-as{position:fixed;bottom:20px;left:0;z-index:2147483647}.yht-panel-as .yht-hide{display:none}.yht-small-panel-bg{position:relative;display:inline-block}.yht-small-panel-bg img{cursor:pointer}.yht-small-panel-bg .yht-small-panel-close{position:absolute;top:0;right:0}.yht-panel-at{position:relative;font-size:14px}.yht-panel-at .yht-red-pack{position:absolute;top:-47px;left:73px}.yht-panel-at .yht-panel-back{position:absolute;top:105px;right:6px}.yht-panel-at .yht-read-inpunt{position:absolute;top:33px;right:240px;font-family:"Microsoft YaHei","SimHei","Arial"!important;display:inline-block;width:250px;text-align:center;color:#de8001}.yht-panel-at .yht-read-inpunt input{line-height:30px;text-indent:10px;font-family:"Microsoft YaHei","SimHei","Arial"!important}.yht-panel-at .yht-read-inpunt input,.yht-panel-at .yht-read-inpunt button{height:30px;display:inline-block;border:none;background:#fff}.yht-panel-at .yht-read-inpunt .yht-mobile,.yht-panel-at .yht-read-inpunt button{width:205px}.yht-panel-at .yht-read-inpunt .yht-mobile{margin-top:10px}.yht-panel-at .yht-read-inpunt .yht-image{width:205px;margin:10px 0}.yht-panel-at .yht-read-inpunt .yht-image a{float:right}.yht-panel-at .yht-read-inpunt .yht-image-code{width:104px;margin-left:6px}.yht-panel-at .yht-read-inpunt img{width:62px;height:28px;display:inline-block}.yht-panel-at .yht-read-inpunt button{background:#de8001;color:#fff;line-height:25px;font:14px "Microsoft YaHei","SimHei","Arial"!important;text-indent:0}.yht-panel-at .yht-read-inpunt button:hover{background:#c57101}.panel-qq-zone{position:fixed;right:0;bottom:20px;z-index:2147483647;box-shadow:3px 3px 3px #E2E2E2,2px 2px 0 #333}.panel-qq-zone .yht-hide{display:none}.panel-qq-zone .close{position:absolute;right:0;top:0;width:22px;height:22px;display:inline-block;z-index:1111;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAVCAYAAABCIB6VAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NDg0RjM3MTdGRTIzMTFFNjg5MDFFNzlDOUNGMUQxMDciIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NDg0RjM3MThGRTIzMTFFNjg5MDFFNzlDOUNGMUQxMDciPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0ODRGMzcxNUZFMjMxMUU2ODkwMUU3OUM5Q0YxRDEwNyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0ODRGMzcxNkZFMjMxMUU2ODkwMUU3OUM5Q0YxRDEwNyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pk/mPTAAAAGpSURBVHjatJXNTsJAEMenFctHKSAQpCj4kagvwAt4N/gsepWjnHkY7voCvoAXD0SjQBERCy2U1tlt0U0ptJI6yTY7s9lfpzv/nXLK4wOg3eK4gXCsgaPOIfgCJy0I12o8Pq4hfLsi4CobSe2fQjwrBybEMgVIl8/c4SoBS2zE0MeQyJcgls77QgVpB8RCGYyp5l6SIu7IuPcM5kwHcfcALPT1obISKsnHMFZeYPL+trQe8dqkffSAUJMI5zjO9hmLSllIykcroSvBFD5EGELFQgVfYqGvBIauBduZd5Fp0sxNYwamOQ8E9QWDc8amMYXU3gn1R69PMB0NfAvLB5GUNZ8zcyOQDH0zXpwpyRTPgupc7bTtGmwKZgu1+Hy120YpVn4L/FdwNIXQ4nKhbClaVOdApdgNDqaZEihelsmg4yFFIj2OZk5U43WJlsDxnAyJXAlUhGoeUFbnVIrFQ9gSYjQJN3jE9gtBTNMs10F/pPjZB35bACGZcS99kX58h5PzkNvmPdFx8x/6cZN3/h6NEKGE1VrcvDqOS/IJRKobwFRnb81hwbcAAwDKH7n8m4BodQAAAABJRU5ErkJggg==) no-repeat}.panel-qq-zone a{position:relative;display:inline-block}.panel-qq-zone a .go{position:absolute;right:40px;bottom:16px;font:20px "Microsoft YaHei","SimHei","Arial"!important;width:164px;height:40px;-webkit-user-select:none;-moz-user-select:none;user-select:none;line-height:40px;text-align:center;background:#ec4241;border-radius:5px;cursor:pointer;border:none;color:#fff}.panel-qq-zone a .go:hover{background-color:#ea2b2a}.panel-qq-zone a .go:active{background-color:#ea2b2a;outline:thin dotted;outline-offset:-2px}body .jd-hide{display:none}.jd-detail-left-recommend{font:13px "Microsoft YaHei","SimHei","Arial"!important;color:#333;position:fixed;top:150px;right:0;background-color:#fff;z-index:2147483647;-webkit-box-shadow:0 0 10px rgba(0,204,204,.5);-ms-box-shadow:0 0 10px rgba(0,204,204,.5);box-shadow:0 0 10px rgba(0,204,204,.5)}.jd-hot-goods{float:left;width:180px}.jd-hot-goods .title{font:600 16px/34px "Microsoft YaHei","SimHei","Arial"!important;width:180px;text-align:left;background-color:#ff8b8b;color:#fff;position:relative}.jd-hot-goods .title:hover .tip{display:block}.jd-hot-goods .title em{background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAcAAAAMCAYAAACulacQAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RjlEMzcxNzMwNEFBMTFFN0FBN0JEQkVEM0IxMkIxNzQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RjlEMzcxNzQwNEFBMTFFN0FBN0JEQkVEM0IxMkIxNzQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGOUQzNzE3MTA0QUExMUU3QUE3QkRCRUQzQjEyQjE3NCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGOUQzNzE3MjA0QUExMUU3QUE3QkRCRUQzQjEyQjE3NCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PlykkQEAAAB5SURBVHjaYvj//78GEO8GYn4gZkDGIOL4fwg4AsRc6JIqQPwKqmAHELMhS4KwPhB/gCpYDcTMyJIgbAXEX6EK5gAxIwOaI9yA+CdUQS8TAypgQWL/RdZli2TsTGRjjZActBzZQepIXtmK7hVYIBzEFQjbsQUfQIABAPC3AbsL1ASsAAAAAElFTkSuQmCC) no-repeat center;cursor:pointer;display:inline-block;width:7px;height:12px;margin:0 28px 0 10px}.jd-hot-goods .title p{padding-left:20px;cursor:pointer;display:inline-block;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAASCAYAAAC9+TVUAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6N0M2Nzc2MEUwNEE5MTFFNzg0QzRBOEM1MzhCOUI0NDQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6N0M2Nzc2MEYwNEE5MTFFNzg0QzRBOEM1MzhCOUI0NDQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo3QzY3NzYwQzA0QTkxMUU3ODRDNEE4QzUzOEI5QjQ0NCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo3QzY3NzYwRDA0QTkxMUU3ODRDNEE4QzUzOEI5QjQ0NCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PmZuzDoAAALtSURBVHjajJNJaFRBEIb/7vcyZlwyGRNFECEuuOFCFBERPShRoqgIEfGg4iEIgoLoUTx48CCCEkUUUTS4geJCQFDc8OASl0TBuOESxySTzWQyk3nTb+myeoxh1KAWFK+rX33/q1ddDQxgRDSF/TR7G/2wFvbj7BMGykdC6Qi/HJMjsI3dpYEtw74pJ3eM4ZF09SkO1vZtbs8lmtKKqt42UUN36nexzX35aw0vCVjF8coupWdowj7zkp+IpRXOf2mH4qDqdQzxjNtfPW8d7Fa6xHCGFxxQJCQoIFR0ZPRuFfjT19e+k52uh2jIBnkuAstG0tco0D5qFs3SAYknxflyrxS4mnBJSFdTghWFJXCmUDXWh1oeytIvtRgHFwW8OTiUh6ECKHYSmNr8EiL+WEZU41sWuGA4w9tEuJ/2acVgW4R9ldgYjo5GpO4ExqdqsLByC8SwKKijGXcuHwNpDa/8ADhvwyBWYA6Gl7ZEBZcUSyXbuFMa7Z29iMdb0PutA+UTS1BWJFE+bRLyhEZGKTR+bsrmpXpaYTjDC9OozkwQyku8icvAiT6v/wTfUyidX4ZIdDgXLMwxIJ1K4WXtPbieh9kzx4LscJcXmTKqKN9ypRHJLnQmSKZ9qIyDBeVrUFg0EkLarGFln0MKCjF30Qoox0HSAaRW2nC/DJ3z7b3T7gRk/G/GVVNrOiDV87VfQPQNjaTA9YQVkvhvI4OPEkK0ZiHu8pz/Eehqb8mJBHh0lptVFnR8Gs0b/7QHN6/gY0Nddn2t+ghqzh7dVbls1jg7qylwvcvVqRH5cmgu9OHVs19E5pWtRnXVHj7uAM2xRsxbWlFSECm8KH4mtDnBfj7JHSPCEuIfFZ07eRgvbpzRPHwy1tHztL8PI8PWTq7o0NdUoLtdgvfb7/HdQtIjNPVqWrxuy+2M8i+1JXrJtuTxPz7KRzjZD4ITrhZzfeIr9WPWYAnS3PrXtpRbi8PW3U1Lpg0KtC6tvtXw6LsAAwDnbfhm4S/8xQAAAABJRU5ErkJggg==) no-repeat left;background-size:17px 18px}.jd-hot-goods .title .tip{display:inline-block;vertical-align:middle;margin:5px;font:400 12px "Microsoft YaHei","SimHei","Arial"!important;min-width:30px;position:absolute;top:-27px;left:6px;padding-bottom:6px;word-break:break-line;word-wrap:break-word;line-height:16px;color:#29cee9}.jd-hot-goods .title .tip .tip-content{position:relative;background:#fff;border-radius:8px;border:1px solid #29cee9}.jd-hot-goods .title .tip .tip-content:before,.jd-hot-goods .title .tip .tip-content:after,.jd-hot-goods .title .tip .tip-content .before,.jd-hot-goods .title .tip .tip-content .after{position:absolute;right:40px;bottom:-9px;width:0;height:0;content:'';border-style:solid;border-color:transparent;border-top:5px solid #29cee9;border-left-width:5px;border-right-width:6px}.jd-hot-goods .title .tip .tip-content:after,.jd-hot-goods .title .tip .tip-content .after{position:absolute;bottom:-8px;border-top-color:#fff}.jd-hot-goods .title .tip .tip-content{padding:3px 10px}.jd-hot-goods .title .tip{display:none;z-index:999999}.jd-hot-goods span{color:#8C8C8C}.jd-hot-goods .guess-item-img{width:108px;height:80px;display:inline-block;vertical-align:middle;font-size:0;line-height:0;text-align:center}.jd-hot-goods .guess-item-img:before{display:inline-block;vertical-align:middle;content:"";height:100%;font-size:0;line-height:0;width:0}.jd-hot-goods .guess-item-img img{display:inline-block;max-width:100%;max-height:100%;display:inline-block;vertical-align:middle;font-size:1rem;line-height:normal}.jd-hot-goods ul{margin-top:10px}.jd-hot-goods ul li{text-align:center;color:#333;font:13px "Microsoft YaHei","SimHei","Arial"!important}.jd-hot-goods ul li p{overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:2;width:150px;margin:10px 0 0 15px}.jd-hot-goods ul li.hide{display:none}.jd-hot-goods ul .jd-price,.jd-next-hot{text-align:center;margin-bottom:10px}.jd-next-hot{color:#949395}.jd-next-hot .active{margin-left:7px}.jd-next-hot .total{margin-right:7px}.jd-next-hot em{background-color:#f0f0f0;width:20px;height:20px;display:inline-block;font:600 12px "Microsoft YaHei","SimHei","Arial"!important;color:#fff;border-radius:50%;text-align:center;line-height:15px;cursor:pointer}.jd-hot-goods-close{display:block;width:38px;max-width:38px;font:17px/26px "Microsoft YaHei","SimHei","Arial"!important;color:#ff8b8b;cursor:pointer}.jd-hot-goods-close em{background:#ff8b8b url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAMCAYAAAC5tzfZAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MDUyNzM5RkJGOThGMTFFNkJBMUZCREY1RDAxNDM2MkMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MDUyNzM5RkNGOThGMTFFNkJBMUZCREY1RDAxNDM2MkMiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDowNTI3MzlGOUY5OEYxMUU2QkExRkJERjVEMDE0MzYyQyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDowNTI3MzlGQUY5OEYxMUU2QkExRkJERjVEMDE0MzYyQyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjiqrSoAAAC+SURBVHjajJJbCsIwEEWnugYR0R/xtTIF/RAXoaCgFMHtCNIliIj4qeIu2nhHb+gQInTgNHDaS5LOiHNOAhJwANPAd8AJ9GKBvftVDkb0bXCnz8JQyhcFmNC1wI3+Abo2sDWBGV0TXOmfejT1PrA2gTldA1zoX2DgN9DH0pW1MIEz3dvc7UtNRHIpq861IFr6TSK2mF5V2G1oj+fZVLhXPwwpuyp/UCITkUaaa3uVyZ8x0qkYB16n4qjN/QgwAMlO5mJd2qcFAAAAAElFTkSuQmCC) no-repeat center;display:inline-block;width:38px;height:38px}.jd-hot-goods-close p{padding:0 10px;margin-bottom:8px}.jd-add-qq{position:fixed;right:5px;bottom:10px;font:12px "Microsoft YaHei","SimHei","Arial"!important;-webkit-box-shadow:0 0 10px rgba(0,204,204,.5);-ms-box-shadow:0 0 10px rgba(0,204,204,.5);box-shadow:0 0 10px rgba(0,204,204,.5);-webkit-border-radius:5px;-moz-border-radius:5px;-ms-border-radius:5px;-o-border-radius:5px;border-radius:5px;background-color:#fff;z-index:2147483647}.jd-add-qq .add-qq-header{text-align:right;padding:5px 8px}.jd-add-qq .add-qq-content{display:inline-block;text-align:center;padding:0 20px;margin-bottom:25px;color:#333;text-decoration:none;cursor:auto}.jd-add-qq .qq-warm{font:600 14px "Microsoft YaHei","SimHei","Arial"!important;color:#333;margin-bottom:18px}.jd-add-qq .add-qq-button{margin-top:18px}.jd-add-qq .add-qq-button span{width:145px;height:30px;-webkit-user-select:none;-moz-user-select:none;user-select:none;line-height:30px;text-align:center;background:#ff8b8b;border-radius:15px;cursor:pointer;color:#fff;display:inline-block}.jd-add-qq .add-qq-button span:hover{background-color:#ff7272}.jd-add-qq .add-qq-button span:active{background-color:#ff7272;outline:thin dotted;outline-offset:-2px}.yht-panel-notification{width:360px;z-index:2147483647;background-color:#fff;border:1px solid #eee;box-shadow:0 2px 4px rgba(0,0,0,.12),0 0 6px rgba(0,0,0,.04);transition:opacity .3s,transform .3s,right .3s,top .4s;padding:10px 10px 0;position:fixed;right:0;bottom:10px}.yht-panel-notification .yht-close{display:inline-block;width:8px;height:8px;position:absolute;top:6px;right:5px;background:url("//1pcdn.1haitao.com/explugin/img/panel/icon-close3.png") no-repeat}.yht-panel-notification .goos-item{line-height:0;font-size:12px;text-align:left;border-bottom:1px solid #eee;padding-bottom:10px}.yht-panel-notification .goos-item:before{display:inline-block;vertical-align:middle;content:"";height:100%;font-size:0;line-height:0;width:0}.yht-panel-notification .goos-item>div{display:inline-block;vertical-align:middle;max-width:100%;max-height:100%}.yht-panel-notification .goos-item .img{width:110px;height:80px;display:inline-block;vertical-align:middle;font-size:0;line-height:0;text-align:center}.yht-panel-notification .goos-item .img:before{display:inline-block;vertical-align:middle;content:"";height:100%;font-size:0;line-height:0;width:0}.yht-panel-notification .goos-item .img img{display:inline-block;max-width:100%;max-height:100%;display:inline-block;vertical-align:middle;font-size:1rem;line-height:normal}.yht-panel-notification .goos-item .yht-info{width:220px;height:80px;display:inline-block;color:#999}.yht-panel-notification .goos-item .yht-info .yht-title{font-size:14px;color:#333;overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:2;line-height:26px}.yht-panel-notification .goos-item .yht-info .yht-subhead{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;margin-top:5px;height:28px}.yht-panel-notification .yht-bottom{text-align:left;margin-top:5px}.yht-panel-notification .yht-bottom>div{display:inline-block}.yht-panel-notification .yht-bottom .yht-left p{background:url("//1pcdn.1haitao.com/explugin/img/yht-icon-logo.png") no-repeat left;padding-left:25px;color:#29cee9;font-size:14px}.yht-panel-notification .yht-bottom .yht-right{display:inline-block;float:right}.yht-panel-notification .yht-bottom .yht-right p{background:url("//1pcdn.1haitao.com/explugin/img/panel/icon-go.png") no-repeat right;padding-right:18px;color:#333}.yht-inject-price{width:460px;font:12px "Microsoft YaHei","SimHei","Arial"!important;background-color:#fff;margin-left:10px}.yht-inject-price ul{font-size:0;line-height:0;text-align:left;border-top:3px solid #29cee9;border-bottom:1px solid #eee}.yht-inject-price ul:before{display:inline-block;vertical-align:middle;content:"";height:100%;font-size:0;line-height:0;width:0}.yht-inject-price ul li{display:inline-block;vertical-align:middle;max-width:100%;max-height:100%}.yht-inject-price li{display:inline-block;font:600 12px "Microsoft YaHei","SimHei","Arial"!important;padding:3px 8px;color:#29cee9;line-height:24px}.yht-inject-price li a{color:#29cee9}.yht-inject-price li span{padding:0 15px;border-left:2px solid #29cee9;border-right:2px solid #29cee9}.yht-inject-price li .yht-app{background:url("//1pcdn.1haitao.com/explugin/img/icon-qr2.png") no-repeat left 1px;padding-left:20px;position:relative;cursor:pointer}.yht-inject-price li .yht-app:hover .tip{display:block}.yht-inject-price li h2{font:600 15px PingFangSC-Regular,"Droid Sans Regular","Rotobo","Microsoft YaHei";margin:5px 0}.yht-inject-price li .tip{display:inline-block;vertical-align:middle;margin:5px;width:145px;font:12px "Microsoft YaHei","SimHei","Arial"!important;word-break:break-line;word-wrap:break-word;text-align:center;position:absolute;top:10px;left:-44px;line-height:16px;color:#29cee9;padding-top:9px}.yht-inject-price li .tip .tip-content{position:relative;background:#fff;border-radius:8px;border:1px solid #29cee9}.yht-inject-price li .tip .tip-content:before,.yht-inject-price li .tip .tip-content:after,.yht-inject-price li .tip .tip-content .before,.yht-inject-price li .tip .tip-content .after{position:absolute;top:-13px;left:65px;width:0;height:0;content:'';border-style:solid;border-color:transparent;border-bottom:9px solid #29cee9;border-left-width:9px;border-right-width:10px}.yht-inject-price li .tip .tip-content:after,.yht-inject-price li .tip .tip-content .after{position:absolute;top:-12px;border-bottom-color:#fff}.yht-inject-price li .tip .tip-content{padding:3px}.yht-inject-price li .tip p{margin:5px 0}.yht-inject-price li .tip{display:none;z-index:999999}.yht-inject-price .yht-active-item{padding:5px 12px}.yht-inject-price .yht-active-item a:hover{color:#f22}.yht-inject-price .yht-active-item p{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;line-height:24px;padding-right:20px;color:#333}</style><style class="style_0">.footer .widget-title{padding:0 0 0 10px;height:28px;line-height:28px;background-color:#024886;margin:0px;font-family:;font-size:px;font-weight:normal;font-style:normal;text-decoration:none;color:#fff;border-top:0;border-left:0;border-right:0;border-bottom:0;background-image:none;-webkit-border-top-left-radius: 4px;-webkit-border-top-right-radius: 4px;-moz-border-radius-topleft: 4px;-moz-border-radius-topright: 4px;border-top-left-radius: 4px;border-top-right-radius: 4px;} .footer .widget-title{border-top:0;border-left:0;border-right:0;} .footer  .bitWidgetFrame{border-bottom:0;border-top:0;border-left:0;border-right:0;padding:4px 10px 4px 10px;}.footer .site_tooler{-webkit-box-shadow:none;box-shadow:none;}.footer .site_tooler .bitWidgetFrame{background-color:transparent;background-image:none;-webkit-border-bottom-left-radius: 4px;border-bottom-left-radius: 4px;-webkit-border-bottom-right-radius: 4px;border-bottom-right-radius: 4px;}</style>		<script type="text/javascript">
		var qfyuser_ajax_url = 'http://57e8ecf41155d.t73.qifeiye.com/admin/admin-ajax.php';
		</script>
			<script type="text/javascript">
		var qfyuser_upload_url = 'http://57e8ecf41155d.t73.qifeiye.com/qfy-content/plugins/qfyuser/lib/fileupload/fileupload.php';
		</script>
	<meta name="robots" content="index, follow">
		<style type="text/css">
</style>
		<script type="text/javascript">
			dtGlobals.logoEnabled = 1;dtGlobals.curr_id = 2160;dtGlobals.logoURL = '';dtGlobals.logoW = '0';dtGlobals.logoH = '0';dtGlobals.qfyname = '起飞页';dtGlobals.id = '57e8ecf41155d';dtGlobals.language = '';smartMenu = 0;document.cookie='resolution='+Math.max(screen.width,screen.height)+'; path=/';
			dtGlobals.gallery_bgcolor = 'rgba(51,51,51,1)';dtGlobals.gallery_showthumbs = '0';dtGlobals.gallery_style = '';dtGlobals.gallery_autoplay = '0';dtGlobals.gallery_playspeed = '3';dtGlobals.gallery_imagesize = '100';dtGlobals.gallery_stopbutton = '';dtGlobals.gallery_thumbsposition = '';dtGlobals.gallery_tcolor = '#fff';dtGlobals.gallery_tsize = '16';dtGlobals.gallery_dcolor = '#fff';dtGlobals.gallery_dsize = '14';dtGlobals.gallery_tfamily = '';dtGlobals.gallery_dfamily = '';dtGlobals.gallery_blankclose = '0';dtGlobals.fm_showstyle = '';dtGlobals.fm_showspeed = '';dtGlobals.cdn_url = 'http://static.qifeiye.com';dtGlobals.qfymodel = "";dtGlobals.viewtemplate = "";
						var socail_back_url = '';
					</script>

			

</head>


<body class="home page page-id-2160 page-template-default image-blur btn-flat content-fullwidth wpb-js-composer js-comp-ver-4.0.1 vc_responsive no-mobile is-webkit" data-pid="2160" data-pkey="43696bcdc4f8022776101003c5671fe2">
<div id="dl-menu" class="dl-menuwrapper wf-mobile-visible dropTopStyle_containter center">
			<div class="dl-container">
			<ul data-st="0" data-sp="0" data-fh="0" data-mw="0" data-lh="48" class="dl-menu" data-bit-menu="underline-hover" data-bit-float-menu="underline-hover">
			<li class=" menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-2160 current_page_item bit-menu-post-id-2160 menu-item-2319 act first"><a href="newshouye.jsp"><span>首页1<i class="underline"></i></span></a></li>
</ul></div></div>

<div id="page" class="bodyheader0 breackall wide ">

	
	<header id="header" class="logo-left-right wf-mobile-hidden headerPM menuPosition transparent" role="banner"><!-- class="overlap"; class="logo-left", class="logo-center", class="logo-classic" -->
		<div class="wf-wrap">
			<div class="wf-table">

				

<div id="branding" class="wf-td bit-logo-bar" style="">
	<nav style="0" id="navigation" class="wf-td" bitdataaction="site_menu_container" bitdatalocation="primary">
			<ul id="main-nav" data-st="0" data-sp="0" data-fh="0" data-mw="0" data-lh="48" class="mainmenu fancy-rollovers wf-mobile-hidden bit-menu-default underline-hover" data-bit-menu="underline-hover" data-bit-float-menu="underline-hover">
		
</ul>
						
			

					</nav>
	<span class="logospan bitem logo small" style="display: table-cell;">
	<img class="preload-me" src="images/newshouyelogo.png" id="newshouyelogo"></span> 
</div>
						<!-- !- Navigation -->
	
		<div style="display:none;" id="main-nav-slide">
									<div class="main-nav-slide-inner" data-class="">
				<div class="floatmenu-bar-right bit_widget_more" bitdatamarker="bitHeader-3" bitdataaction="site_fix_container" bitdatacolor="white">
					 				</div>
			</div>
		</div>
		
									<div class="wf-td assistive-info    " role="complementary" style="">
					  <div class="top-bar-right right bit_widget_more" id="zhucedenglu"bitdatamarker="bitHeader-2" bitdataaction="site_fix_container" bitdatacolor="white" style="">
                          <div id="bit_postlist-6" style="margin-top:0px;margin-bottom:0px;" class="headerWidget_1 widget_text site_tooler"><div class="bitWidgetFrame ">
                          <div style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="0" data-anitime="0.7" class="qfy-element vc_btn3-container vc_btn3-inline"><a onmouseleave="this.style.borderColor=&#39;#ffffff&#39;; this.style.backgroundColor=&#39;#ffffff&#39;; this.style.color=&#39;#ef4f19&#39;;" onmouseenter="this.style.backgroundColor=&#39;transparent&#39;; this.style.borderColor=&#39;#ffffff&#39;; this.style.color=&#39;#ffffff&#39;;" style="font-family:微软雅黑; font-size:14px; padding-top:6px;padding-bottom:6px; border-width:1px; border-color:#ffffff; background-color:#ffffff; color:#ef4f19;" class="vc_general vc_btn3 vc_btn3-size-sm vc_btn3-shape-rounded vc_btn3-style-qfy-custom" href="newregister.jsp">注册</a></div>
</div>
</div>
<div id="bit_postlist-7" style="margin-top:0px;margin-bottom:0px;" class="headerWidget_1 widget_text site_tooler"><div class="bitWidgetFrame ">
<div style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="0" data-anitime="0.7" class="qfy-element vc_btn3-container vc_btn3-inline"><a onmouseleave="this.style.borderColor=&#39;#ffffff&#39;; this.style.backgroundColor=&#39;transparent&#39;; this.style.color=&#39;#ffffff&#39;;" onmouseenter="this.style.backgroundColor=&#39;#ffffff&#39;; this.style.borderColor=&#39;#ffffff&#39;; this.style.color=&#39;#ef4f19&#39;;" style="font-family:微软雅黑; font-size:14px; padding-top:6px;padding-bottom:6px; border-width:1px; border-color:#ffffff; background-color:transparent; color:#ffffff;" class="vc_general vc_btn3 vc_btn3-size-sm vc_btn3-shape-rounded vc_btn3-style-qfy-custom" href="newlogin.jsp" target="">登录</a></div>
</div>
</div>
<div id="loginandregister-2" style="display:none;" class="headerWidget_1 loginandregister site_tooler">
<div class="wf-td" style="display:inline-block;">
<a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15282" style="color:#ffffff;font-size:12px;" rel="nofollow">
<i class="glyphicon glyphicon-icon-user"></i>&nbsp;登录</a>&nbsp;
<a href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=15281" style="color:#ffffff;font-size:12px;" rel="nofollow"><i class="glyphicon glyphicon-icon-signin"></i>&nbsp;注册2</a></div></div>                        </div>
					</div>
			</div><!-- #branding -->
		</div><!-- .wf-wrap -->
	</header><!-- #masthead -->

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
                              <section data-fixheight="" class="qfy-row-1-592fbec0b693c583417 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_fmsyp" style="margin-bottom:0px;border-radius:0px;color:#000000;">
            <div data-time="3" data-imagebgs="" class="background-media  " backgroundsize="true" style="">
                            <video autoplay="autoplay" muted="muted" volume="0" poster="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMC8zMTQwYjc2NjJhMzgxZGExNjM2MGQyNzQ1OTM4ZDdmNHByZXZpZXdfaW1hZ2UucG5n.png" loop="loop" style="width: 100%; height: 100%;object-fit:cover;object-position:center center" class="section-background-video">
                
                                    <source type="video/mp4" src="shouyefiles/shouyevideo.mov">
                                
                </video>
                    </div>
		
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: rgba(0,0,0,0.3);"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-1-592fbec0b7fa5130173 qfy-column-inner  vc_span12  text-center small-screen-Default fullrow" data-dw="1/1" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_fnxk8" class="qfy-element qfy-text qfy-text-31534 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-bottom:0px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#FFFFFF;"><span style="font-size: 28px;"><span style="font-family: arial;"><span style="letter-spacing: 1px;">JINGYUSUANJI</span></span></span></span></p>

		</div> 
	</div> 
	<div m-padding="38px 0px 8px 0px" p-padding="38px 0px 8px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_hunk4" class="qfy-element qfy-text qfy-text-90385 wpb_text_column wpb_content_element  mobile_fontsize27" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:38px;padding-bottom:8px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><strong><span style="color:#FFFFFF;"><span style="font-family: 微軟正黑體;"><span style="font-size: 48px;"><span style="letter-spacing: 1px;">精于算绩</span></span></span></span></strong></p>

		</div> 
	</div> 
	<div m-padding="0px 0px 20px 0px" p-padding="0px 0px 20px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_95x3z" class="qfy-element qfy-text qfy-text-58864 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:0px;padding-bottom:20px;">
		<div class="wpb_wrapper">

		</div> 
	</div> <section data-fixheight="" class="qfy-row-2-592fbec0b8c6b300393 section     bothfull  section-text-no-shadow section-inner-no-shadow section-normal display_entire" style="margin-bottom:0px;border-radius:0px;color:#000000;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-2-592fbec0b8edb544049 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-Default" data-dw="1/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;border-top:0px solid #dddddd;border-bottom:0px solid #dddddd;border-left:0px solid #dddddd;border-right:1px dotted #cccccc;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><div id="icon-592fbec0b948f935764" style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_icon_48kgg" class="qfy-element vc_icon_element vc_icon_element-outer delay0 vc_icon_element-align-center icon-fontawesome">
<style>
#icon-592fbec0b948f935764 .vc_icon_element-inner:hover .vc_icon_element-icon,.hover #icon-592fbec0b948f935764 .vc_icon_element-inner .vc_icon_element-icon{color:#ffffff !important}
</style>
	<div class=" vc_icon_element-inner vc_icon_element-color- vc_icon_element-size-md vc_icon_element-style- vc_icon_element-background-color-">
				<span class="vc_icon_element-icon glyphicon glyphicon-icon-picture" style="color:#ffffff;"></span>
				</div>


</div>

	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_kxpym" class="qfy-element qfy-text qfy-text-45251 wpb_text_column wpb_content_element  mobile_fontsize12" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#FFFFFF;"><span style="font-size: 16px;"><strong><span style="font-family: 微軟正黑體;">数据可视化</span></strong></span></span></p>

		</div> 
	</div> </div></div></div><style>.qfy-column-2-592fbec0b8edb544049 > .column_inner:hover{}.qfy-column-2-592fbec0b8edb544049 > .column_inner:hover{}.qfy-column-2-592fbec0b8edb544049 > .column_inner:hover >.background-media{}.qfy-column-2-592fbec0b8edb544049 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-2-592fbec0b8edb544049 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-2-592fbec0b8edb544049 {};}@media only screen and (max-width: 992px){.qfy-column-2-592fbec0b8edb544049 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-2-592fbec0b8edb544049 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-3-592fbec0b98b1437939 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-Default" data-dw="1/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;border-top:0px solid #ffffff;border-bottom:0px solid #ffffff;border-left:0px solid #ffffff;border-right:1px dotted #cccccc;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><div id="icon-592fbec0b9b24717253" style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_icon_48kgg" class="qfy-element vc_icon_element vc_icon_element-outer delay0 vc_icon_element-align-center icon-fontawesome">
<style>
#icon-592fbec0b9b24717253 .vc_icon_element-inner:hover .vc_icon_element-icon,.hover #icon-592fbec0b9b24717253 .vc_icon_element-inner .vc_icon_element-icon{color:#ffffff !important}
</style>
	<div class=" vc_icon_element-inner vc_icon_element-color- vc_icon_element-size-md vc_icon_element-style- vc_icon_element-background-color-">
				<span class="vc_icon_element-icon glyphicon glyphicon-icon-folder-open" style="color:#ffffff;"></span>
				</div>


</div>

	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_44cpo" class="qfy-element qfy-text qfy-text-90770 wpb_text_column wpb_content_element  mobile_fontsize12" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#FFFFFF;"><span style="font-family: 微軟正黑體;"><span style="font-size: 16px;"><strong>报表生成</strong></span></span></span></p>

		</div> 
	</div> </div></div></div><style>.qfy-column-3-592fbec0b98b1437939 > .column_inner:hover{}.qfy-column-3-592fbec0b98b1437939 > .column_inner:hover{}.qfy-column-3-592fbec0b98b1437939 > .column_inner:hover >.background-media{}.qfy-column-3-592fbec0b98b1437939 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-3-592fbec0b98b1437939 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-3-592fbec0b98b1437939 {};}@media only screen and (max-width: 992px){.qfy-column-3-592fbec0b98b1437939 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-3-592fbec0b98b1437939 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-4-592fbec0b9e8c812195 qfy-column-inner vc_span_class vc_span4  text-default small-screen-default" data-dw="1/3" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><div id="icon-592fbec0ba133812915" style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_icon_48kgg" class="qfy-element vc_icon_element vc_icon_element-outer delay0 vc_icon_element-align-center icon-fontawesome">
<style>
#icon-592fbec0ba133812915 .vc_icon_element-inner:hover .vc_icon_element-icon,.hover #icon-592fbec0ba133812915 .vc_icon_element-inner .vc_icon_element-icon{color:#ffffff !important}
</style>
	<div class=" vc_icon_element-inner vc_icon_element-color- vc_icon_element-size-md vc_icon_element-style- vc_icon_element-background-color-">
				<span class="vc_icon_element-icon glyphicon glyphicon-icon-puzzle" style="color:#ffffff;"></span>
				</div>


</div>

	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_ah1uw" class="qfy-element qfy-text qfy-text-46721 wpb_text_column wpb_content_element  mobile_fontsize12" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#FFFFFF;"><span style="font-size: 16px;"><span style="font-family: 微軟正黑體;"><strong><span style="font-family: arial;"></span>灵活高效</strong></span></span></span></p>

		</div> 
	</div> </div></div></div><style>.qfy-column-4-592fbec0b9e8c812195 > .column_inner:hover{}.qfy-column-4-592fbec0b9e8c812195 > .column_inner:hover{}.qfy-column-4-592fbec0b9e8c812195 > .column_inner:hover >.background-media{}.qfy-column-4-592fbec0b9e8c812195 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-4-592fbec0b9e8c812195 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-4-592fbec0b9e8c812195 {};}@media only screen and (max-width: 992px){.qfy-column-4-592fbec0b9e8c812195 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:px;padding-bottom:px;}.display_entire .wpb_row .vc_span_class.qfy-column-4-592fbec0b9e8c812195 {};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-2-592fbec0b8c6b300393{padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;margin-top:28px;}section.section.qfy-row-2-592fbec0b8c6b300393 > .container{max-width:520px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-2-592fbec0b8c6b300393{padding-left:15px;padding-right:15px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section></div></div></div><style>.qfy-column-1-592fbec0b7fa5130173 > .column_inner:hover{}.qfy-column-1-592fbec0b7fa5130173 > .column_inner:hover{}.qfy-column-1-592fbec0b7fa5130173 > .column_inner:hover >.background-media{}.qfy-column-1-592fbec0b7fa5130173 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-1-592fbec0b7fa5130173 > .column_inner {padding-left:0px;padding-right:0px;padding-top:254px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-1-592fbec0b7fa5130173 {};}@media only screen and (max-width: 992px){.qfy-column-1-592fbec0b7fa5130173 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:234px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-1-592fbec0b7fa5130173 {};}</style>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-1-592fbec0b693c583417{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:162px;margin-top:0px;min-height:600px}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-1-592fbec0b693c583417{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:162px;margin-top:0px;min-height:600px;}}
	</style>
</section><section data-fixheight="" class="qfy-row-3-592fbec0ba67466581 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_ifcou" style="margin-bottom:0px;border-radius:0px;color:#000000;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-5-592fbec0ba87d7490 qfy-column-inner  vc_span12  text-default small-screen-default fullrow" data-dw="1/1" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0bb1dc550 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0bb1dc550 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0bb1dc550" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_folnq" class="qfy-element minheigh1px wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_top-to-bottom" style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><div class="header_title" style="font-family:微软雅黑;font-size:32px;font-weight:normal;font-style:normal;color:#1e3c3f;">功能多样，满足您的所有需求</div><span class="line-abs bottom hcenter" style="overflow:hidden;border-bottom-style:solid;width:60px;border-bottom-width:4px;border-bottom-color:#f1501a;margin-top:20px;"></span></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> 
	<div m-padding="10px 0px 20px 0px" p-padding="10px 0px 20px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_qiyy7" class="qfy-element qfy-text qfy-text-97233 wpb_text_column wpb_content_element  mobile_fontsize12" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:10px;padding-bottom:20px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="letter-spacing:1px;"><span style="font-size: 15px;"><span style="color: rgb(169, 169, 169);"><span style="font-family: 微软雅黑;"></span></span></span></span></p>

		</div> 
	</div> </div></div></div><style>.qfy-column-5-592fbec0ba87d7490 > .column_inner:hover{}.qfy-column-5-592fbec0ba87d7490 > .column_inner:hover{}.qfy-column-5-592fbec0ba87d7490 > .column_inner:hover >.background-media{}.qfy-column-5-592fbec0ba87d7490 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-5-592fbec0ba87d7490 > .column_inner {padding-left:0px;padding-right:0px;padding-top:71px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-5-592fbec0ba87d7490 {};}@media only screen and (max-width: 992px){.qfy-column-5-592fbec0ba87d7490 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:71px;padding-bottom:px;}.display_entire .wpb_row .vc_span_class.qfy-column-5-592fbec0ba87d7490 {};}</style>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-3-592fbec0ba67466581{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:11px;margin-top:0px;}section.section.qfy-row-3-592fbec0ba67466581 > .container{max-width:1024px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-3-592fbec0ba67466581{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:11px;margin-top:0px;}}
	</style>
</section><section data-fixheight="" class="qfy-row-4-592fbec0bb87a40375 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_7xg5g" style="margin-bottom:0px;border-radius:0px;color:#383838;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: #ffffff;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-6-592fbec0bbc1a461536 qfy-column-inner vc_span_class vc_span6  text-Default small-screen-undefined" data-dw="1/2" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><section data-fixheight="" class="qfy-row-5-592fbec0bbe62321438 section     bothfull  section-text-no-shadow section-inner-no-shadow section-normal display_entire" style="margin-bottom:0px;border-radius:0px;color:#000000;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-7-592fbec0bc098759648 qfy-column-inner vc_span_class vc_span6  text-Default small-screen-undefined" data-dw="1/2" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0bcdd0892 .head{font-size: 16px !important;}.single_image_text-592fbec0bcdd0892 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_sv8nq" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_sv8nq" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element wpb_animate_when_almost_visible wpb_appear vc_align_center">
		<div class="wpb_wrapper"><span></span><img class="front_image   ag_image" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMC8wYzBlMWI0NTllODJiZDgxNzQyMmMxZjQzNjg5YTYzNi01MHg0OC5wbmc_p_p100_p_3D.png" alt="icon0001" description="" data-title="icon0001" title="" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a>
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_128co" class="qfy-element qfy-text qfy-text-8396 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#3D444F;"><span style="font-size: 20px;"><span style="font-family: 微软雅黑;">多校注册</span></span></span></p>

		</div> 
	</div> 
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_1x167" class="qfy-element qfy-text qfy-text-20241 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<div style="text-align: center;"><span style="color:#646A75;"><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">由于我们提供了多学校注册，为每个学校解决了评分标准不同的障碍</span></span></span></div>

<div><span style="font-size:15px;"><span style="font-family:宋体;"></span></span></div>

		</div> 
	</div> </div></div></div><style>.qfy-column-7-592fbec0bc098759648 > .column_inner:hover{}.qfy-column-7-592fbec0bc098759648 > .column_inner:hover{}.qfy-column-7-592fbec0bc098759648 > .column_inner:hover >.background-media{}.qfy-column-7-592fbec0bc098759648 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-7-592fbec0bc098759648 > .column_inner {padding-left:10px;padding-right:10px;padding-top:30px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-7-592fbec0bc098759648 {};}@media only screen and (max-width: 992px){.qfy-column-7-592fbec0bc098759648 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-7-592fbec0bc098759648 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-8-592fbec0bd38c757148 qfy-column-inner vc_span_class vc_span6  text-Default small-screen-undefined" data-dw="1/2" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0bde15270 .head{font-size: 16px !important;}.single_image_text-592fbec0bde15270 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_sv8nq" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_sv8nq" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element wpb_animate_when_almost_visible wpb_appear vc_align_center">
		<div class="wpb_wrapper"><span></span><img class="front_image   ag_image" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMC84MDJlZmI4NmRhMTYxYjFiODI1NzUzMjUxYTQxNzBhMi01MHg0OC5wbmc_p_p100_p_3D.png" alt="icon0002" description="" data-title="icon0002" title="" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a>
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_lg5ub" class="qfy-element qfy-text qfy-text-27691 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#3D444F;"><span style="font-family: 微软雅黑;"><span style="font-size: 20px;">多级审核</span></span></span></p>

		</div> 
	</div> 
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_utnwd" class="qfy-element qfy-text qfy-text-5475 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<div style="text-align: center;"><span style="color:#646A75;"><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">将教师提交上来的作品进行多方面，多级别的审核，解决了教师得分不公平的问题</span></span></span></div>

		</div> 
	</div> </div></div></div><style>.qfy-column-8-592fbec0bd38c757148 > .column_inner:hover{}.qfy-column-8-592fbec0bd38c757148 > .column_inner:hover{}.qfy-column-8-592fbec0bd38c757148 > .column_inner:hover >.background-media{}.qfy-column-8-592fbec0bd38c757148 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-8-592fbec0bd38c757148 > .column_inner {padding-left:10px;padding-right:10px;padding-top:30px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-8-592fbec0bd38c757148 {};}@media only screen and (max-width: 992px){.qfy-column-8-592fbec0bd38c757148 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-8-592fbec0bd38c757148 {};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-5-592fbec0bbe62321438{padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-5-592fbec0bbe62321438{padding-left:15px;padding-right:15px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section></div></div></div><style>.qfy-column-6-592fbec0bbc1a461536 > .column_inner:hover{}.qfy-column-6-592fbec0bbc1a461536 > .column_inner:hover{}.qfy-column-6-592fbec0bbc1a461536 > .column_inner:hover >.background-media{}.qfy-column-6-592fbec0bbc1a461536 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-6-592fbec0bbc1a461536 > .column_inner {padding-left:10px;padding-right:10px;padding-top:30px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-6-592fbec0bbc1a461536 {};}@media only screen and (max-width: 992px){.qfy-column-6-592fbec0bbc1a461536 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:38px;}.display_entire .wpb_row .vc_span_class.qfy-column-6-592fbec0bbc1a461536 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-9-592fbec0be46d793525 qfy-column-inner vc_span_class vc_span6  text-Default small-screen-undefined" data-dw="1/2" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><section data-fixheight="" class="qfy-row-6-592fbec0be6cf860320 section     bothfull  section-text-no-shadow section-inner-no-shadow section-normal display_entire" style="margin-bottom:0px;border-radius:0px;color:#000000;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-10-592fbec0be90e184920 qfy-column-inner vc_span_class vc_span6  text-Default small-screen-Default" data-dw="1/2" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0bef7c108 .head{font-size: 16px !important;}.single_image_text-592fbec0bef7c108 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_sv8nq" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_sv8nq" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element wpb_animate_when_almost_visible wpb_appear vc_align_center">
		<div class="wpb_wrapper"><span></span><img class="front_image   ag_image" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMC9hYmU0ZDQ0YjkwYjY4ZjU2Y2FkY2YyOWE0YWQyMGRlYy01MHg0OC5wbmc_p_p100_p_3D.png" alt="icon0003" description="" data-title="icon0003" title="" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a>
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_de6e3" class="qfy-element qfy-text qfy-text-76417 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#3D444F;"><span style="font-size: 20px;"><span style="font-family: 微软雅黑;">精准评分</span></span></span></p>

		</div> 
	</div> 
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_56g1h" class="qfy-element qfy-text qfy-text-77356 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<div style="text-align: center;"><span style="color:#646A75;"><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">我们提供了一套评分模板，各学校，各学院可以根据自己的要求进行规划，解决了评分标准不同的问题</span></span></span></div>

		</div> 
	</div> </div></div></div><style>.qfy-column-10-592fbec0be90e184920 > .column_inner:hover{}.qfy-column-10-592fbec0be90e184920 > .column_inner:hover{}.qfy-column-10-592fbec0be90e184920 > .column_inner:hover >.background-media{}.qfy-column-10-592fbec0be90e184920 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-10-592fbec0be90e184920 > .column_inner {padding-left:10px;padding-right:10px;padding-top:30px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-10-592fbec0be90e184920 {};}@media only screen and (max-width: 992px){.qfy-column-10-592fbec0be90e184920 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-10-592fbec0be90e184920 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-11-592fbec0bf5c4409252 qfy-column-inner vc_span_class vc_span6  text-Default small-screen-Default" data-dw="1/2" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0bfbaf308 .head{font-size: 16px !important;}.single_image_text-592fbec0bfbaf308 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_sv8nq" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_sv8nq" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element wpb_animate_when_almost_visible wpb_appear vc_align_center">
		<div class="wpb_wrapper"><span></span><img class="front_image   ag_image" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMC9lZTA4OTBhYTEwYjFmNzhhMmNmNzllNDRlNmMwNmM1NS01MHg0OC5wbmc_p_p100_p_3D.png" alt="icon0004" description="" data-title="icon0004" title="" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a>
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_urcbd" class="qfy-element qfy-text qfy-text-70932 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#3D444F;"><span style="font-family: 微软雅黑;"><span style="font-size: 20px;">批量导入</span></span></span></p>

		</div> 
	</div> 
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_ldp4h" class="qfy-element qfy-text qfy-text-86176 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:10px;">
		<div class="wpb_wrapper">
			<div style="text-align: center;"><span style="color:#646A75;"><span style="font-size: 14px;"><span style="font-family: 微软雅黑;">我们提供了批量导入功能，减轻了人力负责人的工作量</span></span></span></div>

		</div> 
	</div> </div></div></div><style>.qfy-column-11-592fbec0bf5c4409252 > .column_inner:hover{}.qfy-column-11-592fbec0bf5c4409252 > .column_inner:hover{}.qfy-column-11-592fbec0bf5c4409252 > .column_inner:hover >.background-media{}.qfy-column-11-592fbec0bf5c4409252 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-11-592fbec0bf5c4409252 > .column_inner {padding-left:10px;padding-right:10px;padding-top:30px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-11-592fbec0bf5c4409252 {};}@media only screen and (max-width: 992px){.qfy-column-11-592fbec0bf5c4409252 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-11-592fbec0bf5c4409252 {};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-6-592fbec0be6cf860320{padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-6-592fbec0be6cf860320{padding-left:15px;padding-right:15px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section></div></div></div><style>.qfy-column-9-592fbec0be46d793525 > .column_inner:hover{}.qfy-column-9-592fbec0be46d793525 > .column_inner:hover{}.qfy-column-9-592fbec0be46d793525 > .column_inner:hover >.background-media{}.qfy-column-9-592fbec0be46d793525 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-9-592fbec0be46d793525 > .column_inner {padding-left:10px;padding-right:10px;padding-top:30px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-9-592fbec0be46d793525 {};}@media only screen and (max-width: 992px){.qfy-column-9-592fbec0be46d793525 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-9-592fbec0be46d793525 {};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-4-592fbec0bb87a40375{padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:53px;margin-top:0px;}section.section.qfy-row-4-592fbec0bb87a40375 > .container{max-width:1280px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-4-592fbec0bb87a40375{padding-left:15px;padding-right:15px;padding-top:0px;padding-bottom:53px;margin-top:0px;}}
	</style>
</section><section data-fixheight="" class="qfy-row-7-592fbec0c03f5746158 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_47ewx" style="margin-bottom:0px;border-radius:0px;border-top:1px solid #dbdbdb;border-bottom:0px solid #ffffff;border-left:0px solid #ffffff;border-right:0px solid #ffffff;color:#000000;">
            <div data-time="3" data-imagebgs="" class="background-media  " backgroundsize="true" style="background-image: url(&#39;http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83NzZmOTFkNTBmMzdkNGY3ZjFiYTc2YTViNDkyMTgzNC5qcGc_p_p100_p_3D.jpg&#39;); background-repeat:no-repeat; background-size:cover; background-attachment:scroll; background-position:center center;">
                    </div>
		
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: rgba(247,249,250,0.8);"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-12-592fbec0c0721426567 qfy-column-inner  vc_span12  text-default small-screen-default fullrow" data-dw="1/1" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c0a34770 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c0a34770 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0c0a34770" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_folnq" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><div class="header_title" style="font-family:微软雅黑;font-size:32px;font-weight:normal;font-style:normal;color:#1e3c3f;">平台三大优势</div><span class="line-abs bottom hcenter" style="overflow:hidden;border-bottom-style:solid;width:60px;border-bottom-width:4px;border-bottom-color:#f1501a;margin-top:20px;"></span></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> 
	<div m-padding="10px 0px 3px 0px" p-padding="10px 0px 3px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_e3c4l" class="qfy-element qfy-text qfy-text-55836 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:10px;padding-bottom:3px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#666666;"></span></p>

		</div> 
	</div> </div></div></div><style>.qfy-column-12-592fbec0c0721426567 > .column_inner:hover{}.qfy-column-12-592fbec0c0721426567 > .column_inner:hover{}.qfy-column-12-592fbec0c0721426567 > .column_inner:hover >.background-media{}.qfy-column-12-592fbec0c0721426567 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-12-592fbec0c0721426567 > .column_inner {padding-left:0px;padding-right:0px;padding-top:47px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-12-592fbec0c0721426567 {};}@media only screen and (max-width: 992px){.qfy-column-12-592fbec0c0721426567 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:47px;padding-bottom:px;}.display_entire .wpb_row .vc_span_class.qfy-column-12-592fbec0c0721426567 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-13-592fbec0c1054239482 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-Default" data-dw="1/3" data-fixheight=""><div style="min-height:400px;margin-top:10px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class="background-media " backgroundsize="true" style="background-image: url(&#39;http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8xNDc4MzIwMDk5NTgxZDVmZTM2ZWU3NjUwNzMucG5n.png&#39;); background-repeat:no-repeat; background-size:cover; background-attachment:scroll;background-position:0 0%;"></div><div class=" background-overlay grid-overlay-0" style="background-color:rgba(241,80,26,0.9);"></div><div class="column_containter" style="z-index:3;position:relative;"><div id="icon-592fbec0c145e236654" style="margin-top:0px;margin-bottom:0px;padding-top:95px;padding-bottom:35px;padding-right:0px;padding-left:0px;" m-padding="95px 0px 35px 0px" p-padding="95px 0px 35px 0px" css_animation_delay="0" qfyuuid="qfy_icon_5ix1m" class="qfy-element vc_icon_element vc_icon_element-outer delay0 vc_icon_element-align-center vc_icon_element-have-style icon-fontawesome">
<style>
#icon-592fbec0c145e236654 .vc_icon_element-inner:hover .vc_icon_element-icon,.hover #icon-592fbec0c145e236654 .vc_icon_element-inner .vc_icon_element-icon{color:#ffffff !important}
#icon-592fbec0c145e236654 .vc_icon_element-inner:hover,.hover #icon-592fbec0c145e236654 .vc_icon_element-inner{border-color:#ffffff !important;}</style>
	<div class=" vc_icon_element-inner vc_icon_element-color- vc_icon_element-size-md vc_icon_element-style- vc_icon_element-background-color-">
				<span class="vc_icon_element-icon glyphicon glyphicon-icon-picture" style="color:#ffffff;"></span>
				</div>


</div>
<style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c173a625 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c173a625 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0c173a625" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_folnq" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><span class="line-abs top hcenter" style="overflow:hidden;border-bottom-style:solid;width:60px;border-bottom-width:4px;border-bottom-color:#ffffff;margin-bottom:60px;"></span><div class="header_title" style="font-family:微软雅黑;font-size:20px;font-weight:normal;font-style:normal;color:#ffffff;">数据可视化</div></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> </div></div></div><style>.qfy-column-13-592fbec0c1054239482 > .column_inner:hover{}.qfy-column-13-592fbec0c1054239482 > .column_inner:hover{}.qfy-column-13-592fbec0c1054239482 > .column_inner:hover >.background-media{}.qfy-column-13-592fbec0c1054239482 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-13-592fbec0c1054239482 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-13-592fbec0c1054239482 {};}@media only screen and (max-width: 992px){.qfy-column-13-592fbec0c1054239482 > .column_inner{margin:10px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:30px;}.display_entire .wpb_row .vc_span_class.qfy-column-13-592fbec0c1054239482 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-14-592fbec0c1b5e246972 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-Default" data-dw="1/3" data-fixheight=""><div style="min-height:400px;margin-top:10px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class="background-media " backgroundsize="true" style="background-image: url(&#39;http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNS8wNS8xNDMyMjY2MDYxNjEuanBn.jpg&#39;); background-repeat:no-repeat; background-size:cover; background-attachment:scroll;background-position:0 0%;"></div><div class=" background-overlay grid-overlay-0" style="background-color:rgba(241,80,26,0.9);"></div><div class="column_containter" style="z-index:3;position:relative;"><div id="icon-592fbec0c1f4c787100" style="margin-top:0px;margin-bottom:0px;padding-top:95px;padding-bottom:35px;padding-right:0px;padding-left:0px;" m-padding="95px 0px 35px 0px" p-padding="95px 0px 35px 0px" css_animation_delay="0" qfyuuid="qfy_icon_5ix1m" class="qfy-element vc_icon_element vc_icon_element-outer delay0 vc_icon_element-align-center vc_icon_element-have-style icon-fontawesome">
<style>
#icon-592fbec0c1f4c787100 .vc_icon_element-inner:hover .vc_icon_element-icon,.hover #icon-592fbec0c1f4c787100 .vc_icon_element-inner .vc_icon_element-icon{color:#ffffff !important}
#icon-592fbec0c1f4c787100 .vc_icon_element-inner:hover,.hover #icon-592fbec0c1f4c787100 .vc_icon_element-inner{border-color:#ffffff !important;}</style>
	<div class=" vc_icon_element-inner vc_icon_element-color- vc_icon_element-size-md vc_icon_element-style- vc_icon_element-background-color-">
				<span class="vc_icon_element-icon glyphicon glyphicon-icon-folder-open" style="color:#ffffff;"></span>
				</div>


</div>
<style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c21d0597 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c21d0597 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0c21d0597" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_folnq" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><span class="line-abs top hcenter" style="overflow:hidden;border-bottom-style:solid;width:60px;border-bottom-width:4px;border-bottom-color:#ffffff;margin-bottom:60px;"></span><div class="header_title" style="font-family:微软雅黑;font-size:20px;font-weight:normal;font-style:normal;color:#ffffff;">报表生成</div></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> </div></div></div><style>.qfy-column-14-592fbec0c1b5e246972 > .column_inner:hover{}.qfy-column-14-592fbec0c1b5e246972 > .column_inner:hover{}.qfy-column-14-592fbec0c1b5e246972 > .column_inner:hover >.background-media{}.qfy-column-14-592fbec0c1b5e246972 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-14-592fbec0c1b5e246972 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-14-592fbec0c1b5e246972 {};}@media only screen and (max-width: 992px){.qfy-column-14-592fbec0c1b5e246972 > .column_inner{margin:10px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:30px;}.display_entire .wpb_row .vc_span_class.qfy-column-14-592fbec0c1b5e246972 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-15-592fbec0c2592287348 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-Default" data-dw="1/3" data-fixheight=""><div style="min-height:400px;margin-top:10px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class="background-media " backgroundsize="true" style="background-image: url(&#39;http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8wMi83YjBjMDJlMjU1ODFjOTI2ZjhjMjFjNDMwNjcwYjYyNC5qcGc_p_p100_p_3D.jpg&#39;); background-repeat:no-repeat; background-size:cover; background-attachment:scroll;background-position:0 0%;"></div><div class=" background-overlay grid-overlay-0" style="background-color:rgba(241,80,26,0.9);"></div><div class="column_containter" style="z-index:3;position:relative;"><div id="icon-592fbec0c29b7248636" style="margin-top:0px;margin-bottom:0px;padding-top:95px;padding-bottom:35px;padding-right:0px;padding-left:0px;" m-padding="95px 0px 35px 0px" p-padding="95px 0px 35px 0px" css_animation_delay="0" qfyuuid="qfy_icon_5ix1m" class="qfy-element vc_icon_element vc_icon_element-outer delay0 vc_icon_element-align-center vc_icon_element-have-style icon-fontawesome">
<style>
#icon-592fbec0c29b7248636 .vc_icon_element-inner:hover .vc_icon_element-icon,.hover #icon-592fbec0c29b7248636 .vc_icon_element-inner .vc_icon_element-icon{color:#ffffff !important}
#icon-592fbec0c29b7248636 .vc_icon_element-inner:hover,.hover #icon-592fbec0c29b7248636 .vc_icon_element-inner{border-color:#ffffff !important;}</style>
	<div class=" vc_icon_element-inner vc_icon_element-color- vc_icon_element-size-md vc_icon_element-style- vc_icon_element-background-color-">
				<span class="vc_icon_element-icon glyphicon glyphicon-icon-puzzle" style="color:#ffffff;"></span>
				</div>


</div>
<style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c2bfd919 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c2bfd919 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0c2bfd919" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_folnq" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><span class="line-abs top hcenter" style="overflow:hidden;border-bottom-style:solid;width:60px;border-bottom-width:4px;border-bottom-color:#ffffff;margin-bottom:60px;"></span><div class="header_title" style="font-family:微软雅黑;font-size:20px;font-weight:normal;font-style:normal;color:#ffffff;">灵活高效</div></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> </div></div></div><style>.qfy-column-15-592fbec0c2592287348 > .column_inner:hover{}.qfy-column-15-592fbec0c2592287348 > .column_inner:hover{}.qfy-column-15-592fbec0c2592287348 > .column_inner:hover >.background-media{}.qfy-column-15-592fbec0c2592287348 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-15-592fbec0c2592287348 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-15-592fbec0c2592287348 {};}@media only screen and (max-width: 992px){.qfy-column-15-592fbec0c2592287348 > .column_inner{margin:10px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:30px;}.display_entire .wpb_row .vc_span_class.qfy-column-15-592fbec0c2592287348 {};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-7-592fbec0c03f5746158{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:106px;margin-top:0px;}section.section.qfy-row-7-592fbec0c03f5746158 > .container{max-width:1024px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-7-592fbec0c03f5746158{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:106px;margin-top:0px;}}
	</style>
</section><!--<section data-fixheight="" class="qfy-row-8-592fbec0c308b46995 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_fmu5h" style="margin-bottom:0px;border-radius:0px;color:#000000;z-index:1;">
            <div data-time="3" data-imagebgs="" class="background-media  " backgroundsize="true" style="background-image: url(&#39;&#39;); background-repeat:no-repeat; background-size:cover; background-attachment:scroll; background-position:center center;">
                    </div>
		
    	    <div class="section-background-overlay background-overlay grid-overlay-20 " style="background-color: rgba(91,91,91,0.5);"></div>

     <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-16-592fbec0c34ad139821 qfy-column-inner  vc_span12  text-Default small-screen-Default fullrow" data-dw="1/1" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c37812 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c37812 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0c37812" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_folnq" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><div class="header_title" style="font-family:微软雅黑;font-size:32px;font-weight:normal;font-style:normal;color:#ffffff;">功能多样满足您的所有需求</div><span class="line-abs bottom hcenter" style="overflow:hidden;border-bottom-style:solid;width:60px;border-bottom-width:4px;border-bottom-color:#f1501a;margin-top:20px;"></span></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> 
	<div m-padding="10px 0px 4px 0px" p-padding="10px 0px 4px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_u4ro6" class="qfy-element qfy-text qfy-text-24941 wpb_text_column wpb_content_element  mobile_fontsize12" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:10px;padding-bottom:4px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#FFFFFF;"><span style="letter-spacing: 1px;"><span style="font-size: 15px;"><span style="font-family: 微软雅黑;">的格们丹甫股份很的项热弱贡采和认和投</span></span></span></span></p>

		</div> 
	</div> <section data-fixheight="" class="qfy-row-9-592fbec0c3da5896969 section     bothfull  section-text-no-shadow section-inner-no-shadow section-normal" style="margin-bottom:0px;border-radius:0px;color:#000000;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-17-592fbec0c3f6d272483 qfy-column-inner vc_span_class vc_span6  text-default small-screen-default" data-dw="1/2" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><div style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_btn_yncve" class="qfy-element vc_btn3-container vc_btn3-center"><a onmouseleave="this.style.borderColor=&#39;#f1501a&#39;; this.style.backgroundColor=&#39;#f1501a&#39;; this.style.color=&#39;#ffffff&#39;;" onmouseenter="this.style.backgroundColor=&#39;transparent&#39;; this.style.borderColor=&#39;#ffffff&#39;; this.style.color=&#39;#ffffff&#39;;" style="font-family:微软雅黑; font-size:18px; padding-left:50px;padding-right:50px; border-width:1px; border-color:#f1501a; background-color:#f1501a; color:#ffffff;" class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-round vc_btn3-style-qfy-custom" href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=7010" target="">查看模板</a></div>
</div></div></div><style>.qfy-column-17-592fbec0c3f6d272483 > .column_inner:hover{}.qfy-column-17-592fbec0c3f6d272483 > .column_inner:hover{}.qfy-column-17-592fbec0c3f6d272483 > .column_inner:hover >.background-media{}.qfy-column-17-592fbec0c3f6d272483 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-17-592fbec0c3f6d272483 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-17-592fbec0c3f6d272483 {};}@media only screen and (max-width: 992px){.qfy-column-17-592fbec0c3f6d272483 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:px;padding-bottom:px;}.display_entire .wpb_row .vc_span_class.qfy-column-17-592fbec0c3f6d272483 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-18-592fbec0c43f2526303 qfy-column-inner vc_span_class vc_span6  text-default small-screen-default" data-dw="1/2" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><div style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="20px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_btn_r4m1e" class="qfy-element vc_btn3-container vc_btn3-center"><a onmouseleave="this.style.borderColor=&#39;#ffffff&#39;; this.style.backgroundColor=&#39;#ffffff&#39;; this.style.color=&#39;#000000&#39;;" onmouseenter="this.style.backgroundColor=&#39;#f1501a&#39;; this.style.borderColor=&#39;#f1501a&#39;; this.style.color=&#39;#ffffff&#39;;" style="font-size:18px; padding-left:50px;padding-right:50px; border-width:1px; border-color:#ffffff; background-color:#ffffff; color:#000000;" class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-round vc_btn3-style-qfy-custom" href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=7010" target="">使用产品</a></div>
</div></div></div><style>.qfy-column-18-592fbec0c43f2526303 > .column_inner:hover{}.qfy-column-18-592fbec0c43f2526303 > .column_inner:hover{}.qfy-column-18-592fbec0c43f2526303 > .column_inner:hover >.background-media{}.qfy-column-18-592fbec0c43f2526303 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-18-592fbec0c43f2526303 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-18-592fbec0c43f2526303 {};}@media only screen and (max-width: 992px){.qfy-column-18-592fbec0c43f2526303 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:px;padding-bottom:px;}.display_entire .wpb_row .vc_span_class.qfy-column-18-592fbec0c43f2526303 {};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-9-592fbec0c3da5896969{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:0px;margin-top:40px;}section.section.qfy-row-9-592fbec0c3da5896969 > .container{max-width:600px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-9-592fbec0c3da5896969{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0c4d3e952 .head{font-size: 16px !important;}.single_image_text-592fbec0c4d3e952 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_i56gx" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_i56gx" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element vc_align_center">
		<div class="wpb_wrapper"><span></span><img width="964" height="310" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMC9mNzZkNzY1NzE4NDVlZGMzNjI0MTg4YmMzZjUxYzUzNi5wbmc_p_p100_p_3D.png" class="front_image  attachment-full" alt="e4da3b7fbbce2345d7772b0674a318d5" title="" description="" data-title="e4da3b7fbbce2345d7772b0674a318d5" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a></div></div></div><style>.qfy-column-16-592fbec0c34ad139821 > .column_inner:hover{}.qfy-column-16-592fbec0c34ad139821 > .column_inner:hover{}.qfy-column-16-592fbec0c34ad139821 > .column_inner:hover >.background-media{}.qfy-column-16-592fbec0c34ad139821 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-16-592fbec0c34ad139821 > .column_inner {padding-left:0px;padding-right:0px;padding-top:76px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-16-592fbec0c34ad139821 {};}@media only screen and (max-width: 992px){.qfy-column-16-592fbec0c34ad139821 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:76px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-16-592fbec0c34ad139821 {};}</style>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-8-592fbec0c308b46995{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:0px;margin-top:0px;}section.section.qfy-row-8-592fbec0c308b46995 > .container{max-width:1280px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-8-592fbec0c308b46995{padding-left:15px;padding-right:15px;padding-top:3px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section><section data-fixheight="" class="qfy-row-10-592fbec0c502a66007 section    full   section-text-no-shadow section-inner-no-shadow section-normal" id="bit_ast76" style="margin-bottom:0px;border-radius:0px;color:#000000;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: #f4f4f4;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-19-592fbec0c536f386623 qfy-column-inner  vc_span12  text-Default small-screen-Default fullrow" data-dw="1/1" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c56b5136 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c56b5136 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0c56b5136" m-padding="0px 0px 40px 0px" p-padding="0px 0px 40px 0px" css_animation_delay="0" qfyuuid="qfy_header_7fgg4" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:40px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><div class="header_title" style="font-family:微软雅黑;font-size:34px;font-weight:normal;font-style:normal;color:#ef4f19;">客户如何评价我们</div><span class="line-abs bottom hcenter" style="overflow:hidden;border-bottom-style:solid;width:1000px;border-bottom-width:1px;border-bottom-color:#d8d8d8;margin-top:30px;"></span></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> <div id="slidercontent_592fbec0c597d174867" style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="slidercontent_fy3hx" class="qfy-slidercontent vc-contentarea qfy-element bstyle bstyle1  "><style>#slidercontent_592fbec0c597d174867 .rsDefault .rsArrowIcn{background-color:#cecece;}#slidercontent_592fbec0c597d174867 .rsDefault .rsBullet span{background-color:#cecece;border:1px solid #cecece;}#slidercontent_592fbec0c597d174867 .rsDefault .rsBullet.rsNavSelected span{background-color:#f1501a;border:1px solid #f1501a;}</style><div data-minheight="287" style="margin:0 auto;width:100%;max-width:100%;position:relative;overflow:hidden;z-index:3;min-height:287px;" class="royalSlider_gallery_new rsDefault played rsAutoHeight rsHor rsWithBullets" transitionspeed="600" transitiontype="move" disabledclick="true" auto_play="false" delay="0" visiblenearby="false" thumbnails_orientation="horizontal" controlnavigation="bullets" arrowsnav="false" showfullscreen="false" g_loop="true" g_height="300" g_width="300" bgcolor="transparent" arrowsnavautohide="false" autoscaleslider="false" slidesorientation="horizontal" imagescalemode="fit-if-smaller"><div class="rsOverflow" style="width: 1024px; height: 287px; transition: height 600ms ease-in-out;"><div class="rsContainer" style="transition-duration: 0s; transform: translate3d(0px, 0px, 0px);"><div style="left: 0px;" class="rsSlide  rsActiveSlide"><section data-fixheight="" class="qfy-row-11-592fbec0c5bac150792 section     no  section-text-no-shadow section-inner-no-shadow section-normal" style="margin-bottom: 0px; border-radius: 0px; color: rgb(0, 0, 0); height: 287px; visibility: visible; opacity: 1; transition: opacity 400ms ease-in-out;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-20-592fbec0c5e12910188 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-undefined" data-dw="1/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0c6429584 .head{font-size: 16px !important;}.single_image_text-592fbec0c6429584 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_158lm" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_158lm" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element vc_align_center">
		<div class="wpb_wrapper"><span></span><img class="front_image vc_box_circle  ag_image" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNC8wNi9mZmY5OGJhNmNhMGY0YzRmMjBjZGFmNDRjNDEzNTMyMC0yMDB4MjAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" alt="team1" description="" data-title="team1" title="" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a></div></div></div><style>.qfy-column-20-592fbec0c5e12910188 > .column_inner:hover{}.qfy-column-20-592fbec0c5e12910188 > .column_inner:hover{}.qfy-column-20-592fbec0c5e12910188 > .column_inner:hover >.background-media{}.qfy-column-20-592fbec0c5e12910188 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-20-592fbec0c5e12910188 > .column_inner {padding-left:20px;padding-right:20px;padding-top:10px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-20-592fbec0c5e12910188 {width:30.384747292418773%;};}@media only screen and (max-width: 992px){.qfy-column-20-592fbec0c5e12910188 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-20-592fbec0c5e12910188 {width:30.384747292418773%;};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-21-592fbec0c65fc459010 qfy-column-inner vc_span_class vc_span8  text-Default small-screen-Default" data-dw="2/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 1px 0px" p-padding="0px 0px 1px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_gtx7x" class="qfy-element qfy-text qfy-text-61951 wpb_text_column wpb_content_element  mobile_fontsize13" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:0px;padding-bottom:1px;padding-right:0px;">
		<div class="wpb_wrapper">
			<p><span style="font-size:13px;"><span style="font-family: 微软雅黑;"><span style="color: rgb(105, 105, 105);"><span style="color: rgb(105, 105, 105);"><span style="color: rgb(128, 128, 128);">起飞页是响应式建站专家，拥有全球最领先的屏幕界面智能识别技术，实现所有建站功能组件在多种屏幕下的完美呈现，真正让您的桌面/平板/手机3个网站同步生成，还可连接微信公众平台，创建您的微站。<span style="color: rgb(128, 128, 128);"><span style="line-height: 1;">当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。</span></span></span></span></span></span></span></p>

		</div> 
	</div> 
	<div m-padding="2px 0px 0px 0px" p-padding="2px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_zluii" class="qfy-element qfy-text qfy-text-44588 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:2px;padding-bottom:0px;">
		<div class="wpb_wrapper">
			<div>
<table class="nomarl" width="649" height="144" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr>
			<td style="width: 60%; border-color: rgb(255, 255, 255);">
			<div><span style="display:inline-block;line-height:1.6;"><span style="color: rgb(105, 105, 105);"><span style="font-family: 微软雅黑;"><span style="font-size: 22px;">孙阳</span></span></span></span></div>

			<div><span style="display:inline-block;line-height:1.6;"><span style="color: rgb(239, 79, 25);"><span style="font-size: 15px;"><span style="font-family: 微软雅黑;">X企业CEO,联合创始人</span></span></span></span></div>
			</td>
			<td style="text-align: right; width: 40%; border-color: rgb(255, 255, 255);"><img alt="" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNy8wMy9jMzg0NDJlMjg3NzdiMTIwYjQ5Y2EyYThmM2E0NDExOC5wbmc_p_p100_p_3D.png" style="vertical-align:middle;" title="" width="114" height="19"></td>
		</tr>
	</tbody>
</table>
</div>

		</div> 
	</div> </div></div></div><style>.qfy-column-21-592fbec0c65fc459010 > .column_inner:hover{}.qfy-column-21-592fbec0c65fc459010 > .column_inner:hover{}.qfy-column-21-592fbec0c65fc459010 > .column_inner:hover >.background-media{}.qfy-column-21-592fbec0c65fc459010 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-21-592fbec0c65fc459010 > .column_inner {padding-left:20px;padding-right:20px;padding-top:10px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-21-592fbec0c65fc459010 {width:69.6%;};}@media only screen and (max-width: 992px){.qfy-column-21-592fbec0c65fc459010 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-21-592fbec0c65fc459010 {width:69.6%;};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-11-592fbec0c5bac150792{padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-11-592fbec0c5bac150792{padding-left:15px;padding-right:15px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section></div><div style="left: 1032px;" class="rsSlide "><section data-fixheight="" class="qfy-row-12-592fbec0c6f05205167 section     no  section-text-no-shadow section-inner-no-shadow section-normal" style="margin-bottom: 0px; border-radius: 0px; color: rgb(0, 0, 0); height: 287px; visibility: visible; opacity: 1; transition: opacity 400ms ease-in-out;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-22-592fbec0c716246069 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-undefined" data-dw="1/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0c74ec215 .head{font-size: 16px !important;}.single_image_text-592fbec0c74ec215 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_158lm" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_158lm" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element vc_align_center">
		<div class="wpb_wrapper"><span></span><img class="front_image vc_box_circle  ag_image" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNC8wNi9mZmY5OGJhNmNhMGY0YzRmMjBjZGFmNDRjNDEzNTMyMC0yMDB4MjAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" alt="team1" description="" data-title="team1" title="" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a></div></div></div><style>.qfy-column-22-592fbec0c716246069 > .column_inner:hover{}.qfy-column-22-592fbec0c716246069 > .column_inner:hover{}.qfy-column-22-592fbec0c716246069 > .column_inner:hover >.background-media{}.qfy-column-22-592fbec0c716246069 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-22-592fbec0c716246069 > .column_inner {padding-left:20px;padding-right:20px;padding-top:10px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-22-592fbec0c716246069 {width:30.384747292418773%;};}@media only screen and (max-width: 992px){.qfy-column-22-592fbec0c716246069 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-22-592fbec0c716246069 {width:30.384747292418773%;};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-23-592fbec0c76a1763519 qfy-column-inner vc_span_class vc_span8  text-Default small-screen-Default" data-dw="2/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 1px 0px" p-padding="0px 0px 1px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_gtx7x" class="qfy-element qfy-text qfy-text-28556 wpb_text_column wpb_content_element  mobile_fontsize13" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:0px;padding-bottom:1px;padding-right:0px;">
		<div class="wpb_wrapper">
			<p><span style="font-size:13px;"><span style="font-family: 微软雅黑;"><span style="color: rgb(105, 105, 105);"><span style="color: rgb(105, 105, 105);"><span style="color: rgb(128, 128, 128);">起飞页是响应式建站专家，拥有全球最领先的屏幕界面智能识别技术，实现所有建站功能组件在多种屏幕下的完美呈现，真正让您的桌面/平板/手机3个网站同步生成，还可连接微信公众平台，创建您的微站。<span style="color: rgb(128, 128, 128);"><span style="line-height: 1;">当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。</span></span></span></span></span></span></span></p>

		</div> 
	</div> 
	<div m-padding="2px 0px 0px 0px" p-padding="2px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_zluii" class="qfy-element qfy-text qfy-text-45198 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:2px;padding-bottom:0px;">
		<div class="wpb_wrapper">
			<div>
<table class="nomarl" width="649" height="144" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr>
			<td style="width: 60%; border-color: rgb(255, 255, 255);">
			<div><span style="display:inline-block;line-height:1.6;"><span style="color: rgb(105, 105, 105);"><span style="font-family: 微软雅黑;"><span style="font-size: 22px;">孙阳</span></span></span></span></div>

			<div><span style="display:inline-block;line-height:1.6;"><span style="color: rgb(239, 79, 25);"><span style="font-size: 15px;"><span style="font-family: 微软雅黑;">X企业CEO,联合创始人</span></span></span></span></div>
			</td>
			<td style="text-align: right; width: 40%; border-color: rgb(255, 255, 255);"><img alt="" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNy8wMy9jMzg0NDJlMjg3NzdiMTIwYjQ5Y2EyYThmM2E0NDExOC5wbmc_p_p100_p_3D.png" style="vertical-align:middle;" title="" width="114" height="19"></td>
		</tr>
	</tbody>
</table>
</div>

		</div> 
	</div> </div></div></div><style>.qfy-column-23-592fbec0c76a1763519 > .column_inner:hover{}.qfy-column-23-592fbec0c76a1763519 > .column_inner:hover{}.qfy-column-23-592fbec0c76a1763519 > .column_inner:hover >.background-media{}.qfy-column-23-592fbec0c76a1763519 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-23-592fbec0c76a1763519 > .column_inner {padding-left:20px;padding-right:20px;padding-top:10px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-23-592fbec0c76a1763519 {width:69.6%;};}@media only screen and (max-width: 992px){.qfy-column-23-592fbec0c76a1763519 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-23-592fbec0c76a1763519 {width:69.6%;};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-12-592fbec0c6f05205167{padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-12-592fbec0c6f05205167{padding-left:15px;padding-right:15px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section></div><div style="left: -1032px;" class="rsSlide "><section data-fixheight="" class="qfy-row-13-592fbec0c7f13388452 section     no  section-text-no-shadow section-inner-no-shadow section-normal" style="margin-bottom: 0px; border-radius: 0px; color: rgb(0, 0, 0); height: 287px;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-24-592fbec0c8164532523 qfy-column-inner vc_span_class vc_span4  text-Default small-screen-undefined" data-dw="1/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 768px) {.single_image_text-592fbec0c84f1239 .head{font-size: 16px !important;}.single_image_text-592fbec0c84f1239 .content{font-size: 16px !important;}}</style>
	<div id="qfy_single_image_158lm" style="width:100%;padding:0px;margin:0px;height:100%;clear:both;position:relative;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;background-repeat: no-repeat;" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_single_image_158lm" class="qfy-element bitImageControlDiv"><a class="bitImageAhover  ">
	<div class="bitImageParentDiv wpb_single_image wpb_content_element vc_align_center">
		<div class="wpb_wrapper"><span></span><img class="front_image vc_box_circle  ag_image" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNC8wNi9mZmY5OGJhNmNhMGY0YzRmMjBjZGFmNDRjNDEzNTMyMC0yMDB4MjAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" alt="team1" description="" data-title="team1" title="" src-img="" style=""></div> 
	</div> 
	</a></div><a class="bitImageAhover  "> </a></div></div></div><style>.qfy-column-24-592fbec0c8164532523 > .column_inner:hover{}.qfy-column-24-592fbec0c8164532523 > .column_inner:hover{}.qfy-column-24-592fbec0c8164532523 > .column_inner:hover >.background-media{}.qfy-column-24-592fbec0c8164532523 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-24-592fbec0c8164532523 > .column_inner {padding-left:20px;padding-right:20px;padding-top:10px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-24-592fbec0c8164532523 {width:30.384747292418773%;};}@media only screen and (max-width: 992px){.qfy-column-24-592fbec0c8164532523 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-24-592fbec0c8164532523 {width:30.384747292418773%;};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-25-592fbec0c86b3985706 qfy-column-inner vc_span_class vc_span8  text-Default small-screen-Default" data-dw="2/3" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:10px;margin-right:10px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 1px 0px" p-padding="0px 0px 1px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_gtx7x" class="qfy-element qfy-text qfy-text-81988 wpb_text_column wpb_content_element  mobile_fontsize13" style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:0px;padding-bottom:1px;padding-right:0px;">
		<div class="wpb_wrapper">
			<p><span style="font-size:13px;"><span style="font-family: 微软雅黑;"><span style="color: rgb(105, 105, 105);"><span style="color: rgb(105, 105, 105);"><span style="color: rgb(128, 128, 128);">起飞页是响应式建站专家，拥有全球最领先的屏幕界面智能识别技术，实现所有建站功能组件在多种屏幕下的完美呈现，真正让您的桌面/平板/手机3个网站同步生成，还可连接微信公众平台，创建您的微站。<span style="color: rgb(128, 128, 128);"><span style="line-height: 1;">当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。</span></span></span></span></span></span></span></p>

		</div> 
	</div> 
	<div m-padding="2px 0px 0px 0px" p-padding="2px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_zluii" class="qfy-element qfy-text qfy-text-48772 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-repeat: no-repeat;;padding-top:2px;padding-bottom:0px;">
		<div class="wpb_wrapper">
			<div>
<table class="nomarl" width="649" height="144" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr>
			<td style="width: 60%; border-color: rgb(255, 255, 255);">
			<div><span style="display:inline-block;line-height:1.6;"><span style="color: rgb(105, 105, 105);"><span style="font-family: 微软雅黑;"><span style="font-size: 22px;">孙阳</span></span></span></span></div>

			<div><span style="display:inline-block;line-height:1.6;"><span style="color: rgb(239, 79, 25);"><span style="font-size: 15px;"><span style="font-family: 微软雅黑;">X企业CEO,联合创始人</span></span></span></span></div>
			</td>
			<td style="text-align: right; width: 40%; border-color: rgb(255, 255, 255);"><img alt="" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNy8wMy9jMzg0NDJlMjg3NzdiMTIwYjQ5Y2EyYThmM2E0NDExOC5wbmc_p_p100_p_3D.png" style="vertical-align:middle;" title="" width="114" height="19"></td>
		</tr>
	</tbody>
</table>
</div>

		</div> 
	</div> </div></div></div><style>.qfy-column-25-592fbec0c86b3985706 > .column_inner:hover{}.qfy-column-25-592fbec0c86b3985706 > .column_inner:hover{}.qfy-column-25-592fbec0c86b3985706 > .column_inner:hover >.background-media{}.qfy-column-25-592fbec0c86b3985706 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-25-592fbec0c86b3985706 > .column_inner {padding-left:20px;padding-right:20px;padding-top:10px;padding-bottom:30px;}.wpb_row .vc_span_class.qfy-column-25-592fbec0c86b3985706 {width:69.6%;};}@media only screen and (max-width: 992px){.qfy-column-25-592fbec0c86b3985706 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-25-592fbec0c86b3985706 {width:69.6%;};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-13-592fbec0c7f13388452{padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-13-592fbec0c7f13388452{padding-left:15px;padding-right:15px;padding-top:0px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section></div></div></div><div class="rsNav rsBullets"><div class="rsNavItem rsBullet rsNavSelected"><span></span></div><div class="rsNavItem rsBullet"><span></span></div><div class="rsNavItem rsBullet"><span></span></div></div><div style="clear:both; float: none;"></div></div></div></div></div></div><style>.qfy-column-19-592fbec0c536f386623 > .column_inner:hover{}.qfy-column-19-592fbec0c536f386623 > .column_inner:hover{}.qfy-column-19-592fbec0c536f386623 > .column_inner:hover >.background-media{}.qfy-column-19-592fbec0c536f386623 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-19-592fbec0c536f386623 > .column_inner {padding-left:0px;padding-right:0px;padding-top:60px;padding-bottom:60px;}.wpb_row .vc_span_class.qfy-column-19-592fbec0c536f386623 {};}@media only screen and (max-width: 992px){.qfy-column-19-592fbec0c536f386623 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-19-592fbec0c536f386623 {};}</style>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-10-592fbec0c502a66007{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:0px;margin-top:0px;}section.section.qfy-row-10-592fbec0c502a66007 > .container{max-width:1024px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-10-592fbec0c502a66007{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section><section data-fixheight="" class="qfy-row-14-592fbec0c9019904398 section    full   section-text-no-shadow section-inner-no-shadow section-normal" id="bit_351z2" style="margin-bottom:0px;border-radius:0px;color:#383838;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: #ffffff;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-26-592fbec0c938c866867 qfy-column-inner  vc_span12  text-default small-screen-default fullrow" data-dw="1/1" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c966d628 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0c966d628 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0c966d628" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_yl4qt" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><div class="header_title" style="font-family:微软雅黑;font-size:32px;font-weight:normal;font-style:normal;color:#1e3c3f;">我们的战略合作伙伴</div><span class="line-abs bottom hcenter" style="overflow:hidden;border-bottom-style:solid;width:80px;border-bottom-width:4px;border-bottom-color:#f1501a;margin-top:20px;"></span></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> <style>
@media screen and (max-width: 760px) {
.g1163 .wpb_images_lib_isotope .gimg{width:33.166667%;}
}
@media screen and (min-width: 760px) {
.g1163 .wpb_images_lib_isotope .gimg{width:16.583333%;}
}
</style>
<style>@media only screen and (max-width: 760px) {.single_image_text-592fbec0ca453907 .head{font-size: 16px !important;}.single_image_text-592fbec0ca453907 .content{font-size: 16px !important;}}</style><div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_images_carousel_mscec" class="qfy-element wpb_images_lib wpb_content_element vc_clearfix" style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
    <div class="wpb_wrapper g1163">
        		
				
        <div class="wpb_images_lib_isotope  isotope" data-liblayout="masonry" data-width="10" style="position: relative; overflow: hidden; height: 301px;">
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(0px, 0px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS81ODk3NThkN2Y1ZDU0ODA5NTkwZDVhZTIzOTkzNGNlMS0xNTB4MTEwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS81ODk3NThkN2Y1ZDU0ODA5NTkwZDVhZTIzOTkzNGNlMS5qcGc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.jpg" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS81ODk3NThkN2Y1ZDU0ODA5NTkwZDVhZTIzOTkzNGNlMS5qcGc_p_p100_p_3D.jpg" alt="ghghghg" title="" description="" data-title="ghghghg" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(170px, 0px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yZjAxMmZjZjE5ZWFhNDQyZGJjYjU1YWNiZmYxYTYyNy0xNTB4MTEwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yZjAxMmZjZjE5ZWFhNDQyZGJjYjU1YWNiZmYxYTYyNy5qcGc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.jpg" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yZjAxMmZjZjE5ZWFhNDQyZGJjYjU1YWNiZmYxYTYyNy5qcGc_p_p100_p_3D.jpg" alt="pro-index_1ggg7" title="" description="" data-title="pro-index_1ggg7" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(340px, 0px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yZGRkZGZmNjIxMDY2YjJmMmQ2NDI0ZWYzZjNjZDg2Ny0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yZGRkZGZmNjIxMDY2YjJmMmQ2NDI0ZWYzZjNjZDg2Ny5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yZGRkZGZmNjIxMDY2YjJmMmQ2NDI0ZWYzZjNjZDg2Ny5wbmc_p_p100_p_3D.png" alt="pro-index_17" title="" description="" data-title="pro-index_17" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(510px, 0px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS81MzljNjUwZWVjMDM0YjVmMGNiMGI5M2Y0MTQ0N2I2OS0xNTB4MTEwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS81MzljNjUwZWVjMDM0YjVmMGNiMGI5M2Y0MTQ0N2I2OS5qcGc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.jpg" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS81MzljNjUwZWVjMDM0YjVmMGNiMGI5M2Y0MTQ0N2I2OS5qcGc_p_p100_p_3D.jpg" alt="pro-index_17fgfgg" title="" description="" data-title="pro-index_17fgfgg" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(680px, 0px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS82NDljYzk0NTEyMGY1ODliNzAyMzZhY2I1OTE1MmM0Yi0xNTB4MTEwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS82NDljYzk0NTEyMGY1ODliNzAyMzZhY2I1OTE1MmM0Yi5qcGc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.jpg" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS82NDljYzk0NTEyMGY1ODliNzAyMzZhY2I1OTE1MmM0Yi5qcGc_p_p100_p_3D.jpg" alt="pro-index_17fvfv" title="" description="" data-title="pro-index_17fvfv" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(850px, 0px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS82ODg4YzcwMzY0ZGYzZDQxZTMxNzkyNzVlZDQxMjk5Mi0xNTB4MTEwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS82ODg4YzcwMzY0ZGYzZDQxZTMxNzkyNzVlZDQxMjk5Mi5qcGc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.jpg" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS82ODg4YzcwMzY0ZGYzZDQxZTMxNzkyNzVlZDQxMjk5Mi5qcGc_p_p100_p_3D.jpg" alt="pro-index_17ggg" title="" description="" data-title="pro-index_17ggg" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(0px, 75px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83ZmJmNDIxNmQ2YzkxOTlhZGM1NDY0ZmYzYjUyODBkOC0xNTB4MTEwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83ZmJmNDIxNmQ2YzkxOTlhZGM1NDY0ZmYzYjUyODBkOC5qcGc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.jpg" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83ZmJmNDIxNmQ2YzkxOTlhZGM1NDY0ZmYzYjUyODBkOC5qcGc_p_p100_p_3D.jpg" alt="pro-index_17xcxc" title="" description="" data-title="pro-index_17xcxc" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(170px, 75px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS85MjE2ODcwZGViN2JiZTU3ZTA4MmIwN2E3OWJmMWEyOS0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS85MjE2ODcwZGViN2JiZTU3ZTA4MmIwN2E3OWJmMWEyOS5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS85MjE2ODcwZGViN2JiZTU3ZTA4MmIwN2E3OWJmMWEyOS5wbmc_p_p100_p_3D.png" alt="pro-index_18" title="" description="" data-title="pro-index_18" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(340px, 75px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9iYjUxNzE2NDlhY2JlZjU4YTNjZTBkMTMxYTBjNDUxYi0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9iYjUxNzE2NDlhY2JlZjU4YTNjZTBkMTMxYTBjNDUxYi5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="266" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9iYjUxNzE2NDlhY2JlZjU4YTNjZTBkMTMxYTBjNDUxYi5wbmc_p_p100_p_3D.png" alt="pro-index_19" title="" description="" data-title="pro-index_19" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(510px, 75px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9jOWQ3NDNjNDRjYmNiN2E2YTkyODM1MDM5NWU0NGEwNy0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9jOWQ3NDNjNDRjYmNiN2E2YTkyODM1MDM5NWU0NGEwNy5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9jOWQ3NDNjNDRjYmNiN2E2YTkyODM1MDM5NWU0NGEwNy5wbmc_p_p100_p_3D.png" alt="pro-index_20" title="" description="" data-title="pro-index_20" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(680px, 75px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83OWM3YjFiNWIyZTk5NmZhNGI2ZWJlYjQ0NjBkZjA2NS0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83OWM3YjFiNWIyZTk5NmZhNGI2ZWJlYjQ0NjBkZjA2NS5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83OWM3YjFiNWIyZTk5NmZhNGI2ZWJlYjQ0NjBkZjA2NS5wbmc_p_p100_p_3D.png" alt="pro-index_21" title="" description="" data-title="pro-index_21" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(850px, 75px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9lNDk1ZjdkNGRmMTM0YmNmYzk3YjBhZDg2ODBhNWZjMi0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9lNDk1ZjdkNGRmMTM0YmNmYzk3YjBhZDg2ODBhNWZjMi5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9lNDk1ZjdkNGRmMTM0YmNmYzk3YjBhZDg2ODBhNWZjMi5wbmc_p_p100_p_3D.png" alt="pro-index_22" title="" description="" data-title="pro-index_22" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(0px, 150px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9kZmM1YjVmODk2MDM1Njg5ZmI3YmIzNTJhOGU5YzRlOS0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9kZmM1YjVmODk2MDM1Njg5ZmI3YmIzNTJhOGU5YzRlOS5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="266" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9kZmM1YjVmODk2MDM1Njg5ZmI3YmIzNTJhOGU5YzRlOS5wbmc_p_p100_p_3D.png" alt="pro-index_23" title="" description="" data-title="pro-index_23" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(170px, 150px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84NWEwNDljODAxYzQxZmUzNDdmZjc5MDNlYjEyYjA2YS0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84NWEwNDljODAxYzQxZmUzNDdmZjc5MDNlYjEyYjA2YS5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84NWEwNDljODAxYzQxZmUzNDdmZjc5MDNlYjEyYjA2YS5wbmc_p_p100_p_3D.png" alt="pro-index_24" title="" description="" data-title="pro-index_24" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(510px, 150px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS80ZjM0YWVjYTJhNzk2ODMxNWNlMWI0MzA3YjEzOTY1ZS0xNTB4MTA5LnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS80ZjM0YWVjYTJhNzk2ODMxNWNlMWI0MzA3YjEzOTY1ZS5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="109" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS80ZjM0YWVjYTJhNzk2ODMxNWNlMWI0MzA3YjEzOTY1ZS5wbmc_p_p100_p_3D.png" alt="pro-index_25" title="" description="" data-title="pro-index_25" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(680px, 150px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yY2MwYWU2M2VkNGFlNTE5ZmRiNDhiMDhiNjg4ZTk3OS0xNTB4MTA5LnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yY2MwYWU2M2VkNGFlNTE5ZmRiNDhiMDhiNjg4ZTk3OS5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="109" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8yY2MwYWU2M2VkNGFlNTE5ZmRiNDhiMDhiNjg4ZTk3OS5wbmc_p_p100_p_3D.png" alt="pro-index_26" title="" description="" data-title="pro-index_26" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(850px, 150px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84YmY0MmVkOGZjZThhMDA4Zjc1YmE0MTUzNDhkMjE3Ny0xNTB4MTA5LnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84YmY0MmVkOGZjZThhMDA4Zjc1YmE0MTUzNDhkMjE3Ny5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="266" height="109" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84YmY0MmVkOGZjZThhMDA4Zjc1YmE0MTUzNDhkMjE3Ny5wbmc_p_p100_p_3D.png" alt="pro-index_27" title="" description="" data-title="pro-index_27" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(340px, 151px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9hMGU1MTQ2ZjA3NGYyNTU5YmJkMDRkZmE2N2Q4OTJjZi0xNTB4MTA5LnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9hMGU1MTQ2ZjA3NGYyNTU5YmJkMDRkZmE2N2Q4OTJjZi5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="109" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9hMGU1MTQ2ZjA3NGYyNTU5YmJkMDRkZmE2N2Q4OTJjZi5wbmc_p_p100_p_3D.png" alt="pro-index_28" title="" description="" data-title="pro-index_28" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(170px, 225px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8xYjkzMjViNjI5MTkzYzg4YzlhNGYyYjA0ZTc4ZDRjMi0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8xYjkzMjViNjI5MTkzYzg4YzlhNGYyYjA0ZTc4ZDRjMi5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8xYjkzMjViNjI5MTkzYzg4YzlhNGYyYjA0ZTc4ZDRjMi5wbmc_p_p100_p_3D.png" alt="pro-index_29" title="" description="" data-title="pro-index_29" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(510px, 225px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9iZGMyYTc3ZGM3ZmE5MDYxNDBkOGUxOWNhNTZhOWRiZi0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9iZGMyYTc3ZGM3ZmE5MDYxNDBkOGUxOWNhNTZhOWRiZi5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9iZGMyYTc3ZGM3ZmE5MDYxNDBkOGUxOWNhNTZhOWRiZi5wbmc_p_p100_p_3D.png" alt="pro-index_30" title="" description="" data-title="pro-index_30" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(680px, 225px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8xYWZkZDE1MzVlYmM0NjkyMzc0MmI5NDU4NTdjNjBlOS0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8xYWZkZDE1MzVlYmM0NjkyMzc0MmI5NDU4NTdjNjBlOS5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="266" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS8xYWZkZDE1MzVlYmM0NjkyMzc0MmI5NDU4NTdjNjBlOS5wbmc_p_p100_p_3D.png" alt="pro-index_31" title="" description="" data-title="pro-index_31" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(850px, 225px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9hYTEwMjFmMTY4ZTdmODMwNjliYTBlNDRjYjZkMDI5MC0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9hYTEwMjFmMTY4ZTdmODMwNjliYTBlNDRjYjZkMDI5MC5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS9hYTEwMjFmMTY4ZTdmODMwNjliYTBlNDRjYjZkMDI5MC5wbmc_p_p100_p_3D.png" alt="pro-index_32" title="" description="" data-title="pro-index_32" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(0px, 226px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83NTQxM2RkOGRjMDE4MDdmMjM1YzQyOTgzZmIyZjFjNy0xNTB4MTEwLnBuZw_p_p100_p_3D_p_p100_p_3D.png" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83NTQxM2RkOGRjMDE4MDdmMjM1YzQyOTgzZmIyZjFjNy5wbmc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.png" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS83NTQxM2RkOGRjMDE4MDdmMjM1YzQyOTgzZmIyZjFjNy5wbmc_p_p100_p_3D.png" alt="pro-index_1283" title="" description="" data-title="pro-index_1283" src-img=""><i></i>
					</a>
								</div></div>
												
				<div class="vc-item images gimg isotope-item" style="margin-bottom: 10px; padding-left: 5px; padding-right: 5px; position: absolute; left: 0px; top: 0px; transform: translate(340px, 226px);">
					<div class="vc-inner" style="text-align:center">
														<a class="qfy_thickbox bitImageAhover " thumbpath="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84ZmU5MGJmNmZmZmQ2MzMyNzdjYzFlNjMxY2M5ZjY4My0xNTB4MTEwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg" href="http://static.qifeiye.com/caches/927a729d326a897a6e2f27a03c31ee07/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84ZmU5MGJmNmZmZmQ2MzMyNzdjYzFlNjMxY2M5ZjY4My5qcGc_p_p100_p_2FYWktbm8tY2FjaGU9dHJ1ZQ_p_p100_p_3D_p_p100_p_3D.jpg" rel="gallery-group-592fbec0ca49c524501">
						<img style="" class="" width="267" height="110" src="./shouyefiles/aHR0cDovLzU3ZThlY2Y0MTE1NWQudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNi8xMS84ZmU5MGJmNmZmZmQ2MzMyNzdjYzFlNjMxY2M5ZjY4My5qcGc_p_p100_p_3D.jpg" alt="rrgrgr" title="" description="" data-title="rrgrgr" src-img=""><i></i>
					</a>
								</div></div>
																				        </div>
    </div></div></div></div></div><style>.qfy-column-26-592fbec0c938c866867 > .column_inner:hover{}.qfy-column-26-592fbec0c938c866867 > .column_inner:hover{}.qfy-column-26-592fbec0c938c866867 > .column_inner:hover >.background-media{}.qfy-column-26-592fbec0c938c866867 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-26-592fbec0c938c866867 > .column_inner {padding-left:0px;padding-right:0px;padding-top:44px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-26-592fbec0c938c866867 {};}@media only screen and (max-width: 992px){.qfy-column-26-592fbec0c938c866867 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:44px;padding-bottom:px;}.display_entire .wpb_row .vc_span_class.qfy-column-26-592fbec0c938c866867 {};}</style>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-14-592fbec0c9019904398{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:43px;margin-top:0px;}section.section.qfy-row-14-592fbec0c9019904398 > .container{max-width:1024px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-14-592fbec0c9019904398{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:43px;margin-top:0px;}}
	</style>
</section>

<section data-fixheight="" class="qfy-row-15-592fbec0d12b5179530 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_5zegh" style="margin-bottom:0px;border-radius:0px;color:#000000;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: #f4f4f4;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-27-592fbec0d151b642570 qfy-column-inner  vc_span12  text-default small-screen-undefined fullrow" data-dw="1/1" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;"><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0d18fc476 .header_title{font-size:20px !important;}}</style><style>@media only screen and (max-width: 760px) {#vc_header_592fbec0d18fc476 .header_subtitle{font-size:14px !important;}}</style>
	<div id="vc_header_592fbec0d18fc476" m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_header_yl4qt" class="qfy-element minheigh1px wpb_text_column wpb_content_element " style="position: relative;;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;">
		<div class="wpb_wrapper">
			<h1 class="qfy_title center mobilecenter"><div class="qfy_title_inner" style="display:inline-block;position:relative;max-width:100%;"><div class="header_title" style="font-family:微软雅黑;font-size:32px;font-weight:normal;font-style:normal;color:#1e3c3f;">拥有一个网站或仅是尝试一下新的想法</div><span class="line-abs bottom hcenter" style="overflow:hidden;border-bottom-style:solid;width:80px;border-bottom-width:4px;border-bottom-color:#f1501a;margin-top:20px;"></span></div><style></style><div class="button_wrapper" style="display:none;"><div class="button " style="display:inline-block;max-width:100%;text-align:center; font-size:12px;"></div></div><span style="clear:both;"></span></h1>
		</div> 
	</div> 
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_fhtbd" class="qfy-element qfy-text qfy-text-24554 wpb_text_column wpb_content_element  mobile_fontsize12" style="position: relative;;;line-height:2em;;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color:#808080;"><span style="font-size: 36px;"><span style="letter-spacing: 1px;"><span style="font-family: 微软雅黑;"><span style="font-size: 16px;"><span style="font-family: 微软雅黑;"><span style="letter-spacing: 0px;"><span style="letter-spacing: 0px;">流线式网页布局设计方案，可视化图文内容编辑模式，它让网站制作和维护成为一件轻松惬意的事</span></span></span></span></span></span></span></span></p>

		</div> 
	</div> <div style="margin-top:0px;margin-bottom:0px;padding-top:44px;padding-bottom:1px;padding-right:0px;padding-left:0px;" m-padding="44px 0px 1px 0px" p-padding="44px 0px 1px 0px" css_animation_delay="0" qfyuuid="qfy_btn_3grrl" class="qfy-element vc_btn3-container vc_btn3-center"><a onmouseleave="this.style.borderColor=&#39;#f1501a&#39;; this.style.backgroundColor=&#39;#f1501a&#39;; this.style.color=&#39;#ffffff&#39;;" onmouseenter="this.style.backgroundColor=&#39;#f1501a&#39;; this.style.borderColor=&#39;#f1501a&#39;; this.style.color=&#39;#ffffff&#39;;" style="font-family:微软雅黑; font-size:17px; padding-left:60px;padding-right:60px; padding-top:10px;padding-bottom:10px; border-width:1px; border-color:#f1501a; background-color:#f1501a; color:#ffffff;" class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-round vc_btn3-style-qfy-custom" href="http://57e8ecf41155d.t73.qifeiye.com/?page_id=7010" target="">免费体验</a></div>
</div></div></div><style>.qfy-column-27-592fbec0d151b642570 > .column_inner:hover{}.qfy-column-27-592fbec0d151b642570 > .column_inner:hover{}.qfy-column-27-592fbec0d151b642570 > .column_inner:hover >.background-media{}.qfy-column-27-592fbec0d151b642570 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-27-592fbec0d151b642570 > .column_inner {padding-left:0px;padding-right:0px;padding-top:39px;padding-bottom:62px;}.wpb_row .vc_span_class.qfy-column-27-592fbec0d151b642570 {};}@media only screen and (max-width: 992px){.qfy-column-27-592fbec0d151b642570 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:39px;padding-bottom:62px;}.display_entire .wpb_row .vc_span_class.qfy-column-27-592fbec0d151b642570 {};}</style>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-15-592fbec0d12b5179530{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:0px;margin-top:0px;}section.section.qfy-row-15-592fbec0d12b5179530 > .container{max-width:1280px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-15-592fbec0d12b5179530{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section>   -->                           </div>
                    

                         <div class="clear"></div>
                    </div>
              </div>
        </div><!-- END .page-wrapper -->
         <div class="clear"></div>
</div>
<div class="clear"></div>

			
			</div>
		
    			</div><!-- .wf-container -->
		</div><!-- .wf-wrap -->
	</div><!-- #main -->
	<footer id="footer" class="footer">
	<div class="wf-wrap">
		<div class="wf-container wpb_row footer1" bitdataaction="site_widget_container" bitdatamarker="sidebar_2">
			<section id="simplepage-2" style="margin-bottom:20px;" class="widget simplepage site_tooler"><style class="style_simplepage-2">#simplepage-2 .widget-title{padding:0 0 0 10px;height:28px;line-height:28px;background-color:transparent;margin:0px;font-family:;font-size:px;font-weight:normal;font-style:normal;text-decoration:none;color:#ffffff;border-top:1px solid transparent;border-left:1px solid transparent;border-right:1px solid transparent;border-bottom:0px solid transparent;background-image:none;-webkit-border-top-left-radius: 4px;-webkit-border-top-right-radius: 4px;-moz-border-radius-topleft: 4px;-moz-border-radius-topright: 4px;border-top-left-radius: 4px;border-top-right-radius: 4px;} #simplepage-2 .widget-title{border-top:0;border-left:0;border-right:0;} #simplepage-2 .bitWidgetFrame{border-bottom:0;border-top:0;border-left:0;border-right:0;padding:4px 10px 4px 10px;}#simplepage-2{-webkit-box-shadow:none;box-shadow:none;}#simplepage-2 .bitWidgetFrame{background-color:transparent;background-image:none;-webkit-border-bottom-left-radius: 4px;border-bottom-left-radius: 4px;-webkit-border-bottom-right-radius: 4px;border-bottom-right-radius: 4px;}#simplepage-2 .bitWidgetFrame{padding-left:0px;padding-right:0px;}body #simplepage-2 .bitWidgetFrame{padding-top:0px !important;padding-bottom:0px !important;}</style><div class="simplepage_container bitWidgetFrame" data-post_id="18298"><section data-fixheight="" class="qfy-row-16-592fbec0d349229192 section     no  section-text-no-shadow section-inner-no-shadow section-normal mobileHidden" id="bit_y46zk" style="margin-bottom:0px;border-radius:0px;color:#a9a9a9;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-28-592fbec0d37f9612853 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_2cp8s" data-anitime="0.7" class="qfy-element qfy-text qfy-text-42041 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 16px;"><span style="font-size: 18px;"><strong>关于功能</strong></span></span></span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;">本网站提供了高校教师的业绩统计,提交,保存,生成报表等功能.快快登录使用吧</span>。</span></span></div>

		</div> 
	</div> </div></div></div>
	
	<style>.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover{}.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover{}.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover >.background-media{}.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-28-592fbec0d37f9612853 > .column_inner {padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-28-592fbec0d37f9612853 {};}@media only screen and (max-width: 992px){.qfy-column-28-592fbec0d37f9612853 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-28-592fbec0d37f9612853 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-29-592fbec0d3e57179985 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_po1lv" data-anitime="0.7" class="qfy-element qfy-text qfy-text-52304 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><strong><span style="font-size: 16px;"><span style="font-size: 18px;">关于我们</span></span></strong></span></div>
			<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>
			<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;">三个热爱校园的大学生</span>。</span></span></div>
		</div> 
	</div> </div></div></div>
	
	
	<!-- <style>.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover{}.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover{}.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover >.background-media{}.qfy-column-28-592fbec0d37f9612853 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-28-592fbec0d37f9612853 > .column_inner {padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-28-592fbec0d37f9612853 {};}@media only screen and (max-width: 992px){.qfy-column-28-592fbec0d37f9612853 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-28-592fbec0d37f9612853 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-29-592fbec0d3e57179985 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_po1lv" data-anitime="0.7" class="qfy-element qfy-text qfy-text-52304 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><strong><span style="font-family: 微軟正黑體;"><span style="font-size: 18px;">新品发布</span></span></strong></span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-family: 华文楷体;"></span></span></span>

<div><span style="color:#A9A9A9;"><span style="font-size: 12px;">Created especially for you </span></span></div>

<div>
<div><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;">October 1, 2</span></span></span></div>

<hr bitsize="100" class="bitLine" style="border-width: 1px 0px 0px; border-style: solid; border-color: rgb(68, 68, 68) -moz-use-text-color; padding: 0px; width: 100%; height: 1px; float: none; margin: 2px 2px 10px 0px; top: 5px;"></div>

<div><span style="color:#A9A9A9;"><span style="font-size: 12px;">&nbsp;Awesome theme with endless possibilities. August 28, 2013 </span></span></div>
</div>

		</div> 
	</div> </div></div></div> --><style>.qfy-column-29-592fbec0d3e57179985 > .column_inner:hover{}.qfy-column-29-592fbec0d3e57179985 > .column_inner:hover{}.qfy-column-29-592fbec0d3e57179985 > .column_inner:hover >.background-media{}.qfy-column-29-592fbec0d3e57179985 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-29-592fbec0d3e57179985 > .column_inner {padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-29-592fbec0d3e57179985 {};}@media only screen and (max-width: 992px){.qfy-column-29-592fbec0d3e57179985 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-29-592fbec0d3e57179985 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-30-592fbec0d44524524 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_3z5iv" data-anitime="0.7" class="qfy-element qfy-text qfy-text-63900 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 16px;"><span style="font-size: 18px;"><strong></strong></span></span></span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;"><img src="images/newshouyelogo.png" id="footerlogo" ></span></span></span></div>

		</div> 
	</div> </div></div></div><style>.qfy-column-30-592fbec0d44524524 > .column_inner:hover{}.qfy-column-30-592fbec0d44524524 > .column_inner:hover{}.qfy-column-30-592fbec0d44524524 > .column_inner:hover >.background-media{}.qfy-column-30-592fbec0d44524524 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-30-592fbec0d44524524 > .column_inner {padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-30-592fbec0d44524524 {};}@media only screen and (max-width: 992px){.qfy-column-30-592fbec0d44524524 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-30-592fbec0d44524524 {};}</style><div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-31-592fbec0d4a6a142542 qfy-column-inner vc_span_class vc_span3  text-Default small-screen-undefined" data-dw="1/4" data-fixheight=""><div style="margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border-radius:0px;;position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-0" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_y7zwd" data-anitime="0.7" class="qfy-element qfy-text qfy-text-45040 wpb_text_column wpb_content_element " style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 18px;"><strong>联系方式</strong></span></span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;">&nbsp;</span></div>

<div class="span5 footer_copyright"><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-family: 华文楷体;"></span></span><a class="bitIcon iconLeft" data-tooltip="off" style="" target="_blank" tooltip="off"> 
<b style="color: rgb(68, 68, 68); border: 0px none; font-size: 13px; border-radius: 0px;"> 
<i class="glyphicon glyphicon-envelope" style="margin: 2px 6px; top: 0px;"> </i>
</b>
<span class="iconText" style="font-size:14px;"></span></a><span style="font-size: 12px;">1305709327@qq.com</span><br>
<span style="font-size: 14px;"></span></span>

<div>
<div><span style="color:#A9A9A9;"><a class="bitIcon iconLeft" data-tooltip="off" style="" target="_blank" tooltip="off"> 
<b style="color: rgb(68, 68, 68); border: 0px none; font-size: 13px; border-radius: 0px;"> 
<i class="glyphicon glyphicon-icon-phone" style="margin: 2px 6px; top: 0px;"> </i>
</b>
<span class="iconText" style="font-size:14px;"></span></a><span style="font-size: 12px;">+86 136 4169 0252</span></span></div>

<div><span style="color:#A9A9A9;"><span style="font-size: 14px;"><span style="font-size: 12px;"></span></span></span></div>
</div>

<!-- <div><span style="font-size: 12px;"><span style="color:#A9A9A9;"><a class="bitIcon iconLeft" data-tooltip="off" style="" target="_blank" tooltip="off" url-flag="0" url-flagtarget="_blank"> 
<b style="color: rgb(68, 68, 68); border: 0px none; font-size: 12px; border-radius: 0px;"> 
<i class="glyphicon glyphicon-icon-globe" style="margin: 2px 6px; top: 0px;"> </i>
</b>
<span class="iconText" style="font-size: 14px;"></span></a><span style="font-size: 12px;">Little Lomsdale St.</span></span></span>
</div> -->

</div>

		</div> 
	</div> </div></div></div><style>.qfy-column-31-592fbec0d4a6a142542 > .column_inner:hover{}.qfy-column-31-592fbec0d4a6a142542 > .column_inner:hover{}.qfy-column-31-592fbec0d4a6a142542 > .column_inner:hover >.background-media{}.qfy-column-31-592fbec0d4a6a142542 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-31-592fbec0d4a6a142542 > .column_inner {padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-31-592fbec0d4a6a142542 {};}@media only screen and (max-width: 992px){.qfy-column-31-592fbec0d4a6a142542 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.display_entire .wpb_row .vc_span_class.qfy-column-31-592fbec0d4a6a142542 {};}</style><div class="wf-mobile-hidden" style="clear:both;"></div>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-16-592fbec0d349229192{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:0px;margin-top:0px;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-16-592fbec0d349229192{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section><section data-fixheight="" class="qfy-row-17-592fbec0d5101844162 section     no  section-text-no-shadow section-inner-no-shadow section-normal" id="bit_hhsp3" style="margin-bottom:0px;border-radius:0px;color:#a9a9a9;">
    	    <div class="section-background-overlay background-overlay grid-overlay-0 " style="background-color: transparent;"></div>

    <div class="container">
        <div class="row wpb_row">
            <div data-animaleinbegin="bottom-in-view" data-animalename="qfyfadeInUp" data-delay="" class=" qfy-column-32-592fbec0d52fe188611 qfy-column-inner  vc_span12  text-default small-screen-undefined fullrow" data-dw="1/1" data-fixheight=""><div style=";position:relative;;" class="column_inner "><div class=" background-overlay grid-overlay-" style="background-color:transparent;"></div><div class="column_containter" style="z-index:3;position:relative;">
	<div m-padding="0px 0px 0px 0px" p-padding="0px 0px 0px 0px" css_animation_delay="0" qfyuuid="qfy_column_text_rg8v4" data-anitime="0.7" class="qfy-element qfy-text qfy-text-66572 wpb_text_column wpb_content_element  mobile_fontsize" style="position: relative;;;line-height:1.5em;;background-position:left top;background-repeat: no-repeat;;margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;padding-right:0px;padding-left:0px;border-radius:0px;">
		<div class="wpb_wrapper">
			<div style="text-align: center;"><span style="font-size:14px;">&nbsp;版权所有 ©2017&nbsp;&nbsp; 地址：哈尔滨南岗区中兴大道109号&nbsp;&nbsp;&nbsp;&nbsp;</span></div>

		</div> 
	</div> </div></div></div><style>.qfy-column-32-592fbec0d52fe188611 > .column_inner:hover{}.qfy-column-32-592fbec0d52fe188611 > .column_inner:hover{}.qfy-column-32-592fbec0d52fe188611 > .column_inner:hover >.background-media{}.qfy-column-32-592fbec0d52fe188611 > .column_inner:hover >.background-overlay{}@media only screen and (min-width: 992px){.qfy-column-32-592fbec0d52fe188611 > .column_inner {padding-left:0px;padding-right:0px;padding-top:0px;padding-bottom:0px;}.wpb_row .vc_span_class.qfy-column-32-592fbec0d52fe188611 {};}@media only screen and (max-width: 992px){.qfy-column-32-592fbec0d52fe188611 > .column_inner{margin:0px auto 0px !important;padding-left:0px;padding-right:0px;padding-top:px;padding-bottom:px;}.display_entire .wpb_row .vc_span_class.qfy-column-32-592fbec0d52fe188611 {};}</style>        </div>
    </div>
	<style>
	@media only screen and (min-width: 992px){
		section.section.qfy-row-17-592fbec0d5101844162{padding-left:0px;padding-right:0px;padding-top:20px;padding-bottom:0px;margin-top:20px;}section.section.qfy-row-17-592fbec0d5101844162 > .container{max-width:1280px;margin:0 auto;}}
		
	   	
	   @media only screen and (max-width: 992px){
		.bit-html section.section.qfy-row-17-592fbec0d5101844162{padding-left:15px;padding-right:15px;padding-top:20px;padding-bottom:0px;margin-top:0px;}}
	</style>
</section></div></section>		</div><!-- .wf-container -->
							</div><!-- .wf-wrap -->
	<!--  ************begin************* -->
<style type="text/css" id="static-stylesheet-footer">
#footer.footer .footer1 .widget{width: 99%;}#footer.footer .footer1 .widget.simplepage{width: 100%;}#footer.footer .footer2 .widget{width: 99%;}#footer.footer .footer2 .widget.simplepage{width: 100%;}#footer.footer .footer3 .widget{width: 99%;}#footer.footer .footer3 .widget.simplepage{width: 100%;}.bit_main_content{margin-top:0px;margin-bottom:0px}
</style>
<!--  ************end************* -->
</footer>
			
	
	

<a href="http://57e8ecf41155d.t73.qifeiye.com/#" class="scroll-top "></a>

</div><!-- #page -->

<div style="display:none;"></div>


<object id="yhaitaoplugin" type="application/x-npHaitaoPlugin" style="position:absolute;left:-9000px;top:-9000px;" width="0" height="0"></object><object id="np-tools-plugin" type="application/x-npHaitaoPlugin" style="position:absolute;left:-9000px;top:-9000px;" width="0" height="0"></object><a data-cltversion="2.4.14" data-cltsource="10023" data-cltuuid="29cbf51b36aef0e3a60ce6505bb26ccc" data-cltats="4" href="javascript:" id="yht-info-explugin" style="display: none;"></a><a data-cltversion="1.0.2" data-cltsource="410023" data-cltuuid="29cbf51b36aef0e3a60ce6505bb26ccc" data-cltats="3" href="javascript:" id="tools-nav-explugin" style="display: none;">//3pcdn.1haitao.com/extension-tools/js/extensionNav.js?v=1456903219826</a></body></html>