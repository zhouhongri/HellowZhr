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
    <title>个人教师</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="cs/pintuer.css">
    	<link rel="stylesheet" href="cs/admin.css">
		<link rel="stylesheet" href="css/index.css" type="text/css">
		<link rel="stylesheet" href="<%=path%>/plug/imgUp/css/font-awesome.min.css">
        <link rel="stylesheet" href="<%=path%>/plug/imgUp/css/amazeui.min.css">
        <link rel="stylesheet" href="<%=path%>/plug/imgUp/css/amazeui.cropper.css">
        <link rel="stylesheet" href="<%=path%>/plug/imgUp/css/custom_up_img.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="css/bootstrapmodel.css">
    <style type="text/css">
    	#modal-container-602498{
    		margin-top: 5%;
    	}
    </style>
     <script src="assets/js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="assets/js/echarts.min.js"></script>
</head>

<body data-type="index">


    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
         <a href="javascript:;" class="tpl-logo">
                <img src="images/indexlogo.png" alt="">
            </a>
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                <%
                	String count = (String)session.getAttribute("count");
                	if(count==null||"".equals(count)){
                		count="0";
                	}
                %>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                	<a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;" id="nomessage" onclick="nomsg();">
                        <span class="am-icon-comment-o"></span> 消息 <span class="am-badge tpl-badge-danger am-round">0</span>
                    </a>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;" id="havemessage">
                        <span class="am-icon-comment-o"></span> 消息 <span class="am-badge tpl-badge-danger am-round"><%=count %></span>
                    </a>
                    <%
						String msg_1="";
						String msg_2="";
						List<Map<String, Object>> msgList = (List<Map<String, Object>>)session.getAttribute("msgList");
						if(msgList!=null&&!"".equals(msgList)){
							for(int i=0;i<msgList.size();i++){
								if(i==0){
									msg_1=(String)msgList.get(i).get("msg");
								}else if(i==1){
									msg_2=(String)msgList.get(i).get("msg");
								}else{
									break;
								}
							}
						}
					%>
					<ul class="am-dropdown-content tpl-dropdown-content" id="wuxiaoxi">
					<li><span class="tpl-dropdown-content-font" > 
										无消息
					</span></li>
					</ul>
                    <ul class="am-dropdown-content tpl-dropdown-content" id="youxiaoxi">
                        <c:if test="${fn:length(msgList)==0 }">
                        	<span class="tpl-dropdown-content-font"> 
										无消息
								</span>
                        </c:if>
                        
                        
                    	<c:if test="${fn:length(msgList)!=0 }">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-danger"><%=session.getAttribute("count") %></span> 条新消息</h3>
                            <a id="modal-602498" role="button" href="#modal-container-602498" data-toggle="modal">全部</a>
                        </li>
                        <li>
                         <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">1</span>
                                <span class="tpl-dropdown-content-font"> 
										<%=msg_1 %>
								</span>
						</a>
                            	<%
                            		if(msg_2!=""){
                            	 %>
                            	 <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">2</span>
                                <span class="tpl-dropdown-content-font">
                                	<%=msg_2 %>
                                </span>
                                </a>
                            	<% 
                            		}
                            	%>
                        </li>
						</c:if>	
                    </ul>
                </li>
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick">${name}</span><span class="tpl-header-list-user-ico"> <img src="${userheadportrait}"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a id="modal-ziliao" href="#modal-container-ziliao" data-toggle="modal"><span class="am-icon-bell-o"></span> 资料</a></li>
                        <li><a id="modal-919425" href="#modal-container-919425" data-toggle="modal"><span class="am-icon-cog"></span> 修改密码</a></li>
                        <li><a href="javascript:;" onclick="tuichu();"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </header>
    <div class="tpl-page-container tpl-page-header-fixed">
        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                菜单列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="gerenxinxijs.jsp" class="nav-link active" target="mainFrame">
                            <i class="am-icon-home"></i>
                            <span>个人绩效</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item" id="aypnli" style="display: none;">
                        <a href="aypn?flag=success" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>院年度评奖活动</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item"  id="xiaoaypnli" style="display: none;">
                        <a href="xiaoaypn?flag=success" target="mainFrame"class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>校年度评奖活动</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item" id="xiaoali" style="display: none;">
                        <a href="" id="xzchref" target="mainFrame" onclick="xzcfun();" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>校职称评定活动</span>
                        </a>
                    </li>
					 <%
                        String[] ZnameList = (String[])session.getAttribute("ZnameList");
                        for(String s : ZnameList){
                        	if(s.equals("0")){
                        	%>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-flask"></i>
                            <span>科研管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                            	<%
                          	String C0names[] = (String[])session.getAttribute("C0names");
                          	for(String s0 :C0names){
                          		if(s0.equals("00")){
                          			%>
                                <a href="querylw?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>论文管理</span>
                                </a>
								<% 
                          		}else if(s0.equals("01")){
                          			%>
                                <a href="queryzl?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>专利管理</span>
            					</a>
            					<% 
                          		}else if(s0.equals("02")){
                          			%>
                                <a href="queryxszz?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>学术著作管理</span>
            					</a>
            					<% 
                          		}else if(s0.equals("03")){
                          			%>
                                <a href="queryxkjs?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>学科管理</span>
            					</a>
            					<% 
                          		}else if(s0.equals("04")){
                          			%>
                                <a href="querykyjl?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>科研奖励查看</span>
            					</a>
            					<% 
                          		}else if(s0.equals("05")){
                          			%>
                                <a href="querykyxm?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>科研项目管理</span>
            					</a>
                                    <%
                                   }
                          	}
                          	%>
                            </li>
                        </ul>
                    </li>
 						<%	
                        	}
                        	if(s.equals("1")){
                        		%>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-book"></i>
                            <span>教学管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                            	  <% String C1names[] = (String[])session.getAttribute("C1names");
                            	for(String c1 : C1names){
                            		if(c1.equals("10")){
                            			%>
                                <a href="queryzy?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>专业管理</span>
                                </a>
								<%
                            		}else if(c1.equals("11")){
                            			%>
                                <a href="queryjxms?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>名师管理</span>
                                </a>
                                <%
                            		}else if(c1.equals("12")){
                            			%>
                                <a href="querykcjs?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>课程建设管理</span>
                                </a>
                                <%
                            		}else if(c1.equals("13")){
                            			%>
                                <a href="queryjxyjxm?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>教学研究项目管理</span>
                                </a>
                                <%
                            		}else if(c1.equals("15")){
                            			%>
                                <a href="querysysjs?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>实验室建设管理</span>
                                </a>
                                <%
                            		}else if(c1.equals("18")){
                            			%>
                                <a href="queryjczz?currpage=1&userid=${userid}&index=1" target="mainFrame">
                                    <i class="am-icon-angle-right"></i>
                                    <span>教材著作管理</span>
                                </a>
                                  			<%
                            		}
                            	}
                            %>
                            </li>
                        </ul>
                    </li>
     				<% 
                        	}
                        }
                    %>
                </ul>
            </div>
        </div>
