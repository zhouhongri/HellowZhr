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
    <title>校管理员</title>
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
    <link rel="stylesheet" href="css/bootstrapmodel.css">
    <style type="text/css">
    	#modal-container-602498{
    		margin-top: 5%;
    	}
    </style>
     <script src="assets/js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="assets/js/echarts.min.js"></script>
    <script type="text/javascript">
		window.onload=function(){
			queryXiaoActivityDate();
		}
		
		$(function(){
			$("#confirm").click(function(){
					$("#exitcancel").click(); 
					tuichu();					 
				});
			});
		
		function queryXiaoActivityDate(){
			$.post("xiaoqyayde",function(result){
				var jsonlist = eval(result);
				if(jsonlist!=null&&jsonlist!=""){
					for(k in jsonlist){
						if(jsonlist[k].activityname=="xpjj"){
							$("#bb1").css("display","block");
						}
						if(jsonlist[k].activityname=="xpzc"){
									$("#bb2").css("display","block");
									$("#bb3").css("display","block");
									$("#bb4").css("display","block");
									$("#bb5").css("display","block");
							
							
						}
						
					}
				}
			});
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
	</script>
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
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick"> <%String id = (String)session.getAttribute("userid");
                     	UserDao u =new UserDao();
                     	String name = u.QueryName(id);
                      %><%=name %></span><span class="tpl-header-list-user-ico"> <img src="images/defaultuser.jpg"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="#modal-container-919425" id="modal-919425" data-toggle="modal"><span class="am-icon-cog"></span> 修改密码</a></li>
                        <li><a href="javascript:;" onclick="tuichu();"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </header>

 <p id="userid" style="display: none;"><%= id%></p>





    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                菜单列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="newcaidanguanli.jsp" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-list"></i>
                            <span>菜单编辑</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="YuanXiGuanLiServlet" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-sitemap"></i>
                            <span>院系管理</span>
                        </a>
                    </li>
                       <li class="tpl-left-nav-item">
                        <a href="yglscoreej" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-star"></i>
                            <span>分值设定</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="xiao_datav.jsp" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>绩效可视化</span>
                        </a>
                    </li>
                       <li class="tpl-left-nav-item">
                        <a href="GetUserServlet?currpage=1&userid=${userid}&index=1" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-users"></i>
                            <span>用户管理</span>
                        </a>
                    </li>
                   	<li class="tpl-left-nav-item">
                        <a href="xiaoatyrls?flag=success" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bullhorn"></i>
                            <span>校活动发布</span>
                        </a>
                    </li><%
                        String[] ZnameList = (String[])session.getAttribute("ZnameList");
                        for(String s : ZnameList){
                        	if("0".equals(s)){
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
                     <li id="bb1" style="display: none;"class="tpl-left-nav-item">
                        <a href="queryxiaoauthors?currpage=1" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>校评奖金活动作品</span>
                        </a>
                    </li> 
                    <li id="bb2" style="display: none;" class="tpl-left-nav-item">
                        <a href="queryxiaoauthorszc?jobname=zj&currpage=1" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>校评助教活动作品</span>
                        </a>
                    </li>
                    <li id="bb3" style="display: none;" class="tpl-left-nav-item">
                        <a href="queryxiaoauthorszc?jobname=js&currpage=1" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>校评讲师活动作品</span>
                        </a>
                    </li>
                    <li id="bb4" style="display: none;" class="tpl-left-nav-item">
                        <a href="queryxiaoauthorszc?jobname=fjs&currpage=1" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>校评副教授活动作品</span>
                        </a>
                    </li>
                    <li id="bb5" style="display: none;" class="tpl-left-nav-item">
                        <a href="queryxiaoauthorszc?jobname=zjs&currpage=1" target="mainFrame" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-asterisk"></i>
                            <span>校评教授活动作品</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

<div class="tpl-page-container tpl-page-header-fixed" style="height: 100%;">
	 <div class="tpl-content-wrapper" >
	<iframe frameborder="0" style="margin-top: -100px; margin-left: 0px; height:1000px" scrolling="no" 
	width="100%" id="mainFrame" name="mainFrame" onload="this.height=mainFrame.document.body.scrollHeight"  src="newcaidanguanli.jsp"></iframe>

         </div>
   </div>
    </div>

   <script>
   	
   </script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/iscroll.js"></script>
    <script src="assets/js/app.js"></script>
    <script>
    $(document).ready(function() {
        app.timer();
        app.map();
        app.weather();
        app.morrisPie();
    });
    </script>
		<script src="js/classie.js"></script>
		<script src="js/dialogFx.js"></script>
		<script>
			(function() {
				var dlgtrigger = document.querySelector( '[data-dialog]' ),
					somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
					dlg = new DialogFx( somedialog );

				dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );
			})();
		</script>  
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
				return true;
			}else{
				return false;
			}
		}
		
		function checkUser(){
			var id = $("#c-id").val();
			var pwd = $("#c-old-pwd").val();
			var nowid = $("#userid").html();
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
	</script>
</body>

</html>