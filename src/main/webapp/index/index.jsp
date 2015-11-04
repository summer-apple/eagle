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
    line-height: 10px;
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

#s2>div:not(.bottom-border-warp) {
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
    height: 45px;
    color: #666;
    text-align: center;
    line-height: 45px;
    margin-bottom: 10px;
    background-color: #DDD;
    font-size: 14px;
}
.news-label-selected{
	color: #FFF !important;
	background-color: #A1A1A1 !important;	
}
.news-label:hover{
	color: #FFF !important;
    background-color: #A1A1A1 !important;
}
.news-warp {
    width: 640px;
    float: left;
    height: 420px;
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
    font-size: 15px;
    line-height: 30px;
    color: #666;
    text-indent: 15px;
    font-weight: normal;
    
}
.news-block a:not(.more):hover {
	color: #09C !important;
	font-weight: bold;
}
.news-block-selected{
	display: block !important;
	z-index: 999;
}
span.fa.fa-thumb-tack {
    transform: rotate(30deg);
    -ms-transform: rotate(30deg);
    -moz-transform: rotate(30deg);
    -webkit-transform: rotate(30deg);
    -o-transform: rotate(30deg);
    padding-right: 10px;
    color: #F00 !important;
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
#cooblock{
	position: relative;
	width: 1200px;
    height: 300px;
}
#s3,#s4{
	height: 300px;
	position: absolute;
	top: 0;
	left: 0;
}
#s3{
	z-index: 200;
}
#s4{
	z-index: 100;
	/*display: none;*/
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
	height: 45px;
	color: #666;
	text-align: center;
	line-height: 45px;
	margin-bottom: 10px;
	background-color: #DDD;
	font-size: 14px;
}
.partner-label a:hover,.partner-label-selected{
	color: #FFF !important;
	background-color: #A1A1A1 !important;
}
.partner-warp {
    width: 1000px; 
    float: left;
    height: 300px;
    position: relative;
}
.partner-warp .unslider-arrow{
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
.partner-warp .prev{
	left: 12px;
}
.partner-warp .next{
	right: 40px;
}

.partner-hide{
	display: none !important;
}
.partner{
	width: 1000px;
	height: 250px !important;
	position: relative; 
	overflow: auto;
}
.partner li { list-style: none; }
.partner ul li { float: left; }
.coo-warp {
    width: 160px;
    height: 220px;
    float: left;
    margin-left: 27px;
    margin-bottom: 10px;
    margin-top: 20px;
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



.bottom-border-warp{
	height: 3px;
	width: 100%;
}
.bottom-border{
	height: 3px;
	background-color: #AFAFAF;
	float: left;
}
.label-bottom-border{
	width: 180px;
}
#s1 .content-bottom-border,#s3 .content-bottom-border,#s4 .content-bottom-border{
	width: 1000px;
    margin-left: 20px;
}
#s2 .content-bottom-border{
	width: 640px;
	margin-left: 20px;
}
#s2 .about-bottom-border{
	width: 340px;
	margin-left: 20px;
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
		<div class="bottom-border-warp">
			<div class="bottom-border label-bottom-border"></div>
			<div class="bottom-border content-bottom-border"></div>
		</div>
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
					<!--ajax-->
				</div>
			</div>
			<div class="news-warp">
				<!--ajax-->
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
		<div class="bottom-border-warp">
			<div class="bottom-border label-bottom-border"></div>
			<div class="bottom-border content-bottom-border"></div>
			<div class="bottom-border about-bottom-border"></div>
			
		</div>
	</section>
	<div style="line-height:0; margin:0; padding:0; height:0; font-size:0; clear:both;"></div>
	<div  id="cooblock">
	<section id="s3">

		<div class="label-warp">
			<div class="menu-label">
				<div class="lb-zh">合作伙伴</div>
				<div class="lb-en">Partners</div>
			</div>
			<div class="partner-label">
				<a id="partner-1-label" class="partner-1-label partner-label-selected" href="javascript:void(0);">会 员</a>
				<a id="partner-2-label" class="partner-2-label" href="javascript:void(0);">名誉学员</a>
			</div>
		</div>
		<div class="partner-warp">
			<div class="partner">
				<ul>
				</ul>
              	<a href="javascript:void(0);" class="unslider-arrow prev"><i class="fa fa-chevron-left"></i></a>
				<a href="javascript:void(0);" class="unslider-arrow next"><i class="fa fa-chevron-right"></i></a>
			</div>
			<div class="more"><a href="index/coolist.jsp?type=1"> >>more </a></div>
		</div>
		<div class="bottom-border-warp">
			<div class="bottom-border label-bottom-border"></div>
			<div class="bottom-border content-bottom-border"></div>
		</div>
	</section>

	<section id="s4">

		<div class="label-warp">
			<div class="menu-label">
				<div class="lb-zh">合作伙伴</div>
				<div class="lb-en">Partners</div>
			</div>
			<div class="partner-label">
				<a id="partner-1-label" class="partner-1-label" href="javascript:void(0);">会 员</a>
				<a id="partner-2-label" class="partner-2-label partner-label-selected" href="javascript:void(0);">名誉学员</a>
			</div>
		</div>
		<div class="partner-warp">
			<div class="partner">
				<ul>
				</ul>
              	<a href="javascript:void(0);" class="unslider-arrow prev"><i class="fa fa-chevron-left"></i></a>
				<a href="javascript:void(0);" class="unslider-arrow next"><i class="fa fa-chevron-right"></i></a>
			</div>
			<div class="more"><a href="index/coolist.jsp?type=2"> >>more </a></div>
		</div>
		<div class="bottom-border-warp">
			<div class="bottom-border label-bottom-border"></div>
			<div class="bottom-border content-bottom-border"></div>
		</div>
	</section> 
	</div>







	<div style="line-height:0; margin:0; padding:0; height:0; font-size:0; clear:both;"></div>
