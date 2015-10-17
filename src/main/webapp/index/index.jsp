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
.main{
	background-color: #F2F2F2;
}
section{
	width: 1200px;
	clear: both;
	margin-right: auto;
	margin-left: auto;
	margin-bottom: 20px;
	background-color: #FFF;
}
.menu-label {
    width: 167px;
    background-color: #09C;
    padding-right: 15px;
    text-align: right;
    margin-top: 20px;
    height: 60px;
}
.menu-label .lb-zh{
    color: #FFF;
    font-size:15px;
    text-align: right;
    line-height: 33px;
}
.menu-label .lb-en{
    color: #DDD;
    text-align: right;
}
#s1{	
	height: 480px;
	position: relative;
}
.title-warp{
	width: 200px;
	float: left;
	height: 480px;
}


.slide-warp{
	width: 980px;
	float: left;
	height: 440px;
	margin-bottom: 20px;
	margin-right: 20px;
	margin-top: 20px;
}
.slide-warp img{
	width: 100% !important;
}
.slidesjs-pagination {
    z-index: 9999;
    position: absolute;
    top: 80px;
    left: 0px;
    width: 200px;
	height: 480px;
}
.slidesjs-pagination-item{
    display: block;
    width: 180px;
    height: 75px;
    background-color: #FFF;
    line-height: 25px;
    border-bottom: 1px solid #DDD;
    border-right: 1px solid #DDD;
    border-left: 1px solid #DDD;
    font-size: 14px;
    
    text-align: left;
}
.slidesjs-pagination-item a:hover {
    color: #09C !important;
}
.slidesjs-pagination-item a{
	display: block;
	width: 160px;
	height: 55px;
	padding:10px;
	
	color: #666;
}
.active{
	color: #09C !important;
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
	<section id="s1">
		<div class="title-warp">
			<div class="menu-label">
				<span class="lb-zh">焦点</span><br>
				<span class="lb-en">Focus</span>
			</div>

		</div>
		<div class="slide-warp"></div>
	</section>
	<section id="s2">
		<div id="news">news</div>
		<div id="about">about</div>
	</section>
	<section id="s3">cooperation</section>
</div>
<%@include file="foot.jsp"%>
<script type="text/javascript" src="resources/js/jquery.slides.min.js"></script>
<script type="text/javascript">
	$().ready(function(){

		$.ajax({
				url:"slide/get-top",
				type:"post",
				dataType:"json",
				success:function(data){
					
					$.each(data,function(i,item){
						$(".slide-warp").append('<a href="'+item.link+'"><img src="'+ item.img +'"/></a>');
					});

		//轮播图
		    		 $('.slide-warp').slidesjs({
				        width: 900,
				        height: 480,
				        play: {
				          active: false,
				          auto: true,
				          interval: 2000,
				          swap: false
				        }
				      });

		    			$.each(data,function(i,item){
		    				$('[data-slidesjs-item="'+i+'"]').html(item.title);
		    			});
					



		    		}
		    });

		

	});
</script>
</body>
</html>