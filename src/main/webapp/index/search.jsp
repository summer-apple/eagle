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
.content-body{
	height: auto;
}
.key-word{
	color: #F00;
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
			<span class="lb-zh">搜索结果</span><br>
			<span class="lb-en">Result</span>
		</div>
	</div>
	<div class="content-warp">
		<div class="content-title">
			搜索关键字“<span class="key-word">${key}</span>”，一共有<span class="result-count">0</span>个结果。
		</div>
		<div class="content-body">
			
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
		<input id="search-key" name="key" type="hidden" value="${key}">
		<input id="pageNo" name="pageNo" type="hidden" value="0">
		<input id="pageSize" name="pageSize" type="hidden" value="10">
		<input id="amount" name="amount" type="hidden">
	</form>
</div>

<%@include file="foot.jsp"%>
<%@include file="script.jsp"%>
<script type="text/javascript" src="resources/js/jquery.textSearch-1.0.js"></script>
<script type="text/javascript" src="resources/js/jquery.pagination.js"></script>
<script type="text/javascript">
$().ready(function(){
		
qry(true);

//查询方法
		function qry(initPageFlag){

	

            $.ajax({
                url:'news/search',
                data: {'pageNo':$('#pageNo').val(),'pageSize':$('#pageSize').val(),'key':$(".key-word").html()},
                type:'post',
                dataType:'json',
                success:function(data){
                    $(".content-body").empty();
                    
                    if (data.resultcount==0) {
                    	$(".content-title").html("对不起，没有搜做到\"<span class='key-word'>"+data.key+"</span>\"相关的内容");
                    }else{
                    	$.each(data.list, function(i, item) {

                		var $str = '<div class="result-warp">'+
									'<div class="result-title"><strong><a href="index/news.jsp?id='+item.id+'">'+item.title+'</a></strong></div>'+
									'<div class="result-content"><a href="index/news.jsp?id='+item.id+'">'+item.brief+'</a></div></div>'


                		 $(".content-body").append($str);
                		
                  		});

                  		 $("#amount").val(data.amount);
                		 $(".result-count").html(data.resultcount);

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
							  callback:pageSelectCallback
								
							});
	                	}

						$(".result-warp").textSearch($(".key-word").html());
                    }//end else
                	

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