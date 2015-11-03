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
span.fa.fa-thumb-tack {
    transform: rotate(30deg);
    -ms-transform: rotate(30deg);
    -moz-transform: rotate(30deg);
    -webkit-transform: rotate(30deg);
    -o-transform: rotate(30deg);
    padding-right: 10px;
    font-size: 16px;
}


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

                $(".menu-item a[title="+$type+"]").parent().addClass("menu-item-selected");
                $typeValue = $(".menu-item a[title="+$type+"]").html();
				$(".content-title").html("<span class='content-title-line'></span>"+$typeValue);
				qry(true);
                }
            });






//查询方法
		function qry(initPageFlag){
            $.ajax({
                url:'news/qry',
                data: {'pageNo':$('#pageNo').val(),'pageSize':$('#pageSize').val(),'type':$type},
                type:'post',
                dataType:'json',
                success:function(data){
                    $(".content-body").empty();
                    
                   
                    $.each(data.list, function(i, item) {
			
                		var $str = '<div class="result-warp">'+
                					'<div class="result-headimg"><img src="'+item.headimg+'"></div>'+
									'<div class="result-title"><a href="index/news.jsp?id='+item.id+'"></span><strong>';

						if (item.weight==0) {
							$str = $str +'<span class="fa fa-thumb-tack"></span>'+' '+item.title+'</strong></a></div>'+
									'<div class="result-content"><a href="index/news.jsp?id='+item.id+'">'+item.brief+'</a></div></div>';
						}else{
							$str = $str +' ' + item.title+'</strong></a></div>'+
									'<div class="result-content"><a href="index/news.jsp?id='+item.id+'">'+item.brief+'</a></div></div>';
						}


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