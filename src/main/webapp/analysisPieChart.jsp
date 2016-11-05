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


// Create a PieChart object of size 650 x 370 pixels
// Create a PieChart object of size 800 x 600 pixels
// Create a PieChart object of size 1000 x 600 pixels
PieChart c = new PieChart(1200, 800);

//增大第一个参数 主图向右移动，增大第二个参数 主图向下移动，增大第三个参数 主图变大
// Set the center of the pie at (210, 250) and the radius to 200 pixels
c.setPieSize(450, 250, 200);

//增大第一个参数  列表图向右移动,增大第二个参数 列表图向下移动
// add a legend box where the top left corner is at (430, 60)
c.addLegend(940, 60);
c.setDefaultFonts("宋体","Bold");

// modify the sector label format to show percentages only
c.setLabelFormat("{label}:{percent}%");

//Draw the pie in 3D with 20 pixels 3D depth
c.set3D(20);

//Use the side label layout method
c.setLabelLayout(Chart.SideLayout);

//Set the label box background color the same as the sector color, with glass effect, and with 5
//pixels rounded corners
TextBox t = c.setLabelStyle();
t.setBackground(Chart.SameAsMainColor, Chart.Transparent, Chart.glassEffect());
t.setRoundedCorners(5);

//Set the border color of the sector the same color as the fill color. Set the line color of the
//join line to black (0x0)
c.setLineColor(Chart.SameAsMainColor, 0x000000);

//Set the start angle to 135 degrees may improve layout when there are many small sectors at the
//end of the data array (that is, data sorted in descending order). It is because this makes the
//small sectors position near the horizontal axis, where the text label has the least tendency to
//overlap. For data sorted in ascending order, a start angle of 45 degrees can be used instead.
c.setStartAngle(135);

// Set the pie data and the pie labels
c.setData(data, labels);

// Use rounded edge shading, with a 1 pixel white (FFFFFF) border
c.setSectorStyle(Chart.RoundedEdgeShading, 0xffffff, 1);

// Output the chart
String chart1URL = c.makeSession(request, "chart1");

// Include tool tip for the chart
String imageMap1 = c.getHTMLImageMap("", "", "title='{label}:{percent}%'");
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
		
	       <select class="form-control" id = "analysisfrom_view" name = "analysisfrom_view" onchange="javascript:change_analysisfrom();">
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



