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



</style>
<%@include file="css.jsp"%>

</head>

<body>
<%@include file="head.jsp"%>
<div class="main">
	<div class="menu-warp">
		<div class="menu-label">
			<span class="lb-zh">强鹰动态</span><br>
			<span class="lb-en">News</span>
		</div>



	</div>
	<div class="content-warp">
		<div class="content-title">
			<!-- js 添加-->
		</div>
		<div class="news-time"></div>
		<div class="content-body">
			<div class="content-body-inner">
				<!-- ajax 添加-->
			</div>
			<div class="prev-next">
				<div class="pn-prev">上一篇：</div>
				<div class="pn-next">下一篇：</div>
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
<script type="text/javascript" src="resources/js/jquery.pagination.js"></script>
<script type="text/javascript">
$().ready(function(){


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
                ymdhis += time.getUTCFullYear() + "-";
                ymdhis += (time.getUTCMonth()+1) + "-";
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

//获取地址栏参数 调用getUrlParam(name)方法

function getUrlParam(name) {
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if (r!=null) return unescape(r[2]); return null;
}

	var $id = getUrlParam("id");

//获取类型
	    $.ajax({
                url:'newstype/qry',
                type:'post',
                dataType:'json',
                success:function(data){
                $.each(data, function(i, item){
                		var $str = '<div class="menu-item"><a href="index/newslist.jsp?type='+item.id+'" title="'+item.id+'">'+item.name+'</a></div>';
                		$(".menu-warp").append($str);
                  	});
                }
            });
//获取新闻
$.ajax({
            url:'news/get-one?id='+$id,
            type:'post',
            dataType:'json',
            success:function(data){

            		$(".menu-item a[title="+data.type+"]").parent().addClass("menu-item-selected");


                	$(".content-title").html("<span class='content-title-line'></span>"+data.title);
                	$(".news-time").html(transTime(data.time,false));
                    $(".content-body-inner").html(data.content);

                    //查询上一篇下一篇

                    if (data.preTitle!=null) {
						$(".pn-prev").append('<a href="'+data.preUrl+'">【'+data.typeValue+'】 '+data.preTitle+'</a>');
                    }else{
                    	$(".pn-prev").append('已经是第一篇');
                    }

                    if (data.nextTitle!=null) {
                    	$(".pn-next").append('<a href="'+data.nextUrl+'">【'+data.typeValue+'】 '+data.nextTitle+'</a>');
                    }else{
                    	$(".pn-next").append('已经是最后一篇');
                    }

                }
           });








	});
</script>
<link rel="stylesheet" type="text/css" href="resources/css/font.css">
</body>
</html>
