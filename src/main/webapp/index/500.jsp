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
.clear{height: 100px;}
.dialog {
    width: 600px;
    height: 300px;
    background: #EEE;
    border-radius: 7px;
    margin-right: auto;
    margin-left: auto;
}
#show {
    width: 100%;
    height: 200px;
    line-height: 240px;
    font-size: 18px;
    color: #666;
}
.operation-line{
	width: 100%;
	height: 100px;
}
.operation-line a{
    width: 100px;
    height: 40px;
    display: block;
    float: right;
    margin-right: 30px;
    margin-top: 40px;
    line-height: 40px;
    text-align: center;
    color: #FFF;
    background-color: #09C;
    border-radius: 5px;
}
.operation-line a:hover{
	background-color:#0179A0;
	color: #EEE;
}

</style>
<%@include file="css.jsp"%>
<script>
	var t=5;//设定跳转的时间
	setInterval("refer()",1000); //启动1秒定时
	function refer(){
	if(t==0){
	location="<%=basePath%>index/index.jsp"; //#设定跳转的链接地址
	}
	document.getElementById('show').innerHTML="系统出错，"+t+"秒后跳转到首页"; // 显示倒计时
	t--; // 计数器递减
	//本文转自：
	}
</script>
</head>

<body>
<%@include file="head.jsp"%>
<div class="main">

<div class="clear"></div>

<div class="dialog">
	<div id="show">系统出错，5秒后跳转到首页</div>
	<div class="operation-line">
		<a href="index/index.jsp">确定</a>
	</div>
</div>

</div>


<%@include file="foot.jsp"%>
<%@include file="script.jsp"%>
<script type="text/javascript">
$().ready(function(){




	});
</script>
<link rel="stylesheet" type="text/css" href="resources/css/font.css">
</body>
</html>
