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
	<style type="text/css">

.menu-warp{
	width: 250px;
	height: auto;
	float: left;
	margin-top: 20px;
}
.menu-label{
	width: 210px;
	height: 45px;
	background-color: #09C;
	padding-right: 15px;
	text-align: right;
	margin-bottom: 45px;
}
.menu-item {
    width: 210px;
    height: 45px;
    line-height: 45px;
    text-align: center;
    background-color: #E4E4E4;
    margin-bottom: 5px;
}
.menu-item a{
	display:block;
	width:100%;
	height:100%;
	background-color: #E4E4E4;
}
.menu-item a:hover{
	display:block;
	width:100%;
	height:100%;
	background-color: #A1A0A0;
	color: #FFF;
}
.menu-item-selected a{
	background-color: #A1A1A1;
	color: #FFF;
}
.menu-label .lb-zh{
	color: #FFF;
	font-size:15px;
	text-align: right;
	line-height: 27px;
}
.menu-label .lb-en{
	color: #DDD;
	text-align: right;
}

.content-warp{
	width: 950px;
	height: auto;
	float: left;
	text-align: left;
	color: #888;
	margin-bottom: 80px;
}
.content-warp a{
	color: #888;
}
.content-title{
	height: 60px;
	width: 97%;
	font-size: 17px;
	line-height: 65px;
	text-align: left;
	border-bottom: 1px dashed #999;
}
.content-title-line{
	border-left:4px solid #09C;
	height: 50px; 
	margin-right:5px;

}
.content-body{
	height: auto;
}
.result-warp{
	height: 100px;
	width: 97%;
	padding-top: 10px;
	padding-bottom: 10px;
	border-bottom: 1px dashed #999;
	clear: both;
}
.result-title{
	height: 35px;
	line-height: 30px;
	font-size: 17px;
}
.result-title a {
	color: #09C;
}
.result-title span{
	font-size: 20px;
}
.result-content{
	font-size: 15px;
}


</style>
<%@include file="css.jsp"%>

</head>

<body>
<%@include file="head.jsp"%>
<div class="main">
	<div class="menu-warp">
		<div class="menu-label">
			<span class="lb-zh">加入强鹰</span><br>
			<span class="lb-en">Join</span>
		</div>
		<div class="menu-item">
			<a href="index/joblist.jsp?type=1">名誉学员</a>
		</div>
		<div class="menu-item">
			<a href="index/joblist.jsp?type=2">强鹰学员</a>
		</div>
		<div class="menu-item">
			<a href="index/joblist.jsp?type=3">强鹰专职</a>
		</div>
		<div class="menu-item">
			<a href="index/joblist.jsp?type=4">强鹰实习生</a>
		</div>
	</div>
	<div class="content-warp">
		<div class="content-title">
			<!-- js 添加-->
		</div>
		<div class="content-body">
			<!-- ajax 添加-->
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

//获取地址栏参数 调用getUrlParam(name)方法
	
function getUrlParam(name) {
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if (r!=null) return unescape(r[2]); return null;
}
			
	var $type = getUrlParam("type");
	var $typeValue = "";
	if ($type==1) {
		$typeValue = "名誉学员";
	}else if ($type==2) {
		$typeValue = "强鹰学员";
	}
	else if ($type==3) {
		$typeValue = "强鹰专职";
	}
	else if ($type==4) {
		$typeValue = "强鹰实习生";
	}


	$(".content-title").html("<span class='content-title-line'></span>"+$typeValue+"招聘");
	qry(true);

//查询方法
		function qry(initPageFlag){
            $.ajax({
                url:'job/qry',
                data: {'pageNo':$('#pageNo').val(),'pageSize':$('#pageSize').val(),'type':$typeValue},
                type:'post',
                dataType:'json',
                success:function(data){
                    $(".content-body").empty();
                    
                   
                    $.each(data.list, function(i, item) {
			
                		var $str = '<div class="result-warp">'+
									'<div class="result-title"><a href="index/job.jsp?id='+item.id+'"><span class="fa fa-caret-right"></span><strong>'+item.title+'</strong></a></div>'+
									'<div class="result-content"><a href="index/news?id='+item.id+'">'+item.brief+'</a></div></div>'


                		 $(".content-body").append($str);

	                	if(initPageFlag){
	                		$(".pagination").pagination(data.amount, { 
							  prev_text: '&laquo;', 
							  next_text: '&raquo;',
							  ellipse_text:"...", 
							  items_per_page: 1, 
							  num_display_entries: 6, 
							  current_page: 0, 
							  num_edge_entries: 2,
							  link_to:"javascript:void(0);",
							  callback:pageSelectCallback,
							  callback:pageSelectCallback
								
							});
	                	}

                		
                  		});
 
                }
            });
            
            
		}


//点击页码查询

		function pageSelectCallback(current_page, aa){
			$("#pageNo").val(current_page+1);
			 qry(false);
		}
		
	
		

	});
</script>
</body>
</html>