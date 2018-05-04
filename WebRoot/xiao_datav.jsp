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
    #zcdleft{
    float:left;
    }
    </style>
     <script src="assets/js/jquery.min.js"></script>
     <script src="<%=path%>/layer/layer.js"></script>
<script>

		</script>
</head>

<body data-type="index">

            <div class="tpl-content-page-title">
                精于算绩
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li class="am-active">绩效可视化</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                   	    绩效可视化
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div id="main" style="height:500px;width: 85%; margin-left: 0px;float: left;"></div>  
<!--    本地引入ECharts,'js/dist/'本地文件路径下 -->  
<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>  
<script src="http://echarts.baidu.com/doc/example/timelineOption.js"></script> 
<script type="text/javascript">  
    //        路径配置,'./js/dist'本地文件路径  
    require.config({  
        paths: {  
            echarts: 'http://echarts.baidu.com/build/dist'  
        }  
    });  
    require(  
            [  
                'echarts',  
                'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表  
                'echarts/chart/bar'  
            ],  
            function (ec) {  
                var myChart = ec.init(document.getElementById('main'));  
                option = {  
                    timeline:{  
                        data:[  
                            '2014-01-01','2015-01-01','2016-01-01','2017-01-01'  
                        ],  
                        label : {  
                            formatter : function(s) {  
                                return s.slice(0, 4);  
                            }  
                        },  
                        autoPlay : true,  
                        playInterval : 1000  
                    },  
                    options:[  
                        {  
                            title : {  
                                'text':'2014年全校绩效指标',  
                            },  
                            tooltip : {'trigger':'axis'},  
                            legend : {  
                                x:'center',  
                                'data':['论文','专利','学术著作','学科','科研奖励','科研项目','专业','','名师','课程建设','教学研究项目','实验室建设','教材著作'],
                                'selected':{  
                                    '论文':true,  
                                    '专利':true,  
                                    '学术著作':true,  
                                    '学科':true,  
                                    '科研奖励':true,
                                    '科研项目':false,
                                    '专业':true,
                                    '名师':true,
                                     '课程建设':true,
                                     '教学研究项目':false,
                                     '实验室建设':false,
                                     '教材著作':false
                                }  
                            },  
                            toolbox : {  
                                'show':true,  
                                orient : 'vertical',  
                                x: 'right',  
                                y: 'center',  
                                'feature':{  
                                    'mark':{'show':true},  
                                    'dataView':{'show':true,'readOnly':false},  
                                    'magicType':{'show':true,'type':['line','bar','stack','tiled']},  
                                    'restore':{'show':true},  
                                    'saveAsImage':{'show':true}  
                                }  
                            },  
                            calculable : true,  
                            grid : {'y':80,'y2':100},  
                            xAxis : [{  
                                'type':'category',  
                                'axisLabel':{'interval':0},  
                                'data':[  
                                    '信息工程学院','外语学院','政法学院'
                                ]  
                            }],  
                            yAxis : [  
                                {  
                                    'type':'value',  
                                    'name':'绩效总分值' 
                                  
                                }
                            ],  
                            series : [  
                                 {  
                                    'name':'论文','yAxisIndex':0,'type':'bar',  
                                    'data': [2000,1500,3500] 
                                },  
                                {  
                                    'name':'专利','yAxisIndex':0,'type':'bar',  
                                    'data': [1400,1700,1000] 
                                },  
                                {  
                                    'name':'学术著作','yAxisIndex':0,'type':'bar',  
                                    'data': [1500,2000,2000]  
                                },  
                                {  
                                    'name':'学科','yAxisIndex':0,'type':'bar',  
                                    'data': [1300,1500,2500]  
                                },  
                                {  
                                    'name':'科研奖励','yAxisIndex':0,'type':'bar',  
                                    'data': [3000,1000,500]  
                                },  
                                {  
                                    'name':'科研项目','yAxisIndex':0,'type':'bar',  
                                    'data': [3500,1500,1000]  
                                },
                                {  
                                    'name':'专业','yAxisIndex':0,'type':'bar',  
                                    'data': [0,200,100]  
                                },
                                {  
                                    'name':'名师','yAxisIndex':0,'type':'bar',  
                                    'data': [500,1000,1500]  
                                },
                                {  
                                    'name':'课程建设','yAxisIndex':0,'type':'bar',  
                                    'data': [1500,1000,2000]  
                                },
                                {  
                                    'name':'教学研究项目','yAxisIndex':0,'type':'bar',  
                                    'data': [0,1500,4000]  
                                },
                                {  
                                    'name':'实验室建设','yAxisIndex':0,'type':'bar',  
                                    'data': [0,0,0]  
                                },
                                {  
                                    'name':'教材著作','yAxisIndex':0,'type':'bar',  
                                    'data': [0,1000,1000]  
                                }
                            ]  
                        },  
                       
                            
                        {  
                            title : {'text':'2015年全校绩效指标'},  
                            series : [  
                                {'data': [2500,2000,3800]},  
                                {'data': [1700,1500,1200]},  
                                {'data': [1450,2500,1800]},  
                                {'data': [1500,1600,2700]},  
                                {'data': [3200,1100,1000]},  
                                {'data': [3400,1500,1000]},
                                
                                {'data': [100,0,500]},  
                                {'data': [1000,1500,400]},  
                                {'data': [1800,2000,1800]},  
                                {'data': [0,1600,3300]},  
                                {'data': [0,500,200]},  
                                {'data': [0,1200,1000]}
                            ]  
                        },  
                        {  
                            title : {'text':'2016年全校绩效指标'},  
                            series : [  
                                {'data': [3000,4000,3800]},  
                                {'data': [1700,1500,2500]},  
                                {'data': [1900,3000,1500]},  
                                {'data': [1500,1600,2500]},  
                                {'data': [3200,1100,1200]},  
                                {'data': [3400,1500,1100]},
                                
                                {'data': [100,0,500]},  
                                {'data': [1000,1500,400]},  
                                {'data': [1800,2000,1800]},  
                                {'data': [0,1600,3300]},  
                                {'data': [0,500,200]},  
                                {'data': [0,1000,1000]}
                            ]  
                        },  
                        {  
                            title : {'text':'2017年全校绩效指标'},  
                            series : [  
                                {'data': [2000,3000,2000]},  
                                {'data': [2500,2000,900]},  
                                {'data': [1200,3000,1800]},  
                                {'data': [500,1400,2000]},  
                                {'data': [800,1200,1600]},  
                                {'data': [2000,1000,1100]},  
                                
                                {'data': [200,300,600]},  
                                {'data': [800,1200,490]},  
                                {'data': [1000,2000,1800]},  
                                {'data': [0,2000,4000]},  
                                {'data': [0,450,1000]},  
                                {'data': [0,1500,1000]}
                            ]  
                        },  
                    ]  
                };  
  
  
                myChart.setOption(option);  
            }  
    );  
</script>  









                       
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                        
                        
                        
                        
                        
                       
                     
                                <hr>
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