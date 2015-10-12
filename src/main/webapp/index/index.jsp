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
*{
	margin: 0;
	padding: 0;
	list-style: none;
}
body{
	width: 100%;
	text-align: center;
	margin-right: auto;
	margin-left: auto;
	background-color: #EEE;
}
a,a:hover {
	text-decoration: none;
	color:#000;
}
header {
    width: 100%;
    height: 80px;
    background-color: #FFF;
    text-align: left;
    margin-bottom: 20px;
}
.head-warp{
	width: 1200px;
	height: 80px;
	margin-left: auto;
	margin-right: auto;
	background-color: #F00;
}
#logo{
    float: left;
    width: 350px;
    margin-top: 9px;
	}

nav {
    float: right;
}

nav ul{
	float: left;
}

.nav-item {
    float: left;
    height: 80px;
    width: 80px;
    display: block;
}
.nav-btn-group {
    height: 30px;
    margin-top: 25px;
    line-height: 30px;
    text-align: center;
}
.nav-btn-group a {
	color: #666;
}


.dropdown {
    background-color: #333;
    width: 80px;
  	margin-top: 7px;
  	display: none;
}

.dropdown li,.dropdown li a {
    display: block;
    width: 80px;
    height: 30px;
    color: #EFEFEF;
    font-size: 12px;
}
.dropdown li a:hover{
	background-color: #999;
	color: #FFF;
}

.search {
    float: left;
    height: 80px;
    line-height: 80px;
    position: relative;
}

#key {
    width: 25px;
    height: 25px;
    margin-right: 10px;
    margin-left: 20px;
	border-radius: 5px;
	border: none;
	outline: none !important;
	color:#999;
	text-indent: 5px;
	line-height: 25px;
	font-size: 13px;
}

.input-border{
    border: 1px solid #DDD !important;
}
.input-width{
	width: 100px !important;
}

.search-icon {
    position: absolute;
    top: 34px;
    right: 15px;
    color: #CCC;
}

.sub-btn {
    position: absolute;
    top: 34px;
    right: 15px;
    color: #999;
}
/**以上为 header**/

footer{
	height: 240px;
	width: 100%;
	background-color: #5E5E5E;
	text-align: center;
}
.foot-nav-warp {
	width: 1200px;
    height: 200px;
    margin-right: auto;
    margin-left: auto;
}
.foot-nav {
    padding-left: 195px;
}
.foot-nav-item {
    float: left;
    height: 80px;
    width: 80px;
    display: block;
    margin-right: 60px;
}
.foot-nav-btn-group {
    height: 30px;
    margin-top: 25px;
    line-height: 30px;
    text-align: center;
}
.foot-nav-btn-group a {
	color: #00CCFF;
}


.foot-dropdown {
    width: 80px;
  	margin-top: 7px;
}

.foot-dropdown li,.foot-dropdown li a {
    display: block;
    width: 80px;
    height: 30px;
    color: #EFEFEF;
    font-size: 12px;
}
.foot-dropdown li a:hover{
	color: #FFF;
}







.copy-right-warp{
	height: 40px;
	width: 100%;
	background-color: #434343;
	
}
.copy-right{
	width: 1200px;
    margin-right: auto;
    margin-left: auto;
    color: #FFF;
	font-size: 13px;
    line-height: 40px;
}
.cr-left {
    float: left;
    width: 1107px;
    text-align: left;
}


/**
**************以上为footer
**/



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
<script type="text/javascript">
	$().ready(function(){

		//下拉菜单
		$(".nav-item").mouseover(function(){
			$(this).find(".dropdown").slideDown(0);
		}).mouseleave(function(){
			$(this).find(".dropdown").slideUp(0);
		});

		//搜索框
		var $key = $("#key");
		var $icon = $(".search-icon");

		$key.mouseover(function(){
			$key.addClass("input-border");
		}).blur(function(){
			if ($key.val()=="") {
				$key.removeClass("input-width").removeClass("input-border");
				$(".sub-btn").removeClass("sub-btn").addClass("search-icon");
			}
		}).mouseleave(function(){
			if(!$key.is(":focus") && $key.val()==""){
				$key.removeClass("input-border");
			}
			
		}).click(function(){
			$key.addClass("input-width").addClass("input-border");
			$icon.addClass("sub-btn").removeClass("search-icon");
		});

		if($key.width()==25){//无焦点

			$key.val("");

			$icon.click(function(){
				$key.addClass("input-border").addClass("input-width").focus();
				$icon.addClass("sub-btn").removeClass("search-icon");
			}).mouseover(function(){
				$key.addClass("input-border");
			}).mouseleave(function(){
				$key.removeClass("input-border");
			});
		}else{//有焦点
			
		}


			$(document).on("click",".sub-btn",function(){
				if ($key.val()!="") {
					$("#search-form").submit();
				}
			});
		


	});
