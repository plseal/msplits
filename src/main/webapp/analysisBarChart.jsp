<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include  file="sessiontimeout.jsp"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/3.3.0/css/buttons.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/jquery-easyui-1.4.3/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/3.3.0/js/bootstrap.min.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.4.3/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.4.3/themes/icon.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.4.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.4.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>

<%@page import="ChartDirector.*" %>
<%

String str_ana_data = request.getAttribute("ana_data").toString();
String str_ana_labels = request.getAttribute("ana_labels").toString();
Integer int_ana_Width = Integer.parseInt(request.getAttribute("int_ana_Width").toString());

String[] ary_ana_data = str_ana_data.split(",");
String[] ary_ana_labels = str_ana_labels.split(",");

//The data for the pie chart
//double[] data = {1, 2, 3, 4, 5};
double[] data = new double[ary_ana_data.length];
for(int i=0;i<ary_ana_data.length;i++){
    data[i] = Integer.parseInt(ary_ana_data[i]);
}
//The labels for the pie chart
//String[] labels = {"车辆隐患1件", "特种设备2件", "标识隐患3件", "电气隐患4件", "消防隐患5件"};
String[] labels = new String[ary_ana_labels.length];
for(int i=0;i<ary_ana_labels.length;i++){
    labels[i] = ary_ana_labels[i];
}

// The colors for the bars
int[] colors = {0x5588bb, 0x66bbbb, 0xaa6644, 0x99bb55, 0xee9944, 0x444466, 0xbb5555};

// Create a XYChart object of size 600 x 360 pixels
XYChart c = new XYChart(int_ana_Width, 600);

// Set the plotarea at (70, 20) and of size 500 x 300 pixels, with transparent background and border
// and light grey (0xcccccc) horizontal grid lines
//第一个参数：图往右移动
//第二个参数：图往下移动
//第三个参数：图变宽
//第四个参数：图变宽
c.setPlotArea(70, 120, int_ana_Width-200, 400, Chart.Transparent, -1, Chart.Transparent, 0xcccccc);

// Set the x and y axis stems to transparent and the label font to 12pt Arial
c.xAxis().setColors(Chart.Transparent);
c.yAxis().setColors(Chart.Transparent);
c.xAxis().setLabelStyle("宋体", 9);
c.yAxis().setLabelStyle("宋体", 9);

// Add a multi-color bar chart layer using the given data
BarLayer layer = c.addBarLayer3(data, colors);

// Use bar gradient lighting with the light intensity from 0.8 to 1.15
layer.setBorderColor(Chart.Transparent, Chart.barLighting(0.8, 1.15));

// Set rounded corners for bars
layer.setRoundedCorners();

// Set the labels on the x axis.
c.xAxis().setLabels(labels);

// For the automatic y-axis labels, set the minimum spacing to 40 pixels.
c.yAxis().setTickDensity(40);

// Add a title to the y axis using dark grey (0x555555) 14pt Arial font
//c.yAxis().setTitle("Y-Axis Title Placeholder", "Arial", 14, 0x555555);

// Output the chart
String chart1URL = c.makeSession(request, "chart1");

// Include tool tip for the chart
String imageMap1 = c.getHTMLImageMap("", "", "title='{xLabel}:{value}件'");
%>
<style>
.rectimyinput {
font-family:方正小标宋简体;
font-size: 10pt;
line-height:15px;
COLOR: #000000;
border-top-style: none;
border-right-style: none;
border-bottom-style: dotted;
border-left-style: none;
border-bottom-color: #000000;
border-top-width: 0px;
border-right-width: 0px;
border-bottom-width: 1px;
border-left-width: 0px;
}

</style>
<body onload="onload_()">

<script type="text/javascript">
function analysis_(){
    document.all.myform.action="${pageContext.request.contextPath}/analysis/getdata.do";
    document.all.myform.submit(); 
}

function change_analysisfrom() {
    document.all.myform.analysisfrom.value =  $("#analysisfrom_view").val();
}
function change_analysistype() {
    document.all.myform.analysistype.value =  $("#analysistype_view").val();
}
function change_analysischart() {
    document.all.myform.analysischart.value =  $("#analysischart_view").val();
}
function onload_(){
    
    var analysisfrom = document.all.myform.analysisfrom.value;
    if (analysisfrom != "") {
        document.all.myform.analysisfrom_view.value = analysisfrom;
    } else {
        document.all.myform.analysisfrom.value = "自查隐患信息";
    }
    
    var analysistype = document.all.myform.analysistype.value;
    if (analysistype != "") {
        document.all.myform.analysistype_view.value = analysistype;
    } else {
        document.all.myform.analysistype.value = "按单位（部门）统计";
    }
    
    var analysischart = document.all.myform.analysischart.value;
    if (analysischart != "") {
        document.all.myform.analysischart_view.value = analysischart;
    } else {
        document.all.myform.analysischart.value = "饼图";
    }
    
            
}
</script>
<!-- bootstrap 栅格容器 -->
<form method="post" id="myform" class="form-inline" >
    <div class="container">                 
	    <input type="hidden" name="analysischart" value="${analysischart}" class="rectimyinput" style="width:110px;" maxlength=12>
	
		
		<div class="form-group">
		
	       <select class="form-control " id = "analysisfrom_view" name = "analysisfrom_view" onchange="javascript:change_analysisfrom();">
	        <option value="自查隐患信息" >自查隐患信息</option>
	        <option value="上级检查组安全检查隐患信息" >上级检查组安全检查隐患信息</option>
	        </select>
	        <input type="hidden" name="analysisfrom" value="${analysisfrom}" class="rectimyinput" style="width:110px;" maxlength=12> 
	        &nbsp;&nbsp;&nbsp;
		
		
	        <select class="form-control" id = "analysistype_view" name = "analysistype_view" onchange="javascript:change_analysistype();">
	        <option value="按单位（部门）统计" >按单位（部门）统计</option>
	        <option value="按地点统计" >按地点统计</option>
	        <option value="按隐患类型统计" >按隐患类型统计</option>
	        <option value="按隐患等级统计" >按隐患等级统计</option>
	        </select> 
	        <input type="hidden" name="analysistype" value="${analysistype}" class="rectimyinput" style="width:110px;" maxlength=12> 
	        &nbsp;&nbsp;&nbsp;
		
	        <select class="form-control" id = "analysischart_view" name = "analysischart_view" onchange="javascript:change_analysischart();">
	        <option value="饼图" >饼图</option>
	        <option value="柱形图" >柱形图</option>
	        </select> 
			&nbsp;&nbsp;&nbsp;
	
		</div>
		
		<button type="button" class="btn btn-primary" onclick="javascript:analysis_();">开始统计</button>

	</div>
		<img src='${pageContext.request.contextPath}<%="/getchart.jsp?"+chart1URL%>' usemap="#map1" border="0">
		<map name="map1"><%=imageMap1%></map>

</form>

</body>
</html>


