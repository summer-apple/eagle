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
	<title>Eagle</title>
	<link rel="stylesheet" type="text/css" href="resources/css/index-general.css">
	<link rel="stylesheet" href="resources/css/fonts/fontawesome/css/font-awesome.min.css">
	<style type="text/css">


/**
**************以下为首页
**/
section{
	width: 1200px;
	clear: both;
	margin-right: auto;
	margin-left: auto;
	margin-bottom: 20px;
	background-color: #ADABAA;
}
#s1{	
	height: 480px;
}

#s2{
	height: 420px;
}

#s2>div {
	height: 100%;
	float: left;
	background-color: #DDD;
}

#news{
	width:840px;
	margin-right: 20px;
}

#about{
	width: 340px;
}

#s3{
	height: 300px;
}
</style>
<script src="resources/js/jquery-1.11.1.min.js"></script>

</head>

<body>
<%@include file="head.jsp"%>
<div class="main">
	<section id="s1">slide</section>
	<section id="s2">
		<div id="news">news</div>
		<div id="about">about</div>
	</section>
	<section id="s3">cooperation</section>
</div>
<%@include file="foot.jsp"%>
<script type="text/javascript">
	$().ready(function(){


	});
</script>
</body>
</html>