</script>
</head>

<body>
<header>
<div class="head-warp">
	<img id="logo" src="resources/images/e-logo.png">
	<nav>
		<ul>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="index/index.jsp">首页</a>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">关于强鹰</a>
					<ul class="dropdown">
						<li><a href="#">时代强鹰</a></li>
						<li><a href="#">校园联盟</a></li>
						<li><a href="#">强鹰青年圈</a></li>
						<li><a href="#">强鹰孵化器</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">强鹰动态</a>
					<ul class="dropdown">
						<li><a href="#">强鹰新闻</a></li>
						<li><a href="#">媒体报道</a></li>
						<li><a href="#">会员新闻</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">合作伙伴</a>
					<ul class="dropdown">
						<li><a href="#">会员</a></li>
						<li><a href="#">名誉学员</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">加入强鹰</a>
					<ul class="dropdown">
						<li><a href="#">强鹰专职</a></li>
						<li><a href="#">强鹰实习生</a></li>
						<li><a href="#">名誉学员</a></li>
						<li><a href="#">学员</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="index/contact.jsp">联系我们</a>
				</div>
			</li>
		</ul>
		<div class="search">
			<form id="search-form" action="news/search" method="post">
				

				<input id="key" type="text">

				<span class="search-icon fa fa-search"></span>

			</form>
		</div>
	</nav>
	</div>
</header>
<div class="main">
	<section id="s1">slide</section>
	<section id="s2">
		<div id="news">news</div>
		<div id="about">about</div>
	</section>
	<section id="s3">cooperation</section>
</div>
<footer>
	<div class="foot-nav-warp">
	<div class="foot-nav">
		<ul>
			<li class="foot-nav-item">
				<div class="foot-nav-btn-group">
					<a href="index/index.jsp">首页</a>
				</div>
			</li>
			<li class="foot-nav-item">
				<div class="foot-nav-btn-group">
					<a href="javascript:void(0);">关于强鹰</a>
					<ul class="foot-dropdown">
						<li><a href="#">时代强鹰</a></li>
						<li><a href="#">校园联盟</a></li>
						<li><a href="#">强鹰青年圈</a></li>
						<li><a href="#">强鹰孵化器</a></li>
					</ul>
				</div>
			</li>
			<li class="foot-nav-item">
				<div class="foot-nav-btn-group">
					<a href="javascript:void(0);">强鹰动态</a>
					<ul class="foot-dropdown">
						<li><a href="#">强鹰新闻</a></li>
						<li><a href="#">媒体报道</a></li>
						<li><a href="#">会员新闻</a></li>
					</ul>
				</div>
			</li>
			<li class="foot-nav-item">
				<div class="foot-nav-btn-group">
					<a href="javascript:void(0);">合作伙伴</a>
					<ul class="foot-dropdown">
						<li><a href="#">会员</a></li>
						<li><a href="#">名誉学员</a></li>
					</ul>
				</div>
			</li>
			<li class="foot-nav-item">
				<div class="foot-nav-btn-group">
					<a href="javascript:void(0);">加入强鹰</a>
					<ul class="foot-dropdown">
						<li><a href="#">强鹰专职</a></li>
						<li><a href="#">强鹰实习生</a></li>
						<li><a href="#">名誉学员</a></li>
						<li><a href="#">学员</a></li>
					</ul>
				</div>
			</li>
			<li class="foot-nav-item">
				<div class="foot-nav-btn-group">
					<a href="index/contact.jsp">联系我们</a>
				</div>
			</li>
		</ul>
		</div>
	</div>
	<div class="copy-right-warp">
		<div class="copy-right">
			<div class="cr-left">版权所有 © 时代强鹰 · 杭州创业发展促进会</div>
			<div class="cr-right"> ICP备123456号</div>
		</div>
	</div>
</footer>
</body>
</html>