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
    <link rel="stylesheet" href="<%=path%>/layer/skin/default/layer.css">
    <style type="text/css">
    </style>
    <script src="<%=path%>/js/echarts.min.js"></script>
</head>

<body>
<div style="width: 900px;height:400px;margin-top:50px;margin-left:50px; border-color: #000000; border: solid 1px;" id="tpl-echarts-C">
      </div>
<% List list = (List)request.getSession().getAttribute("list");
List list2 = (List)request.getSession().getAttribute("list2");%>
    <script>
    	var echartsC = echarts.init(document.getElementById('tpl-echarts-C'));
    	var scorelist = new Array();
    	var numberlist = new Array();
    	 <%
   if(list!=null)
   {
    for(int i=0;i<list.size();i++)
    {
  %>
    	 numberlist[<%=i%>] = <%=list.get(i)%>;
    	 scorelist[<%=i%>] = <%=list2.get(i)%>;
  <%} 
   }
  %>
        optionC = {
        	title: {
                text: '${college}${year}年${jixiao}绩效'
            },
            tooltip: {
                trigger: 'axis'
            },
            toolbox: {
                top: '0',
                feature: {
                    dataView: { show: true, readOnly: false },
                    magicType: { show: true, type: ['line', 'bar'] },
                    restore: { show: true },
                    saveAsImage: { show: true }
                }
            },
            legend: {
                data: ['绩效总分值',  '绩效数目']
            },
            xAxis: [{
                type: 'category',
                data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
            }],
            yAxis: [{
                    type: 'value',
                    name: '绩效总分值',
                    axisLabel: {
                        formatter: '{value} 分'
                    }
                },
                {
                    type: 'value',
                    name: '绩效数目',
                    axisLabel: {
                        formatter: '{value} 个'
                    }
                }
            ],
            series: [{
                    name: '绩效总分值',
                    type: 'bar',
                    data: scorelist
                },
                
                {
                    name: '绩效数目',
                    type: 'line',
                    yAxisIndex: 1,
                    data: numberlist
                }
            ]
        };

        echartsC.setOption(optionC);
    	
    </script>





    <script src="assets/js/jquery.min.js"></script>
    <script src="<%=path%>/layer/layer.js"></script>
      <script src="<%=path%>/plug/boot/bootstrap.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
   
</body>

</html>