<input id="xzcipt" value="" style="display: none;"/>
<div class="tpl-page-container tpl-page-header-fixed" style="height: 100%;">
	 <div class="tpl-content-wrapper" >
	<iframe frameborder="0" style="margin-top: -100px; margin-left: 0px;" scrolling="no"
	width="100%" id="mainFrame" name="mainFrame" onload="this.height=mainFrame.document.body.scrollHeight" src="gerenxinxijs.jsp"></iframe>

         </div>
   </div>
    </div>

<div class="modal fade" id="modal-container-602498" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<!-- <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button> -->
							<h4 class="modal-title" id="myModalLabel">
								个人未读信息
							</h4>
						</div>
						<div class="modal-body">
							<table class="table table-hover">
							<thead>
							<tr>
								<td>标题</td>
								<td>时间</td>
							</tr>
							</thead>
								<c:forEach items="${msgList}" var="a">
									<tr>
										<td class="msgid" style="display: none;">${a.id}</td>
										<td>${a.msg}</td>
										<td>${fn:substring(a.time,0,10)}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div class="modal-footer">
							 <button class="btn btn-default" type="button" data-dismiss="modal">关闭</button> <button class="btn btn-primary" type="button" onclick="yidu()" data-dismiss="modal">确认</button>
						</div>
					</div>
				</div>
			</div>

	
   <script>
   $(function(){
   	/* $("#modal-602498").click(function(){
   			$("#youxiaoxi").click();
   		}); */
   		$("#wuxiaoxi").hide();
   		$("#nomessage").hide();
   	
   	
   });
   	
   	 function yidu(){
		    	var $idlist = $(".msgid");
		    	var list = "";
		    	$idlist.each(function(){
		    		list = list+$(this).text()+","
		    	});
		    	$.ajax({
		    		type:"post",
		    		url:"ReadServlet",
		    		data:{
		    			"list":list,
		    		},
		    		success:function(){
		    			$("#wuxiaoxi").show();
		    			$("#nomessage").show();
		    			$("#youxiaoxi").hide();
		    			$("#havemessage").hide();
		    		}
		    	});
		    }
		    
		    /* function nomsg(){
		    	var status = $("#wuxiaoxi").attr("css");
		    	alert(status);
		    	if(status=="block"){
		    		$("#wuxiaoxi").hide();
		    	}else{
		    		$("#wuxiaoxi").show();
		    	}
		    } */
   </script>
   <script>
   window.onload=function(){
			//queryUsersList();
			queryActivityDate();
			queryXiaoActivityDate();
		}
		
			$(function(){
			$("#confirm").click(function(){
					$("#exitcancel").click(); 
					tuichu();					 
				});
			});
		
		function queryActivityDate(){
			$.post("qyayde",{"flag":"grjs"},function(result){
				var jsonlist = eval(result);
				if(jsonlist!=null&&jsonlist!=""){
					for(k in jsonlist){
						if(jsonlist[k].activityname=="ypjj"){
							$("#aypnli").css("display","block");
						}
						if(jsonlist[k].activityname=="ypzc"){
							var job = "${job}";
							if(jsonlist[k].jobname!=null&&jsonlist[k].jobname!=""){
								if((job==""||job==null||job=="暂无")&&jsonlist[k].jobname=="助教"){
									$("#ali").css("display","block");
									$("#yzcipt").val("助教");
								}
								if(job=="助教"&&jsonlist[k].jobname=="讲师"){
									$("#ali").css("display","block");
									$("#yzcipt").val("讲师");
								}
								if(job=="讲师"&&jsonlist[k].jobname=="副教授"){
									$("#ali").css("display","block");
									$("#yzcipt").val("副教授");
								}
								if(job=="副教授"&&jsonlist[k].jobname=="教授"){
									$("#ali").css("display","block");
									$("#yzcipt").val("教授");
								}
							}
							
						}
						
					}
				}
			});
		}
		function queryXiaoActivityDate(){
			$.post("xiaoqyayde",{"flag":"grjs"},function(result){
				var jsonlist = eval(result);
				if(jsonlist!=null&&jsonlist!=""){
					for(k in jsonlist){
						if(jsonlist[k].activityname=="xpjj"){
							$("#xiaoaypnli").css("display","block");
						}
						if(jsonlist[k].activityname=="xpzc"){
							var job = "${job}";
							if(jsonlist[k].jobname!=null&&jsonlist[k].jobname!=""){
								if((job==""||job==null)&&jsonlist[k].jobname=="助教"){
									$("#xiaoali").css("display","block");
									$("#xzcipt").val("助教");
								}
								if(job=="助教"&&jsonlist[k].jobname=="讲师"){
									$("#xiaoali").css("display","block");
									$("#xzcipt").val("讲师");
								}
								if(job=="讲师"&&jsonlist[k].jobname=="副教授"){
									$("#xiaoali").css("display","block");
									$("#xzcipt").val("副教授");
								}
								if(job=="副教授"&&jsonlist[k].jobname=="教授"){
									$("#xiaoali").css("display","block");
									$("#xzcipt").val("教授");
								}
							}
							
						}
						
					}
				}
			});
		}
			(function() {

				var dlgtrigger = document.querySelector( '[data-dialog]' ),
					somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
					dlg = new DialogFx( somedialog );

				dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );

			})();
			
			
		
		</script>
		
		
		<div class="modal fade" id="modal-container-ziliao" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
							<h4 class="modal-title" id="myModalLabel">
								详细资料
							</h4>
						</div>
						<div class="modal-body">
						<div class="line-big">
								<div class="xm12">
		        	<div class="panel border-back">
		            	<div class="panel-body text-center" id="up-img-touch" style="height: 220px;">
		                		<img  alt="点击上传头像" src="${userheadportrait}" data-am-popover="{content: '点击上传', trigger: 'hover focus'}" style="width: 95%;height: 98%;"><br/>
		                </div>
		                <div class="panel-foot bg-back border-back">您好，上次登录为 ${lasttime} 。</div>
		            </div>
		            <br />
		        	<div class="panel" id="jibenxinxi">
		            	<div class="panel-head"><strong>基本信息</strong></div>
		                <ul class="list-group">
		                	<%String id = (String)session.getAttribute("userid");
                     			UserDao u =new UserDao();
                     			String name = u.QueryName(id);
		                	%>
		                	<li><span class="icon-user"></span> 姓名：<%=name %></li>
		                    <li><span class="icon-file"></span> 性别：${sex} </li>
		                    <li><span class="icon-shopping-cart"></span> 年龄： ${age} </li>
		                    <li><span class="icon-file-text"></span> 职位：${job} </li>
		                    <li><span class="icon-database"></span> 所属院系： ${xname} </li>
		                </ul>
		            </div>
		            <br />
		        </div>
		        </div>
						</div>
						<div class="modal-footer">
							 <button class="btn btn-default" type="button" data-dismiss="modal" id="close">关闭</button>
						</div>
					</div>
				</div>
			</div>
		
		
		
		
		
