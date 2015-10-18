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
    height: 50px;
}
.menu-label .lb-zh {
    color: #FFF;
    font-size: 15px;
    text-align: right;
    line-height: 30px;
    height: 30px;
    width: 100%;
}
.menu-label .lb-en {
    color: #DDD;
    text-align: right;
    font-size: 13zpx;
    height: 20px;
    line-height: 20px;
    display: block;
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
#s1 .slidesjs-pagination {
    z-index: 9999;
    position: absolute;
    top: 70px;
    left: 0px;
    width: 200px;
	height: 480px;
}
#s1 .slidesjs-pagination-item{
    display: block;
    width: 180px;
    height: 77px;
    background-color: #FFF;
    line-height: 25px;
    border-bottom: 1px solid #DDD;
    border-right: 1px solid #DDD;
    border-left: 1px solid #DDD;
    font-size: 14px;
    
    text-align: left;
}
#s1 .slidesjs-pagination-item a:hover {
    color: #09C !important;
}
#s1 .slidesjs-pagination-item a{
	display: block;
	width: 160px;
	height: 57px;
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

#s3,#s4{
	height: 300px;
}
#s4{
	display: none;
}

.label-warp {
    width: 200px;
    height: 300px;
    float: left;
}
.partner-label{
	width: 200px;
	height: auto;
}
.partner-label a{
	display: block;
	width: 180px;
	height: 40px;
	color: #666;
	text-align: center;
	line-height: 40px;
	margin-bottom: 10px;
	background-color: #DDD;
	font-size: 14px;
}
.partner-label a:hover,.partner-label-selected{
	color: #FFF !important;
	background-color: #CCC !important;
}
.partner-warp {
    width: 1000px; 
    float: left;
    height: 300px;
    margin-top: 10px;
    position: relative;
}
.partner-warp .slidesjs-navigation{
	position: absolute;
    top: 30px;
    display: block;
    width: 30px;
    height: 30px;
    background-color: #09C;
    z-index: 99999;
    font-size: 17px;
    line-height: 30px;
    color: #FFF;
    text-align: center;
}
.partner-warp .slidesjs-previous{
	left: 12px;
}
.partner-warp .slidesjs-next{
	right: 40px;
}

