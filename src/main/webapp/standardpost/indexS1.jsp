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
standardpost_indexS1.jsp
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
</style>
</head>

<body class="pageView" bgcolor="#FFFFFF" style="margin: 0px">
	
<script type="text/javascript" language="javascript">

function clickPost(strVal) {
	  document.getElementById("strPostView").value = strVal;
	  
}
function gotoPostStep2(strVal) {
	
	if ($("#strPostView").val() == ""){
		$("#div_alert_postNoBeSetted").attr("class","alert alert-danger");
	}else {
		
		document.all.myform.action="${pageContext.request.contextPath}/standardpost/indexS2.jsp?standard_post=" + $("#strPostView").val() + "";
		document.all.myform.submit(); 
	}
	  
}


</script>
<form method="post" id="myform"  >
<!-- bootstrap 栅格容器 -->
<div class="container">
	<!-- bootstrap 栅格容器  row start-->
	<div class="row">
		第一步：选择岗位
		<div class="progress">
		    <div class="progress-bar" role="progressbar" aria-valuenow="60" 
		        aria-valuemin="0" aria-valuemax="100" style="width: 33%;">
		        <span class="sr-only">33% 完成</span>
		    </div>
		</div>
	</div>
	<div class="row">
		<br/>
		<button type="button" class="btn btn-info btn-lg" onclick="clickPost('配送库岗位');">配送库岗位</button>
		<button type="button" class="btn btn-info btn-lg" onclick="clickPost('市县局公司');">市县局公司</button>
		<button type="button" class="btn btn-info btn-lg" onclick="clickPost('通用岗位');">通用岗位 </button>
		

	</div>
	<div class="row">
		<br/>
		<div class="form-group">
		
    		<label for="inputDanwei" class="control-label">请点击上面的按钮选择</label><i class="icon-arrow-up"></i>
		    <div >
		      <input class="form-control" id="strPostView" type="text" placeholder="还未选择岗位" disabled>
		    </div>
  		</div>
		<div class="alert alert-warning hidden" id = "div_alert_postNoBeSetted" >警告：还未选择岗位</div>	
	
	</div>
	
	

	
	<div class="row">
		<br/>
		<a href="javascript:gotoPostStep2();"  class="button button-block button-rounded button-primary button-large">下一步</a>
		
	
	</div>
</div>
</form>

</body>
</html>
