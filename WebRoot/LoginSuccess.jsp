<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>欢迎登录</title>
    <script src='js/jquery-1.7.1.min.js'></script>
    <script src="js/index.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/230e98b440.js"></script>
<link href="css/loginsuccess.css" rel="stylesheet">
  <link rel="stylesheet" href="css/normalize.min.css">
 <link rel="stylesheet" href="css/style.css">

  <link rel="icon" type="image/png" href="images/loginlogo.png">
</head>

<body>
  <div id="loader"></div>
  <div id="soup-container">
    <div id="segments">
    </div>
    <div id="soup-nav">
      <span id="soup-prev"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i></span>
      <span id="soup-next"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i></span>
    </div>
</div>


</body>
</html>
