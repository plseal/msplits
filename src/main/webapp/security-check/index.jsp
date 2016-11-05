<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 栅格系统，移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/buttons.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/jquery-easyui-1.4.3/jquery.min.js"></script>

<title>
security-check/index.jsp
</title>




<style type="text/css"> 
body {
	
	padding: 10px;
}
div.banner {
	position: fixed;
	_position: absolute;
	top: 0;
	left: 0;
	_top: expression(eval(document.body.scrollTop));
	_left: expression(eval(document.body.scrollLeft));
	width: 100%;
	_width: expression(eval(document.body.clientWidth));
	margin: 0;
	padding: 3px;
	padding-left: 6px;
	background:lime;
	background-color: #FFFFC6;
	font: 11px tahoma,arial,serif;
	border-bottom: 2px ridge #FFFFC6;
}
.responsive-video {
    position: relative;
    padding-bottom: 56.25%;
    padding-top: 60px; overflow: hidden;
}

.responsive-video iframe,
.responsive-video object,
.responsive-video embed {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 80%;
}
</style>
</head>

<body class="pageView" bgcolor="#FFFFFF" style="margin: 0px" onload="my_load()">

<form method="post" id="myform"  >
<!-- bootstrap 栅格容器 -->
<div class="container">
	<!-- bootstrap 栅格容器  row start-->
	<div class="row">
	       <br/>
		  <a href="${pageContext.request.contextPath}/security-check/indexS1.jsp" class="button button-block button-rounded button-primary button-large">更新安全管理考核</a>
	</div>
	<br/>
	
	<div class="responsive-video">
	    <iframe id="indexFrame" frameborder=”no” src="${pageContext.request.contextPath}/security-check/${URLsecuritycheck}"></iframe>
	</div>

</div>
</form>

</body>
</html>
