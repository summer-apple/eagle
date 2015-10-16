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
.school-warp{
	display: none;
}
.school-warp ul {
    float: left;
    margin: 75px;
    text-align: center;
}

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
		<div class="school-warp">
			<div class="content-title">
				<span class='content-title-line'></span>校园联盟·合作高校
			</div>
			<ul class="u1">
				
			<li><strong>浙江（共12所）</strong></li>
				<li>杭州电子科技大学</li>
				<li>宁波诺丁汉大学</li>
				<li>浙江大学</li>
				<li>浙江大学城市学院</li>
				<li>浙江工商大学</li>
				<li>浙江工业大学</li>
				<li>浙江万里学院</li>
				<li>中国计量学院</li>
				<li>宁波大学科技学院</li>
				<li>浙江传媒学院</li>
				<li>宁波大学</li>
				<li>浙江理工大学</li>
			</ul>
			<ul class="u2">
			<li><strong>西北（共14所）</strong></li>
				<li>西安交通大学</li>
				<li>西安外国语大学</li>
				<li>西北工业大学</li>
				<li>西北农林科技大学</li>
				<li>陕西科技大学</li>
				<li>西北大学</li>
				<li>西安欧亚学院</li>
				<li>长安大学</li>
				<li>陕西师范大学</li>
				<li>西北民族大学</li>
				<li>兰州商学院</li>
				<li>西安理工大学</li>
				<li>西北师范大学</li>
				<li>兰州大学</li>
			</ul>
			<ul class="u3">
			<li><strong>华南（共26所）</strong></li>
				<li>北京理工大学珠海学院</li>
				<li>北京师范大学-香港浸会大学联合国际学院</li>
				<li>北京师范大学珠海分校</li>
				<li>福州大学</li>
				<li>广东白云学院</li>
				<li>广东工业大学</li>
				<li>广东金融学院</li>
			</ul>
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
            			$(".content-title:eq(0)").remove();
            		}else if (data.id==2) {
            			$(".content-title:eq(0)").html("<span class='content-title-line'></span>"+data.title+"·浙江大学求是强鹰俱乐部");
            		}else{
            			$(".content-title:eq(0)").html("<span class='content-title-line'></span>"+data.title);
            		}
                	
                    $(".content-body-inner").html(data.content);

                    if (data.id==2) {
                    	$(".school-warp").show();
                    }
                }
           });


		
	
		

	});
</script>
</body>
</html>