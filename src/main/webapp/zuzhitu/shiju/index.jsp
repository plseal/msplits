<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 栅格系统，移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/zuzhitu/shiju/visio.css"/>
<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/buttons.css" rel="stylesheet">
<title>
shiju.jsp
</title>
<script type="text/javascript" language="javascript">
function UpdateTooltip(){};
function OnShapeClick(){};
</script>

<script src="${pageContext.request.contextPath}/zuzhitu/shiju/png_1.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript" language="javascript">
	if( (parent.isSVG) || 
		(parent.isVML && parent.vmlSupported) || 
		(parent.isXAML && parent.isUpLevel)) 
	{
		location.replace(parent.g_FileList[parent.g_CurPageIndex].PriImage);
	}
</script>


<script type="text/javascript" language="javascript">
var pageID = 0;
var isUpLevel = parent.isUpLevel;
var OnShapeClick = null;
if (!parent.isMac)
{
	OnShapeClick = parent.OnShapeClick;
}

var OnShapeKey = parent.OnShapeKey;
var UpdateTooltip = parent.UpdateTooltip;
var clickMenu = parent.clickMenu;
var toggleMenuDiv = parent.toggleMenuDiv;
var toggleMenuLink = parent.toggleMenuLink;
var GoToPage = parent.GoToPage;


if (parent.isUpLevel)
{

	if (parent.g_FirstPageToLoad != null && parent.g_FirstPageToLoad.length > 0)
	{
		if (parent.g_FileList[parent.g_CurPageIndex].PageID != pageID)
		{
			var fileEntry = parent.g_FileList[parent.g_CurPageIndex];
			var fileToLoad = fileToLoad = fileEntry.PriImage;
			if (fileEntry.SecImage.length > 0)
			{
				fileToLoad = fileEntry.SecImage;
			}

			location.replace(fileToLoad);
		}

		parent.g_FirstPageToLoad = null;
	}


	var viewMgr = new parent.CViewMgr();
	parent.viewMgr = viewMgr;

	viewMgr.SupportsDetails = true;
	viewMgr.SupportsSearch = true;

	viewMgr.put_Location = ViewMgrSetRasterLocation;
	viewMgr.visBBoxLeft = 1.020459;
	viewMgr.visBBoxRight = 10.810565;
	viewMgr.visBBoxBottom = 4.934957;
	viewMgr.visBBoxTop = 7.678901;
	viewMgr.highlightDiv = null;
}

function load ()
{
	if(isUpLevel)
	{
		arrowdiv.innerHTML = '<img id="arrowgif" alt="显示所选形状的位置" src="${pageContext.request.contextPath}/zuzhitu/shiju/arrow.png"/>';

		var pageIndex = parent.PageIndexFromID (pageID);
		parent.CurPageUpdate (pageIndex);
	}
}

function unload()
{
	if(isUpLevel)
	{
		viewMgr = null;
		parent.viewMgr = null;
	}
}

window.onload = load;
window.onunload = unload;
document.onclick = clickMenu;

</script>
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
// Displays the banner prompt to install Silverlight
if (parent.slSupported && !parent.slInstalled)
{
	var slBanner = document.createElement("div");
	slBanner.className = "banner";
	slBanner.innerHTML = '若要启用全部功能(例如扫视和缩放)，<a href="http://www.microsoft.com/silverlight/resources/install.aspx" target="parent">单击此处</a> 需要安装 Silverlight 插件。';

	document.body.appendChild(slBanner);
	document.body.style.paddingTop = "2.5em";
}
</script>
<!-- bootstrap 栅格容器 -->
<div class="container">
	<!-- bootstrap 栅格容器  row start-->
	<div class="row">
	
		<center>
		  <IMG id="ConvertedImage" SRC="${pageContext.request.contextPath}/zuzhitu/shiju/png_1.png" ALT="页-1" name=RasterImage BORDER="0" USEMAP="#visImageMap">
		</center>
		
		<MAP NAME="visImageMap">
		  <AREA shape="POLYGON" tabindex="1" ALT="市局"  target="_top" COORDS="572,0,299,0,299,68,572,68,572,0"  onclick="return OnShapeClick(0,1,event);" onkeyup="OnShapeKey(0,1,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="任 城 烟 草"  target="_top" COORDS="50,115,0,115,0,261,50,261,50,115"         onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL02}';" onkeyup="OnShapeKey(0,30,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="兖 州 烟 草"  target="_top" COORDS="117,115,68,115,68,261,117,261,117,115"    onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL03}';" onkeyup="OnShapeKey(0,51,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="曲 阜 烟 草"  target="_top" COORDS="185,115,134,115,134,261,185,261,185,115"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL04}';" onkeyup="OnShapeKey(0,21,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="泗 水 烟 草"  target="_top" COORDS="250,114,205,114,205,261,250,261,250,114"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL05}';" onkeyup="OnShapeKey(0,36,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="邹 城 烟 草"  target="_top" COORDS="321,115,270,115,270,260,321,260,321,115"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL06}';" onkeyup="OnShapeKey(0,61,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="微 山 烟 草"  target="_top" COORDS="386,115,341,115,341,261,386,261,386,115"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL07}';" onkeyup="OnShapeKey(0,41,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="鱼 台 烟 草"  target="_top" COORDS="454,115,406,115,406,260,454,260,454,115"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL08}';" onkeyup="OnShapeKey(0,56,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="金 乡 烟 草"  target="_top" COORDS="527,114,477,114,477,261,527,261,527,114"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL09}';" onkeyup="OnShapeKey(0,11,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="嘉 祥 烟 草"  target="_top" COORDS="595,114,545,114,545,261,595,261,595,114"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL10}';" onkeyup="OnShapeKey(0,6,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="汶 上 烟 草"  target="_top" COORDS="670,115,625,115,625,260,670,260,670,115"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL11}';" onkeyup="OnShapeKey(0,46,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="梁 山 烟 草"  target="_top" COORDS="742,114,693,114,693,262,742,262,742,114"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL12}';" onkeyup="OnShapeKey(0,16,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="配 送 分 公 司"  target="_top" COORDS="814,114,763,114,763,261,814,261,814,114"onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL13}';"  onkeyup="OnShapeKey(0,35,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="1532"   target="_top" COORDS="878,114,825,114,825,261,878,261,878,114"      onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL14}';"  onkeyup="OnShapeKey(0,77,event);">
		  <AREA shape="POLYGON" tabindex="1" ALT="海 川 物 流"   target="_top" COORDS="939,114,888,114,888,261,939,261,939,114" onclick="javascript:window.location.href='${pageContext.request.contextPath}/zuzhitu/xianju/${URL15}';"  onkeyup="OnShapeKey(0,82,event);">
		</MAP>
		 
	
		
	</div>
	<div class="row">
	       <br/>
		  <a href="${pageContext.request.contextPath}/zuzhitu/shiju/indexS1.jsp" class="button button-block button-rounded button-primary button-large">更新组织图</a>
	</div>

</DIV>


</body>
</html>
