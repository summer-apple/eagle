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
    font-size: 13px;
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
    z-index: 99;
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
	background-color: #F2F2F2;
}

#s2>div {
	height: 100%;
	float: left;
	background-color: #FFF;
}

#news{
	width:840px;
	margin-right: 20px;
	background-color: #FFF;
}
.news-label {
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
.new-label-selected{
	color: #FFF !important;
	background-color: #CCC !important;	
}
.news-label:hover{
	color: #FFF !important;
    background-color: #CCC !important;
}
.news-warp {
    width: 640px;
    float: left;
    height: 420px;
    z-index: 0;
}

.news-block {
    width: 100%;
    height: 400px;
    display: none;
    margin-top: 20px;
    position: relative;
}
.news-block a {
    display: block;
    text-align: left;
    width: 100%;
    height: 30px;
    margin-bottom: 5px;
    font-size: 14px;
    line-height: 30px;
    color: #666;
    text-indent: 20px;
}
.news-block a:hover {
	color: #09C !important;
}
.news-block-selected{
	display: block !important;
	z-index: 999;
}

#about{
	width: 340px;
	position: relative;
}
#about .menu-label {
    margin-bottom: 20px;
}
.about-warp {
    height: 307px;
    width: 300px;
    margin-left: 20px;
    font-size: 14px;
    color: #666;
    text-align: left;
    line-height: 24px;
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
    z-index: 999;
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
	text-align: right !important;
	font-size: 12px !important;
	clear: both;
}
.more,.more a {
	color: #666;
}
.more:hover,.more a:hover {
	color: #333 !important;
}

