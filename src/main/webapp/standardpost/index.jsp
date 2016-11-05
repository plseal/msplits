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
standardpost/index.jsp
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

<body class="pageView" bgcolor="#FFFFFF" style="margin: 0px">
	
<script type="text/javascript" language="javascript">

function clickStandardpost(strVal) {
	//document.getElementById("indexFrame").style.width=(document.documentElement.clientWidth-450)+'px';
	//document.getElementById("indexFrame").style.height=(document.documentElement.clientHeight-400)+'px';
	  document.getElementById("indexFrame").src=strVal;
}
$(window).resize(function() {
	//document.getElementById("indexFrame").style.width=(document.documentElement.clientWidth-450)+'px';
	//document.getElementById("indexFrame").style.height=(document.documentElement.clientHeight-400)+'px';
});


</script>
<form method="post" id="myform"  >
<!-- bootstrap 栅格容器 -->
<div class="container">
	<!-- bootstrap 栅格容器  row start-->
	<div class="row">
		<div class="col-md-4" >
			<button type="button" class="btn btn-default btn-lg btn-block" onclick="clickStandardpost('${pageContext.request.contextPath}/standardpost/${URLpeisongku}');">配送库作业</button>
		</div>
		<div class="col-md-4" >
			<button type="button" class="btn btn-default btn-lg btn-block" onclick="clickStandardpost('${pageContext.request.contextPath}/standardpost/${URLshixianju}');">市县局公司作业</button>
		</div>
		<div class="col-md-4" >
			<button type="button" class="btn btn-default btn-lg btn-block" onclick="clickStandardpost('${pageContext.request.contextPath}/standardpost/${URLtongyong}');">通用作业</button>
		</div>
	</div>
	<div class="row">
	       <br/>
		  <a href="${pageContext.request.contextPath}/standardpost/indexS1.jsp" class="button button-block button-rounded button-primary button-large">更新岗位标准</a>
	</div>
	<br/>
	
<div class="responsive-video">
    <iframe id="indexFrame" frameborder=”no”></iframe>
</div>
<!-- 
	<div class="row">
	 <iframe   width = 100% height = 100% class="col-lg-12 col-md-12 col-sm-12" src=""></iframe>
	</div>
	<br/>
	 -->

</div>
</form>

</body>
</html>