</div>
<%@include file="foot.jsp"%>
<%@include file="script.jsp"%>
<script type="text/javascript" src="resources/js/jquery.slides.min.js"></script>
<script type="text/javascript" src="resources/js/unslider.min.js"></script>
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
				          interval: 4000,
				          swap: false
				        },
				        effect:{
				        	slide:{
				        		speed:3000
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
						$(".news-label-warp").append('<a class="news-label news-label-'+i+'" href="javascript:void(0);">'+item.name+'</a>');
				
						//news-block
						$(".news-warp").append('<div class="news-block news-block-'+i+'"></div>');

						//add selected class
						if (i==0) {
							$(".news-label-0").addClass("news-label-selected");
							$(".news-block-0").addClass("news-block-selected");
						}

						//news
						$.each(item.newslist,function(j,jtem){
							var $str ;

							if(jtem.weight==0){
								$str = '<a class="" href = "index/news.jsp?id='+jtem.id+'"><span class="fa fa-thumb-tack"></span> '+transTime(jtem.time)+' '+jtem.title+'</a>';
							}else{
								$str = '<a class="" href = "index/news.jsp?id='+jtem.id+'"><span style="display:block; width:39px; height:10px; float:left;"></span> '+transTime(jtem.time)+' '+jtem.title+'</a>';
							}

							$(".news-block-"+i).append($str);
						});

						//more
						$(".news-block-"+i).append('<a class="more" style="width:600px;position: absolute; bottom: 10px;" href="index/newslist.jsp?type='+item.typeid+'">>>more</a>');

						//click

						$(".news-label-"+i).click(function(){

							$(".news-label").removeClass("news-label-selected");
							$(".news-label-"+i).addClass("news-label-selected");

							$(".news-block").removeClass("news-block-selected");
							$(".news-block-"+i).addClass("news-block-selected");
						});

					});	
				}
			});




















//合作伙伴

				getCooperation("会员");
				getCooperation("名誉学员");

				$("#s4 #partner-1-label").click(function(){
					$("#s4").css("z-index","100");
					$("#s3").css("z-index","200");
					
					//$(".partner").css("height","250px !important");
		
				});

				$("#s3 #partner-2-label").click(function(){
					$("#s3").css("z-index","100");
					$("#s4").css("z-index","200");
					//$(".partner").css("height","250px !important");
					
					
				});
				




			function getCooperation(type){

					var $partner;
						if (type=="名誉学员") {
							$partner = $("#s4 .partner");
						}else{
							$partner = $("#s3 .partner");
						}


					$.ajax({
					url:"cooperation/get-top?type="+type,
					type:"post",
					dataType:"json",
					success:function(data){
						var a = 0;
						$.each(data,function(i,item){
							var t = Math.floor(i/5); 

							if (t==a) {
								$partner.find("ul").append('<li class="partner-line partner-line-'+t+'"></li>');
								a++;
							}

							$partner.find(".partner-line-"+t).append('<div class="coo-warp">'+
																				'<a href="index/cooperation.jsp?id='+item.id+'">'+
																					'<div class="coo-name">'+item.name+'</div>'+
																					'<div class="coo-position">'+item.position+'</div>'+
																					'<div class="coo-headimg">'+
																						'<img src="'+item.headimg+'">'+
																					'</div>'+
																				'</a>'+
																			'</div>');


						});

						var unslider = $partner.unslider({
												speed: 1500,               //  The speed to animate each slide (in milliseconds)
												delay: 3000,				//  The delay between slide animations (in milliseconds)
												init: 0,             
												complete: function() {},  //  A function that gets called after every slide animation
												keys: true,               //  Enable keyboard (left, right) arrow shortcuts
												dots: false,               //  Display dot navigation
												fluid: false,              //  Support responsive design. May break non-responsive designs

											});


					    $('.unslider-arrow').click(function() {
					        var fn = this.className.split(' ')[1];

					        //  Either do unslider.data('unslider').next() or .prev() depending on the className
					        unslider.data('unslider')[fn]();
					    });

					}
				});
			}	

			


			






				
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