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
			<span class="lb-zh">加入强鹰</span><br>
			<span class="lb-en">Join</span>
		</div>
		<div class="menu-item">
			<a href="index/job.jsp?id=1">名誉学员</a>
		</div>
		<div class="menu-item">
			<a href="index/job.jsp?id=2">强鹰学员</a>
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
			<div class="content-body-inner">
				<!-- ajax 添加-->
			</div>
		</div>
		<div class="attachment"></div>
		<div class="row send-email">
			<div class="col-sm-12"><span class="fa fa-caret-right"></span>如果您对以上岗位感兴趣，请发送您的简历到eliteeagle@163.com</div>
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
            url:'job/get-one?id='+$id,
            type:'post',
            dataType:'json',
            success:function(data){
                	$(".content-title").html("<span class='content-title-line'></span>"+data.type+"招聘");
                    $(".content-body-inner").html(data.content);
                    $(".content-body").append("附件："+attachment(data.attachment));
                }
           });

	//附件方法
	function attachment(attachment){
		if (attachment!=null) {
			return '<a class="attachment-link" href="'+attachment+'">'+attachment.substring(attachment.lastIndexOf("/")+1,attachment.lenght)+'</a>';
		}else{
			return "";
		}
	}


		

	});
</script>
</body>
</html>