.partner-hide{
	display: none !important;
}
.partner{
	width: 1000px;
	height: 250px;
}
.coo-warp {
    width: 160px;
    height: 220px;
    float: left;
    margin-left: 27px;
    margin-bottom: 10px;
    margin-top: 10px;
    border: 1px solid #DDD;
}
.coo-warp>a{
    width: 100%;
    height: 100%;
    display: block;
}
.coo-warp>a:hover{
    box-shadow: 0px 0px 4px #888888;
}
.coo-name {
    width: 100%;
    height: 25px;
    line-height: 25px;
    text-align: center;
    font-size: 15px;
    color:#666;
}
.coo-position {
    width: 80%;
    margin-left: 10%;
    height: 35px;
    line-height: 16px;
    font-size: 12px;
    text-align: center;
    color:#666;
}
.coo-headimg {
    width: 160px;
    height: 160px;
}
.coo-headimg>img{
    width: 100%;
    height: 100%;
}
.more{
	width: 960px;
	height: 20px;
	line-height: 20px;
	text-align: right;
	font-size: 12px;
	clear: both;
}
.more a {
	color: #666;
}
.more a:hover {
	color: #333;
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
				<div class="lb-zh">焦点</div>
				<div class="lb-en">Focus</div>
			</div>

		</div>
		<div class="slide-warp"></div>
	</section>
	<div style="line-height:0; margin:0; padding:0; height:0; font-size:0; clear:both;"></div>
	<section id="s2">
		<div id="news">news</div>
		<div id="about">about</div>
	</section>
	<div style="line-height:0; margin:0; padding:0; height:0; font-size:0; clear:both;"></div>
	<section id="s3">

		<div class="label-warp">
			<div class="menu-label">
				<div class="lb-zh">合作伙伴</div>
				<div class="lb-en">Partners</div>
			</div>
			<div class="partner-label">
				<a class="partner-1-label partner-label-selected" href="javascript:void(0);">会 员</a>
				<a class="partner-2-label" href="javascript:void(0);">名誉学员</a>
			</div>
		</div>
		<div class="partner-warp">
			<div class="partner partner-1">
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>

				<a href="#" class="slidesjs-previous slidesjs-navigation"><i class="fa fa-chevron-left"></i></a>
              	<a href="#" class="slidesjs-next slidesjs-navigation"><i class="fa fa-chevron-right"></i></a>
			</div>
			<div class="more"><a href="index/coolist.jsp?type=1"> >>more </a></div>
		</div>
	</section>

	<section id="s4">
		<div class="label-warp">
			<div class="menu-label">
				<div class="lb-zh">合作伙伴</div>
				<div class="lb-en">Partners</div>
			</div>
			<div class="partner-label">
				<a class="partner-1-label" href="javascript:void(0);">会 员</a>
				<a class="partner-2-label partner-label-selected" href="javascript:void(0);">名誉学员</a>
			</div>
		</div>
		<div class="partner-warp">
			
			<div class="partner partner-2">
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">aaaa</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ccc.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">dddd</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ccc.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">ffff</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">ffff</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/aaa.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">ffff</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/aaa.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ccc.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/bbb.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>
				<div class="partner-line">
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿asdfasdfsadfadsf斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">asdfasfasdfsaf</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
					<div class="coo-warp">
						<a href="cooperation.jsp?id=17">
							<div class="coo-name">阿斯顿飞</div>
							<div class="coo-position">阿斯顿飞</div>
							<div class="coo-headimg">
								<img src="resources/images/gallery/ddd.jpg">
							</div>
						</a>
					</div>
				</div>

				<a href="#" class="slidesjs-previous slidesjs-navigation"><i class="fa fa-chevron-left"></i></a>
              	<a href="#" class="slidesjs-next slidesjs-navigation"><i class="fa fa-chevron-right"></i></a>
			</div>
			<div class="more"><a href="index/coolist.jsp?type=2"> >>more </a></div>
		</div>
	</section>
	<div style="line-height:0; margin:0; padding:0; height:0; font-size:0; clear:both;"></div>
</div>
<%@include file="foot.jsp"%>
<script type="text/javascript" src="resources/js/jquery.slides.min.js"></script>
<script type="text/javascript">
	$().ready(function(){
//轮播图
		$.ajax({
				url:"slide/get-top",
				type:"post",
				dataType:"json",
				success:function(data){
					
					$.each(data,function(i,item){
						$(".slide-warp").append('<a href="'+item.link+'"><img src="'+ item.img +'"/></a>');
					});

		
		    		 $('.slide-warp').slidesjs({
				        width: 900,
				        height: 480,
				        play: {
				          active: false,
				          auto: true,
				          interval: 2000,
				          swap: false
				        },
				        effect:{
				        	slide:{
				        		speed:1000
				        	}
				        }
				      });

		    			$.each(data,function(i,item){
		    				$('#s1 [data-slidesjs-item="'+i+'"]').html(item.title);
		    			});

		    		}
		    });

//合作伙伴

				$('.partner-2').slidesjs({
				        width: 1000,
				        height: 250,
				       	navigation: false,
				       	pagination:false,
				        play: {
				          active: false,
				          auto: true,
				          interval: 4000,
				          swap: false
				        },
				        effect:{
				        	slide:{
				        		speed:3000
				        	}
				        }
				      });

				$('.partner-1').slidesjs({
				        width: 1000,
				        height: 250,
				       	navigation: false,
				       	pagination:false,
				        play: {
				          active: false,
				          auto: true,
				          interval: 4000,
				          swap: false,
				          pauseOnHover: false
				        },
				        effect:{
				        	slide:{
				        		speed:3000
				        	}
				        }
				      });

//class="partner-1-label partner-label-selected"

				$(".partner-1-label").click(function(){
					$("#s3").show();
					$("#s4").hide();
					// $(".partner-1").removeClass("partner-hide");
					// $(".partner-1-label").addClass("partner-label-selected");
					// $(".partner-2").addClass("partner-hide");
					// $(".partner-2-label").removeClass("partner-label-selected");
				});

				$(".partner-2-label").click(function(){
					$("#s4").show();
					$("#s3").hide();
					// $(".partner-2").removeClass("partner-hide");
					// $(".partner-2-label").addClass("partner-label-selected");
					// $(".partner-1").addClass("partner-hide");
					// $(".partner-1-label").removeClass("partner-label-selected");
				});

	});
</script>
</body>
</html>