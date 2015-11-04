<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
<%@ include file="meta.jsp" %>
	<style type="text/css">
.contact-logo {
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
    width: 97%;
}

.contact-title,.fallow-title {
    width: 97%;
    height: 40px;
    line-height: 40px;
    border-bottom: 1px dashed #999;
    font-size: 18px;
    color: #666;
    margin-bottom: 10px;
}
.contact-title span,.fallow-title span{
	color: #09C;
}
.contact-body {
    margin-top: 5px;
    margin-bottom: 40px;
}
#allmap{
	width: 90%;
	height: 400px;
	margin-bottom: 40px;
}
.qrcode-warp {
    width: 100%;
    margin-top: 50px;
    float: left;
    text-align: center;
    padding-right: 250px;
}
.qrcode-warp img {
	width: 150px;
}
.qrcode-label {
    width: 100%;
    height: 25px;
    line-height: 25px;
    text-align: center;
}
</style>
<%@include file="css.jsp"%>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ULqDi9Puu8Ol3e6IYwKz2PaZ"></script>
</head>

<body>
<%@include file="head.jsp"%>
<div class="main">
	<div class="menu-warp">
		<div class="menu-label">
			<span class="lb-zh">联系我们</span><br>
			<span class="lb-en">Contact</span>
		</div>
	</div>
	<div class="content-warp">
		<div class="content-body">
			<div  class="contact-logo">
				<img src="resources/images/contact-logo.jpg">
			</div>
			<div class="contact-contact">
				<div class="contact-title"><span class="fa fa-caret-right"></span>联系我们</div>
				<div class="contact-body">
					地址：浙江省杭州市下城区绍兴路337号野风现代之星4F<br>
					电话：0571-56608979<br>
					传真：0571-56608979  3669*1<br>
					邮箱：eliteeagle@163.com
				</div>
			</div>
			<div id="allmap"></div>
			<div class="contact-fallow">
				<div class="fallow-title"><span class="fa fa-caret-right"></span>关注我们</div>
				<div class="fallow-qrcode">
					<div class="qrcode-warp">
						<img src="resources/images/contact-qrcode.jpg">
						<div class="qrcode-label">时代强鹰微信公众号</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="row">
		<div class="col-sm-12">
			<div class="pagination"></div>
		</div>				
	</div>
	
	


	<div style="line-height:0; margin:0; padding:0; height:0; font-size:0; clear:both;"></div>
</div>
<div class="qry-from-warp">
	<form id="qry-form">
		<input id="pageNo" name="pageNo" type="hidden" value="0">
		<input id="pageSize" name="pageSize" type="hidden" value="10">
	</form>
</div>

<%@include file="foot.jsp"%>
<%@include file="script.jsp"%>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(116.331398,39.897445),11);
	map.enableScrollWheelZoom(true);
	
	map.clearOverlays(); 
	var new_point = new BMap.Point(120.1744560000,30.3032000000);
	var marker = new BMap.Marker(new_point);  // 创建标注
	map.addOverlay(marker);              // 将标注添加到地图中
	map.panTo(new_point);      
	
</script>
</body>
</html>