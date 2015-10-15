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



</style>
<%@include file="css.jsp"%>

</head>

<body>
<%@include file="head.jsp"%>
<div class="main">
	<div class="menu-warp">
		<div class="menu-label">
			<span class="lb-zh">关于强鹰</span><br>
			<span class="lb-en">About</span>
		</div>
		<div class="menu-item">
			<a href="index/about.jsp?id=1">时代强鹰</a>
		</div>
		<div class="menu-item">
			<a href="index/about.jsp?id=2">校园联盟</a>
		</div>
		<div class="menu-item">
			<a href="index/about.jsp?id=3">强鹰青年圈</a>
		</div>
		<div class="menu-item">
			<a href="index/about.jsp?id=4">强鹰孵化器</a>
		</div>
	</div>
	<div class="content-warp">
		<div class="content-title">
			<!-- js 添加-->
		</div>
		<div class="content-body">
			<div class="content-body-inner">
				<!-- ajax 添加-->
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

//获取地址栏参数 调用getUrlParam(name)方法
	
function getUrlParam(name) {
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if (r!=null) return unescape(r[2]); return null;
}
			
	var $id = getUrlParam("id");


	$.ajax({
            url:'about/get-one?id='+$id,
            type:'post',
            dataType:'json',
            success:function(data){
            		if (data.id==1) {
            			$(".content-title").remove();
            		}else if (data.id==2) {
            			$(".content-title").html("<span class='content-title-line'></span>"+data.title+"·浙江大学求是强鹰俱乐部");
            		}else{
            			$(".content-title").html("<span class='content-title-line'></span>"+data.title);
            		}
                	
                    $(".content-body-inner").html(data.content);
                }
           });


		
	
		

	});
</script>
</body>
</html>