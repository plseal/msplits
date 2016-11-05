<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- 栅格系统，移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/buttons.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/jquery-easyui-1.4.3/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/bootstrap/3.3.0/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="${pageContext.request.contextPath}/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="${pageContext.request.contextPath}/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/bootstrap-fileinput/js/locales/zh.js" type="text/javascript"></script>
        
<title>
indexS2.jsp 
</title>
    </head>
    <body class="pageView" bgcolor="#FFFFFF" style="margin: 0px">
    <!-- bootstrap 栅格容器 -->
<div class="container">
	<!-- bootstrap 栅格容器  row start-->
	<div class="row">
		第三步：上传成功
		<div class="progress">
		    <div class="progress-bar" role="progressbar" aria-valuenow="60" 
		        aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
		        <span class="sr-only">100% 完成</span>
		    </div>
		</div>
	</div>

	<div class="row">
		<br/>
    	<br/>
    	
        
			
            <form id="myform"  method="post" >
                
            </form>
        
        <br/>
		<div class="alert alert-success " id = "div_alert_PDF_File_Upload_OK" >文件上传成功</div>
	</div>

	<div class="row">
		<br/><br/><br/>
		<a href="javascript:uploadFile();"  class="button button-block button-rounded button-primary button-large">完成</a>
	</div>
    
        </div>
    </body>
	<script>
	

		function uploadFile(){
			
		
			document.all.myform.action="${pageContext.request.contextPath}/admin/to_shiju.do";
			document.all.myform.submit(); 
		
			
			
		}
		function getEx(file_name){
			var result =/\.[^\.]+/.exec(file_name);
			return result;
		}

	</script>
</html>