.slidesjs-play,.slidesjs-stop{
	display: none !important;
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
		<div id="news">
			<div class="title-warp">
				<div class="menu-label">
					<div class="lb-zh">新闻</div>
					<div class="lb-en">News</div>
				</div>

				<div class="news-label-warp">
					<a class="news-label news-label-0 partner-label-selected" href="javascript:void(0);"></a>
					<a class="news-label news-label-1" href="javascript:void(0);"></a>
					<a class="news-label news-label-2" href="javascript:void(0);"></a>
					<a class="news-label news-label-3" href="javascript:void(0);"></a>
					<a class="news-label news-label-4" href="javascript:void(0);"></a>
				</div>
			</div>
			<div class="news-warp">
				<div class="news-block news-block-0 news-block-selected"></div>
				<div class="news-block news-block-1"></div>
				<div class="news-block news-block-2"></div>
				<div class="news-block news-block-3"></div>
				<div class="news-block news-block-4"></div>
			</div>


		</div>
		<div id="about">
			<div class="menu-label">
					<div class="lb-zh">关于强鹰</div>
					<div class="lb-en">About</div>
			</div>
			<div class="about-warp">
				“时代强鹰”源起于浙江大学的求是强鹰俱乐部，是中国最早推出创业导师和“浙商带徒”模式的公益平台，以“推动青年创新创业，引领青年正能量”作为组织使命，以“社会企业”作为组织发展模式，立足于创新创业青年人才培养、青年创业项目孵化服务、汇聚全球华人青年创业者，培养具有创新能力、富有创业精神和有较高综合素质的复合型人才，引领中国未来发展的青年健康力量。
“时代强鹰”目前在创业热土——中国杭州，正式注册“杭州创业发展促进会”，以民间社团的机制，开启全新的篇章。
			</div>
			<a class="more" style="width:140px;position: absolute; bottom: 18px;" href="index/about.jsp?id=1">>>more</a>
		</div>
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
				<div class="partner-line partner-line-0"></div>
				<div class="partner-line partner-line-1"></div>
				<div class="partner-line partner-line-2"></div>
				<div class="partner-line partner-line-3"></div>

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
				<div class="partner-line partner-line-0"></div>
				<div class="partner-line partner-line-1"></div>
				<div class="partner-line partner-line-2"></div>
				<div class="partner-line partner-line-3"></div>

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
				          active: true,
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




//news
	
		$.ajax({
				url:"news/get-top",
				type:"post",
				dataType:"json",
				success:function(data){

					$.each(data,function(i,item){
						//label
						$(".news-label-"+i).html(item.name);

						//news
						$.each(item.newslist,function(j,jtem){
							$(".news-block-"+i).append('<a class="" href = "index/news.jsp?id='+jtem.id+'">'+transTime(jtem.time)+' '+jtem.title+'</a>');
						});

						//more
						$(".news-block-"+i).append('<a class="more" style="width:600px;position: absolute; bottom: 10px;" href="index/newslist.jsp?type='+item.typeid+'">>>more</a>');

						//click

						$(".news-label-"+i).click(function(){

							$(".news-label").removeClass("new-label-selected");
							$(".news-label-"+i).addClass("new-label-selected");

							$(".news-block").removeClass("news-block-selected");
							$(".news-block-"+i).addClass("news-block-selected");
						});

					});	
				}
			});





















//合作伙伴




			$.ajax({
				url:"cooperation/get-top?type=会员",
				type:"post",
				dataType:"json",
				success:function(data){

					$.each(data,function(i,item){
						var t = Math.floor(i/5); 

						$(".partner-1 .partner-line-"+t).prepend('<div class="coo-warp">'+
																			'<a href="cooperation.jsp?id='+item.id+'">'+
																				'<div class="coo-name">'+item.name+'</div>'+
																				'<div class="coo-position">'+item.position+'</div>'+
																				'<div class="coo-headimg">'+
																					'<img src="'+item.headimg+'">'+
																				'</div>'+
																			'</a>'+
																		'</div>');


					});

				}
			});


			$('.partner-1').slidesjs({
				        width: 1000,
				        height: 250,
				       	navigation: false,
				       	pagination:false,
				        play: {
				          active: true,
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




			$.ajax({
				url:"cooperation/get-top?type=名誉学员",
				type:"post",
				dataType:"json",
				success:function(data){

					$.each(data,function(i,item){
						var t = Math.floor(i/5); 

						$(".partner-2 .partner-line-"+t).prepend('<div class="coo-warp">'+
																			'<a href="cooperation.jsp?id='+item.id+'">'+
																				'<div class="coo-name">'+item.name+'</div>'+
																				'<div class="coo-position">'+item.position+'</div>'+
																				'<div class="coo-headimg">'+
																					'<img src="'+item.headimg+'">'+
																				'</div>'+
																			'</a>'+
																		'</div>');


					});

				}
			});




				$('.partner-2').slidesjs({
				        width: 1000,
				        height: 250,
				       	navigation: false,
				       	pagination:false,
				        play: {
				          active: true,
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

				

//class="partner-1-label partner-label-selected"

				$(".partner-1-label").click(function(){
					$("#s3").show();
					$("#s4").hide();
					$("#s3 .slidesjs-play").click();
				});

				$(".partner-2-label").click(function(){
					$("#s4").show();
					$("#s3").hide();
					$("#s4 .slidesjs-play").click();
				});

				$(document).on("click","#s3 .slidesjs-navigation",function(){
					$("#s3 .slidesjs-play").click();
				});
				$(document).on("click","#s4 .slidesjs-navigation",function(){
					$("#s4 .slidesjs-play").click();
				});
				$(document).on("click","#s1 .slidesjs-pagination-item,.slidesjs-pagination-item a",function(){
					$("#s1 .slidesjs-play").click();
				});


//日期转换方法
(function($) {
    $.extend({
        myTime: {
            /**
             * 当前时间戳
             * @return <int>        unix时间戳(秒)  
             */
            CurTime: function(){
                return Date.parse(new Date())/1000;
            },
            /**              
             * 日期 转换为 Unix时间戳
             * @param <string> 2014-01-01 20:20:20  日期格式              
             * @return <int>        unix时间戳(秒)              
             */
            DateToUnix: function(string) {
                var f = string.split(' ', 2);
                var d = (f[0] ? f[0] : '').split('-', 3);
                var t = (f[1] ? f[1] : '').split(':', 3);
                return (new Date(
                        parseInt(d[0], 10) || null,
                        (parseInt(d[1], 10) || 1) - 1,
                        parseInt(d[2], 10) || null,
                        parseInt(t[0], 10) || null,
                        parseInt(t[1], 10) || null,
                        parseInt(t[2], 10) || null
                        )).getTime() / 1000;
            },
            /**              
             * 时间戳转换日期              
             * @param <int> unixTime    待时间戳(秒)              
             * @param <bool> isFull    返回完整时间(Y-m-d 或者 Y-m-d H:i:s)              
             * @param <int>  timeZone   时区              
             */
            UnixToDate: function(unixTime, isFull, timeZone) {
                if (typeof (timeZone) == 'number')
                {
                    unixTime = parseInt(unixTime) + parseInt(timeZone) * 60 * 60;
                }
                var time = new Date(unixTime * 1000);
                var ymdhis = "";
                ymdhis += time.getUTCFullYear() + "/";
                ymdhis += (time.getUTCMonth()+1) + "/";
                ymdhis += time.getUTCDate();
                if (isFull === true)
                {
                    ymdhis += " " + time.getUTCHours() + ":";
                    ymdhis += time.getUTCMinutes() + ":";
                    ymdhis += time.getUTCSeconds();
                }
                return ymdhis;
            }
        }
    });
})(jQuery);



/* alert($.myTime.UnixToDate(1442592000,true,8)); */

	function transTime(object,isFull){
		if (object!=null) {
			return $.myTime.UnixToDate(object/1000,isFull,8);
		}else{
			return "--";
		}
	}


	});
</script>
</body>
</html>