<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- release v4.3.5, copyright 2014 - 2016 Kartik Visweswaran -->
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Krajee JQuery Plugins - &copy; Kartik</title>
        <script src="${pageContext.request.contextPath}/jquery-easyui-1.4.3/jquery.min.js"></script>
        <link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/bootstrap/3.3.0/js/bootstrap.min.js" type="text/javascript"></script>
        
        <link href="${pageContext.request.contextPath}/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="${pageContext.request.contextPath}/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/bootstrap-fileinput/js/locales/zh.js" type="text/javascript"></script>
        
    </head>
    <body>
    	<br/>
        <div class="container kv-main">

            <form enctype="multipart/form-data">
                <input id="file-zh" class="file" type="file"  multiple data-min-file-count="1">
                <br>
                <button type="submit" class="btn btn-primary">保存到服务器</button>
                <button type="reset" class="btn btn-default">重置</button>
            </form>
            
            
            
        </div>
    </body>
	<script>
	//初始化按钮
    $('#file-zh').fileinput({
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
	</script>
</html>