<div class="modal fade" id="modal-container-919425" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
							<h4 class="modal-title" id="myModalLabel">
								修改密码
							</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
					 			<label for="c-id">当前账号</label>
					 			<input class="form-control" id="c-id" type="text" />
							</div>	
							<div class="form-group">
					 			<label for="c-old-pwd">最后使用密码</label>
					 			<input class="form-control" id="c-old-pwd" type="password" />
					 			<label id="oldAlert" style="color:red;display:none;">*账号或者密码错误</label>
							</div>			
							<div class="form-group">
					 			<label for="c-new-pwd">新密码</label>
					 			<input class="form-control" id="c-new-pwd" type="password" />
							</div>		
							<div class="form-group">
					 			<label for="c-new1-pwd">重复新密码</label>
					 			<input class="form-control" id="c-new1-pwd" type="password" />
					 			<label id="newAlert" style="color:red;display:none;">*两次输入新密码必须一致并且不为空</label>
							</div>		
						</div>
						<div class="modal-footer">
							 <button class="btn btn-default" type="button" data-dismiss="modal" id="close">关闭</button> <button class="btn btn-primary" type="button" onclick="changePwd();" id="bc">保存</button>
						</div>
					</div>
				</div>
			</div>
			
			
			<!--图片上传框-->
<div class="am-modal am-modal-no-btn up-modal-frame" tabindex="-1" id="up-modal-frame">
		  <div class="am-modal-dialog up-frame-parent up-frame-radius">
		    <div class="am-modal-hd up-frame-header">
		       <label>修改头像</label>
		      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
		    </div>
		    
		    <div class="am-modal-bd  up-frame-body">
		      <div class="am-g am-fl">
		      	
		      	<div class="am-form-group am-form-file">
			      <div class="am-fl">
			        <button type="button" class="am-btn am-btn-default am-btn-sm">
			          <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
			      </div>
			    <input type="file" class="up-img-file"> 
			   	</div>
			   	
		      </div>
		      
		      <div class="am-g am-fl" >
		      	<div class="up-pre-before up-frame-radius">
		      	<img alt="" src="" class="up-img-show" id="up-img-show" >
		      	</div>
		      	<div class="up-pre-after up-frame-radius">
		      	</div>
		      </div>
		      
		      <div class="am-g am-fl">
   				<div class="up-control-btns">
    				<span class="am-icon-rotate-left"   id="up-btn-left"></span>
    				<span class="am-icon-rotate-right"  id="up-btn-right"></span>
    				<span class="am-icon-check up-btn-ok" url="<%=path%>/uploadHeadPortrait/upload"></span>
   				</div>
	    	  </div>
		      
		    </div>
		    
		  </div>
		</div>
