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
standardpost_indexS2.jsp 
</title>
    </head>
    <body class="pageView" bgcolor="#FFFFFF" style="margin: 0px">
    <!-- bootstrap 栅格容器 -->
<div class="container">
	<!-- bootstrap 栅格容器  row start-->
	<div class="row">
		第二步：上传PDF文件
		<div class="progress">
		    <div class="progress-bar" role="progressbar" aria-valuenow="60" 
		        aria-valuemin="0" aria-valuemax="100" style="width: 66%;">
		        <span class="sr-only">66% 完成</span>
		    </div>
		</div>
	</div>
	<div class="col-md-3">
	<%=request.getParameter("standard_post").toString() %>
	
	<input type = "hidden" id = "standardPost_beSelected_post" value = '<%=request.getParameter("standard_post").toString() %>'>
	</div>
	<div class="row">
		<br/>
    	<br/>
    	
        <div class="container kv-main">
			
            <form id="myform"  method="post" enctype="multipart/form-data">
                <input id="fileObj" class="file" name = "fileObj" type="file"  multiple data-min-file-count="1">
            </form>
        </div>
        <br/>
		<div class="alert alert-warning hidden" id = "div_alert_PDF_File_NoBeSetted" >警告：还未选择本地PDF文件</div>
		<div class="alert alert-warning hidden" id = "div_alert_NOT_PDF_File"        >警告：请选择PDF格式文件</div>	
	
	
	<div class="col-md-3" >
		<a href="${pageContext.request.contextPath}/modelfile\01.guide\01.change_word_to_PDF.pdf" target="_blank" class="btn btn-primary btn-lg active" role="button">如何转换WORD文档到PDF文件</a>
	</div>
	<div class="row">
		<br/><br/><br/>
		<a href="javascript:uploadFile();"  class="button button-block button-rounded button-primary button-large">下一步</a>
		
	
	</div>
    
        </div>
    </body>
	<script>
	//初始化按钮
    $('#fileObj').fileinput({
        language: 'zh',
        //上传地址
        uploadUrl: '#',
        'showPreview' : false,
        showUpload: false,
        allowedFileExtensions : ['pdf'],
    });
    $('#file-es').fileinput({
        language: 'zh',
        uploadUrl: '#',
        allowedFileExtensions : ['jpg', 'png','gif'],
    });
    $("#file-0").fileinput({
    	language: 'zh',
        'allowedFileExtensions' : ['jpg', 'png','gif'],
    });
    $("#file-1").fileinput({
    	language: 'zh',
        uploadUrl: '#', // you must set a valid URL here else you will get an error
        allowedFileExtensions : ['jpg', 'png','gif'],
        overwriteInitial: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        slugCallback: function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
	});
    /*
    $(".file").on('fileselect', function(event, n, l) {
        alert('File Selected. Name: ' + l + ', Num: ' + n);
    });
    */
	$("#file-3").fileinput({
		language: 'zh',
		showUpload: false,
		showCaption: false,
		browseClass: "btn btn-primary btn-lg",
		fileType: "any",
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
	});
	$("#file-4").fileinput({
		language: 'zh',
		uploadExtraData: {kvId: '10'}
	});
    $(".btn-warning").on('click', function() {
        if ($('#file-4').attr('disabled')) {
            $('#file-4').fileinput('enable');
        } else {
            $('#file-4').fileinput('disable');
        }
    });    
    $(".btn-info").on('click', function() {
        $('#file-4').fileinput('refresh', {previewClass:'bg-info'});
    });
    /*
    $('#file-4').on('fileselectnone', function() {
        alert('Huh! You selected no files.');
    });
    $('#file-4').on('filebrowse', function() {
        alert('File browse clicked for #file-4');
    });
    */
    $(document).ready(function() {
        $("#test-upload").fileinput({
        	language: 'zh',
            'showPreview' : false,
            'allowedFileExtensions' : ['jpg', 'png','gif'],
            'elErrorContainer': '#errorBlock'
        });
        /*
        $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
            alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
        });
        */
    });


function uploadFile(){
	var file_name = document.all.fileObj.value;
	

	if (file_name == ""){
		$("#div_alert_PDF_File_NoBeSetted").attr("class","alert alert-danger");
		
	} else if (getEx(file_name).toString().toLowerCase() != ".pdf") {
		$("#div_alert_NOT_PDF_File").attr("class","alert alert-danger");
	}else {
		
		document.all.myform.action="${pageContext.request.contextPath}/uploadFile/uploadStandardPostFile.do?standardPost_beSelected_post="+document.all.standardPost_beSelected_post.value;
		document.all.myform.submit(); 
	}
	
	
}
function getEx(file_name){
	var result =/\.[^\.]+/.exec(file_name);
	return result;
}

	</script>
</html>