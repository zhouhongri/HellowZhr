<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="Util.UserDao" %><!DOCTYPE jsp>
<!--[if lt IE 7]>      <jsp class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <jsp class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <jsp class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>校管理员</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts from Font Awsome -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- Vector Map  -->
    <link rel="stylesheet" href="assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css">
    <!-- ToDos  -->
    <link rel="stylesheet" href="assets/plugins/todo/css/todos.css">
    <!-- Morris  -->
    <link rel="stylesheet" href="assets/plugins/morris/css/morris.css">
    <link rel="icon" type="image/png" href="images/loginlogo.png">
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/dialog.css" />
	<link rel="stylesheet" type="text/css" href="css/dialog-wilma.css" />
 <script src="assets/js/jquery-1.10.2.min.js"></script>
    <script src="assets/js/modernizr-2.6.2.min.js"></script>
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
				
				window.location.href='index.jsp';
			}
		});
		}
	</script>
</head>

<body>
    <section id="container">
        <header id="header">
            <!--logo start-->
             <a href="xiao_index.jsp">
            <div class="brand">
                <span class="logo">
                    </span>
            </div></a>
            <!--logo end-->
            <div class="toggle-navigation toggle-left">
                <button type="button" class="btn btn-default" id="toggle-left" data-toggle="tooltip" data-placement="right" title="点击收放">
                    <i class="fa fa-bars"></i>
                </button>
            </div>
            <div class="user-nav">
                <ul>
                    
                      <li class="profile-photo">
                        <img src="${userheadportrait}" alt="" class="img-circle" style="width: 40px;height:40px;" id="samllhead">
                    </li>
                    <li class="dropdown settings">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                     <%String id = (String)session.getAttribute("userid");
                     	UserDao u =new UserDao();
                     	String name = u.QueryName(id);
                      %><%=name %><i class="fa fa-angle-down"></i>
                    </a>
                        <ul class="dropdown-menu animated fadeInDown">
                           <li>
                                <a id="modal-919425" role="button" href="#modal-container-919425" data-toggle="modal"><i class="glyphicon glyphicon-cog" ></i>修改密码</a>
                            </li>
                            <li data-dialog="somedialog">
                                <a href="javascript:void(0);" ><i class="fa fa-user" >退出</i></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div class="toggle-navigation toggle-right">
                      
                        </div>
                    </li>

                </ul>
            </div>
             <p id="userid" style="display: none;"><%= id%></p>
        </header>
        <!--sidebar left start-->
        <aside class="sidebar" >
            <div id="leftside-navigation" class="nano">
                <ul class="nano-content">
                <!--  
                    <li class="">
                        <a href="grxx?flag=success" target="mainFrame"><i class="glyphicon glyphicon-user"></i><span>个人信息</span></a>
                    </li>-->
                    <li class="">
                        <a href="caidanguanli.jsp" target="mainFrame"><i class="glyphicon glyphicon-align-left"></i><span>菜单编辑</span></a>
                    </li>
                    <li class="">
                        <a href="YuanXiGuanLiServlet" target="mainFrame"><i class="glyphicon glyphicon-list-alt"></i><span>院系管理</span></a>
                    </li>
                    <li class="">
                        <a href="GetUserServlet?currpage=1&userid=${userid}&index=1" target="mainFrame"" target="mainFrame"><i class="glyphicon glyphicon-home"></i><span>用户管理</span></a>
                    </li>
                    <li class="">
                        <a href="yglscoreej" target="mainFrame"><i class="glyphicon glyphicon-tags"></i><span>分值设定</span></a>
                    </li>
                    <li class="">
                        <a href="xiaoatyrls?flag=success" target="mainFrame"><i class="glyphicon glyphicon-pencil"></i><span>校活动发布</span></a>
                    </li>
                   	 
                    <%
                        String[] ZnameList = (String[])session.getAttribute("ZnameList");
                        for(String s : ZnameList){
                        	if(s.equals("0")){
                        	%>
                        	<li class="sub-menu" id="keyan">
                        <a href="javascript:void(0);"><i class="glyphicon glyphicon-zoom-in"></i><span>科研管理</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                        <ul>
                          	<%
                          	String C0names[] = (String[])session.getAttribute("C0names");
                          	for(String s0 :C0names){
                          		if(s0.equals("00")){
                          			%><li><a href="querylw?currpage=1&userid=${userid}&index=1" target="mainFrame">论文管理</a>
                            </li><% 
                          		}else if(s0.equals("01")){
                          			%><li><a href="queryzl?currpage=1&userid=${userid}&index=1" target="mainFrame">专利管理</a>
                            </li>
                          			<%
                          		}else if(s0.equals("02")){
                          			%><li><a href="queryxszz?currpage=1&userid=${userid}&index=1" target="mainFrame">学术著作管理</a>
                            </li>
                                  			<%
                                 }else if(s0.equals("03")){
                           			%><li><a href="queryxkjs?currpage=1&userid=${userid}&index=1" target="mainFrame">学科管理</a>
                            </li>
                                  	<%
                                 }else if(s0.equals("03")){
                            		%><li><a href="querykyjl?currpage=1&userid=${userid}&index=1" target="mainFrame">科研奖励查看</a>
                            </li>
                                    <%
                                  }else if(s0.equals("04")){
                              		%><li><a href="querykyjl?currpage=1&userid=${userid}&index=1" target="mainFrame">科研奖励查看</a>
                            </li>
                                    <%
                                   }else if(s0.equals("05")){
                                 		%><li><a href="querykyxm?currpage=1&userid=${userid}&index=1" target="mainFrame">科研项目管理</a>
                            </li>
                                        <%
                                   }
                          	}
                          	%>
                        </ul>
                        
                    </li>
                    <%	
                        	}
                        	if(s.equals("1")){
                        		%>
                        		<li class="sub-menu" id="jiaoxue">
                        <a href="javascript:void(0);"><i class="glyphicon glyphicon-book"></i><span>教学管理</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                        <ul>
                            <% String C1names[] = (String[])session.getAttribute("C1names");
                            	for(String c1 : C1names){
                            		if(c1.equals("10")){
                            			%>
                            			<li><a href="queryzy?currpage=1&userid=${userid}&index=1" target="mainFrame">专业管理</a></li>
                            			<%
                            		}else if(c1.equals("11")){
                            			%>
                            			<li><a href="queryjxms?currpage=1&userid=${userid}&index=1" target="mainFrame">名师管理</a></li>
                            			<%
                            		}else if(c1.equals("12")){
                            			%>
                            			<li><a href="querykcjs?currpage=1&userid=${userid}&index=1" target="mainFrame">课程建设管理</a></li>
                            			<%
                            		}else if(c1.equals("13")){
                            			%>
                            			<li><a href="queryjxyjxm?currpage=1&userid=${userid}&index=1" target="mainFrame">教学研究项目管理</a></li>
                            			<%
                            		}else if(c1.equals("14")){
                            			%>
                            			<li><a href="" target="mainFrame">实践教育项目管理</a></li>
                            			<%
                            		}else if(c1.equals("15")){
                            			%>
                            			<li><a href="querysysjs?currpage=1&userid=${userid}&index=1" target="mainFrame">实验室建设管理</a></li>
                            			<%
                            		}else if(c1.equals("16")){
                            			%>
                            			<li><a href="" target="mainFrame">团队建设管理</a></li>
                            			<%
                            		}else if(c1.equals("17")){
                            			%>
                            			<li><a href="" target="mainFrame">学科竞赛管理</a></li>
                            			<%
                            		}else if(c1.equals("18")){
                            			%>
                            			<li><a href="queryjczz?currpage=1&userid=${userid}&index=1" target="mainFrame">教材著作管理</a></li>
                            			<%
                            		}else if(c1.equals("19")){
                            			%>
                            			<li><a href="" target="mainFrame">教学单项成果管理</a></li>
                            			<%
                            		}
                            %>
                            <%
                            	}
                            
                            %>
                        </ul>
                    </li>
                        		<% 
                        	}
                        }
                    %>
                    <!-- 
                   <li id="bb">
                        <a href="xiaodcbb?flag=success" target="mainFrame"><i class="glyphicon glyphicon-share"></i><span>导出报表</span></a>
                   	 </li>
                     -->
                   <li id="bb1" style="display: none;">
                        <a href="queryxiaoauthors?currpage=1" target="mainFrame"><i class="glyphicon glyphicon-usd"></i><span>校评奖金活动作品</span></a>
                   	 </li>
                    
                    <li  id="bb2" style="display: none;">
                        <a href="queryxiaoauthorszc?jobname=zj&currpage=1" target="mainFrame"><i class="glyphicon glyphicon-sort-by-alphabet"></i><span>校评助教活动作品</span></a>
                   	 </li>
                   	 
                   	 <li  id="bb3" style="display: none;">
                        <a href="queryxiaoauthorszc?jobname=js&currpage=1" target="mainFrame"><i class="glyphicon glyphicon-sort-by-alphabet-alt"></i><span>校评讲师活动作品</span></a>
                   	 </li>
                   	 <li id="bb4" style="display: none;">
                        <a href="queryxiaoauthorszc?jobname=fjs&currpage=1" target="mainFrame"><i class="glyphicon glyphicon-sort-by-order"></i><span>校评副教授活动作品</span></a>
                   	 </li>
                   	 <li  id="bb5" style="display: none;">
                        <a href="queryxiaoauthorszc?jobname=zjs&currpage=1" target="mainFrame"><i class="glyphicon glyphicon-sort-by-order-alt"></i><span>校评教授活动作品</span></a>
                   	 </li>
                </ul>
            </div>

        </aside>
        <section class="main-content-wrapper">
            <section id="main-content">
                <!--tiles start-->
						<iframe frameborder="0" style="margin-top: 0px; height: 100%; margin-left: 0px;" 
							width="100%" id="mainFrame" name="mainFrame" src="LoginSuccess.jsp"></iframe>
                <!--ToDo end-->
            </section>
        </section>
        <!--main content end-->
        <!--sidebar right start-->
        
       
        <!--sidebar right end-->
    </section>
    <!--Global JS-->
   
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/waypoints/waypoints.min.js"></script>
    <script src="assets/js/application.js"></script>
    <!--Page Level JS-->
    <script src="assets/plugins/countTo/jquery.countTo.js"></script>
    <script src="assets/plugins/weather/js/skycons.js"></script>
    <!-- FlotCharts  -->
    <script src="assets/plugins/flot/js/jquery.flot.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.canvas.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.image.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.categories.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.crosshair.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.errorbars.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.fillbetween.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.navigate.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.selection.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.symbol.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.threshold.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.colorhelpers.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.time.min.js"></script>
    <script src="assets/plugins/flot/js/jquery.flot.example.js"></script>
    <!-- Morris  -->
    <script src="assets/plugins/morris/js/morris.min.js"></script>
    <script src="assets/plugins/morris/js/raphael.2.1.0.min.js"></script>
    <!-- Vector Map  -->
    <script src="assets/plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="assets/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script>
    <!-- ToDo List  -->
    <script src="assets/plugins/todo/js/todos.js"></script>
    <!--Load these page level functions-->
    <script>
    $(document).ready(function() {
        app.timer();
        app.map();
        app.weather();
        app.morrisPie();
    });
    </script>
<div id="somedialog" class="dialog">
					<div class="dialog__overlay"></div>
					<div class="dialog__content">
						<div class="morph-shape">
							<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 560 280" preserveAspectRatio="none">
								<rect x="3" y="3" fill="none" width="556" height="276"/>
							</svg>
						</div>
						<div class="dialog-inner">
							<h2><strong>您即将退出系统!</strong></h2>
							<div><button class="action" id="exitcancel" style="font-size:25px;height: 50px;width: 85px;" data-dialog-close>取消</button>&nbsp;<button style="font-size:25px;height: 50px;width: 85px;" id="confirm" >确定</button></div>
							
						</div>
					</div>
				</div>
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