<!--加载框-->
<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="up-modal-loading">
		  <div class="am-modal-dialog">
		    <div class="am-modal-hd">正在上传...</div>
		    <div class="am-modal-bd">
		      <span class="am-icon-spinner am-icon-spin"></span>
		    </div>
		  </div>
		</div>
<!--警告框-->
<div class="am-modal am-modal-alert" tabindex="-1" id="up-modal-alert">
		  <div class="am-modal-dialog">
		    <div class="am-modal-hd">信息</div>
		    <div class="am-modal-bd"  id="alert_content">
		              成功了
		    </div>
		    <div class="am-modal-footer">
		      <span class="am-modal-btn">确定</span>
		    </div>
		  </div>
		</div>
		
		
	<script type="text/javascript">
		function changePwd(){
		$("#oldAlert").hide();
		$("#newAlert").hide();
			if(checkPwd()){
				if(checkUser()){
				var id = $("#c-id").val();
				var pwd = $("#c-new-pwd").val();
					$.ajax({
						type:"post",
						url:"ChangPwdServlet",
						data:{
							id:id,
							pwd:pwd
						},
						success:function(){
							layer.msg("修改成功");
							$("#close").click();
						}
					})
				}else{
					$("#oldAlert").show();
				}
			}else{
				$("#newAlert").show();
			}
		}
		
		function checkPwd(){
			var newpwd = $("#c-new-pwd").val();
			var newpwd1 = $("#c-new1-pwd").val();
			if(newpwd==null||newpwd==""){
				return false;
			}else if(newpwd1==newpwd){
				//alert("yes");
				return true;
			}else{
				//alert("no");
				return false;
			}
		}
		
		function checkUser(){
			var id = $("#c-id").val();
			var pwd = $("#c-old-pwd").val();
			var nowid = $("#userid").html();
			//alert("id:"+nowid);
			var flag = false;
			if(nowid==id){
				$.ajax({
					type:"post",
					url:"CheckPwdServlet",
					async:false,
					data:{
						id:id,
						pwd:pwd
					},
					success:function(data){
						if(data=="true"){
							flag=true;
						}
					}
				});
			}
		return flag;
		}
		function tuichu(){
			$.ajax({
			type:"post",
			url:"UserServlet",
			async:true,
			data:{
				
			},
			success:function(data){
				
				window.location.href='newshouye.jsp';
			}
		});
		}
		
		function yzcfun(){
		
			var yzchref = document.getElementById("yzchref");
			var yzcipt = $("#yzcipt").val();
			//alert(yzcipt);
			yzchref.href="yzcpd?yzcipt="+encodeURI(encodeURI(yzcipt));
		}
		
		function xzcfun(){
		
			var xzchref = document.getElementById("xzchref");
			var xzcipt = $("#xzcipt").val();
			//alert(yzcipt);
			xzchref.href="xzcpd?xzcipt="+encodeURI(encodeURI(xzcipt));
		}
		
	</script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/iscroll.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="<%=path%>/plug/imgUp/js/jquery.min.js"></script>
        <script src="<%=path%>/plug/imgUp/js/amazeui.min.js" charset="utf-8"></script>
        <script src="<%=path%>/plug/imgUp/js/cropper.min.js" charset="utf-8"></script>
        <script src="<%=path%>/plug/imgUp/js/custom_up_img.js" charset="utf-8"></script>
</body>

</html>