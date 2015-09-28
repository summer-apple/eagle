<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>





<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Xenon Boostrap Admin Panel" />
<meta name="author" content="" />

<title>Villa - Dashboard</title>

<%@ include file="css.jsp" %>
<style type="text/css">
	#uploadifive-file_upload{
		background-color: #000;
		color: #FFF;
	}
</style>


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body class="page-body">

	

	<div class="page-container">
		<!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->

		<%@ include file="side-bar.jsp"%>
		<div class="main-content">

			<%@ include file="top-bar.jsp"%>

			<div class="page-title">

			<div class="title-env">
					<h1 class="title">轮播管理</h1>
					<p class="description">query edit or create  stores</p>
				</div>

				<div class="breadcrumb-env">

					<ol class="breadcrumb bc-1">
						<li><a href="dashboard/home"><i class="fa-home"></i>主页</a></li>
						<li class="active"><strong>查询轮播</strong></li>
					</ol>

				</div>

			</div>


<!--主体部分开始-->
			<div class="add-panel panel panel-default" style="display: none;">
						<div class="panel-heading">
							<h3 class="panel-title">新增轮播</h3>
							<div class="panel-options">
								<a href="#" data-toggle="panel">
									<span class="collapse-icon">–</span>
									<span class="expand-icon">+</span>
								</a>
								<a href="javascript:void(0);" class="close-panel">
									×
								</a>
							</div>
						</div>
						<div class="panel-body">
							
							<form id="add-form" role="form" class="form-horizontal" action="" method="post">
								
								<input name="id" type="hidden" id="id">

								<div class="form-group">
									<label class="col-sm-2 control-label" for="title">标&nbsp;&nbsp;&nbsp;题</label>
									
									<div class="col-sm-10">
										<input name="title" type="text" class="form-control" id="title" placeholder="标题,20字以内">
									</div>
								</div>
								

								
								<div class="form-group">
									<label class="col-sm-2 control-label" for="link">链&nbsp;&nbsp;&nbsp;接</label>
									
									<div class="col-sm-10">
										<input name="link" type="text" class="form-control" id="link" placeholder="连接-如：http://www.baidu.com">
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label">权&nbsp;&nbsp;&nbsp;重</label>
									
									<div class="col-sm-10">
										<input name="weight" type="number" min="0" max="10" class="form-control" id="weight" placeholder="1-10数字，越小越靠前，首页展示前五个">
									</div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-2 control-label" for="img">图&nbsp;&nbsp;&nbsp;片</label>
									
									<div class="col-sm-2">

										<input id="file_upload" type="file" name="upload" style="display:none;" />
										<div id="tip-queue" style="display:none;"></div>
										<input name="img" type="hidden" class="form-control" id="img">
									</div>
									<div class="col-sm-8 img-show">
										
									</div>
								</div>

								
								
								<div class="form-group">
									<div class="col-sm-6">
									</div>
									<div class="col-sm-2">
										<button id="add-btn" type="submit" class="btn btn-primary btn-single btn-sm">保 存</button>
										<button id="update-btn" type="submit" class="btn btn-primary btn-single btn-sm">更 新</button>
									</div>
								</div>
								
								
							</form>
							
						</div>
					</div>
<!--新增轮播表单结束-->

			<div class="panel panel-default">
				
				<div class="vspacer v3"></div>
				
				<div class="row">
					<div class="col-sm-10">
						<a href="javascript:void(0);" class="open-panel btn btn-primary btn-single btn-sm">新建轮播</a>
						<h5>主页展示权重排名前五项的新闻类型</h5>
					</div>

					<div class="col-sm-2">
						

						<form class="form-inline" id="qry-form" action="" method="post">
							
							<div class="form-group"> 
								<input id="pageNo" name="pageNo" class="form-control" type="hidden" value="0" placeholder="页码">
							</div>
							<div class="form-group"> 
								<input id="pageSize" name="pageSize" class="form-control" type="hidden" value="10" placeholder="每页轮播数">
							</div>

							<div class="form-group"> 
								<input id="amount" name="amount" class="form-control" type="hidden" placeholder="总页数">
							</div>
							
						</form>
 
					</div>
				
				</div>

				<div class="vspacer v3"></div>
				
				<div class="row">
					<div class="col-sm-12">
						<table id="qry-table" class="table table-bordered table-striped table-condensed table-hover">
										<thead>
											<tr>
												<th>ID</th>
												<th>标题</th>
												<th>权重</th>
												<th>链接</th>
												<th>图片</th>
												<th>操作</th>
											</tr>
										</thead>
										
										<tbody>
											
										</tbody>
						</table>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="pagination"></div>
					</div>				
				</div>
				

			</div>

<!--主体部分结束-->
			<!-- Main Footer -->
			<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
			<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
			<!-- Or class "fixed" to  always fix the footer to the end of page -->
			<%@ include file="footer.jsp"%>
		</div>

		

	</div>


	<div class="page-loading-overlay">
		<div class="loader-2"></div>
	</div>


	<%@ include file="script.jsp" %>
	<script type="text/javascript" src="resources/js/jquery.pagination.js"></script>
	<script src="resources/js/jquery.uploadifive.js"></script>
	<script type="text/javascript">
	$().ready(function(){
//首次进入时刷新
		qry();
		initpage($("#amount").val());

//查询方法
		function qry(){
            $.ajax({
                url:'slide/qry',
                data: {'pageNo':$('#pageNo').val(),'pageSize':$('#pageSize').val()},
                type:'post',
                dataType:'json',
                success:function(data){
                    $("#qry-table tbody").empty();
                	$.each(data.list, function(i, item) {
                		 $("#qry-table tbody").append(
                		'<tr class="slide-'+item.id+'">'+
						'	<td class="slide-id">'+item.id+'</td>'+
						'	<td class="slide-title">'+item.title+'</td>'+
						'	<td class="slide-weight">'+item.weight+'</td>'+
						'	<td class="slide-link"><a href="'+item.link+'">'+item.link+'</a></td>'+
						'	<td class="slide-img"><a href="'+item.img+'"><img src="'+item.img+'" style="width:50px;"></a></td>'+
						'	<td style="min-width:115px;"><a class="edit-btn btn btn-primary btn-single btn-sm" onclick="edit('+item.id+')">编辑</a><a class="btn btn-primary btn-single btn-sm" onclick=del('+item.id+')>删除</a></td>'+
						'</tr>'
                		 );

                		 $("#amount").val(data.amount);
                  	});
                }
            });
            
            
		}

//页码方法

	function initpage(amount){
		$(".pagination").pagination(amount, { 
						  prev_text: '&laquo;', 
						  next_text: '&raquo;',
						  ellipse_text:"...", 
						  items_per_page: 1, 
						  num_display_entries: 6, 
						  current_page: 0, 
						  num_edge_entries: 2,
						  link_to:"javascript:void(0);"
							
					});
	}

		

//点击页码查询

		window.page = function(no){
			$("#pageNo").val(no);
			 qry();
			 initpage($("#amount").val());
		}
		
//添加
	$("#add-form").validate({
							rules: {
								title: {
									required: true,
									maxlength:20
								},
								
								weight: {
									required: true,
									number:true,
									max:10,
									min:0
								},
								
								link: {
									url:true,
									required: true
								},
								
								img: {
									required: true
								}
							},
							
							messages: {
								title: {
									required: '必填项目',	
									maxlength:'最多20个汉字'
								},
								
								weight: {
									required: '必填项目',
									number:'必须为非负整数',
									max:'最大值为10',
									min:'最小值为0'
								},
								
								link: {
									url:'请填写正确的url格式：http://www.baidu.com',
									required: '必填项目'
								},
								
								img: {
									required: '必填项目'
								}
							},
							
							// Form Processing via AJAX
							submitHandler: function(form)
							{
								var $url ='';

								if ($("#id").val()==0) {
									$url ='slide/add';
								}else{
									$url ='slide/update';
								}

								$("#add-form").ajaxSubmit({
					                url:$url,
					                type:'post',
					                dataType:'json',
					                success:function(data){
					                    if (data!=0) {
					                    	alert("保存成功...");
					                    	$("#add-form")[0].reset();
					                    	$("#id").val(0);
					                    	$(".img-show").html("");
					                    	qry();
					                    	initpage($("#amount").val());
					                    	$(".add-panel").hide();
					                    }else{
					                    	alert("保存出错...");
					                    	qry();
					                    	initpage($("#amount").val());
					                    };
					                }
					            });
							}
						});
//删除

	window.del = function(id){
		$.ajax({
                url:'slide/del?id='+id,
                type:'post',
                dataType:'json',
                success:function(data){
                	if (data==true) {
                    	alert("删除成功...");
                   		qry();
                   		initpage($("#amount").val());
                    }else{
                    	alert("无法删除...");

                    }
                   
                }
            });
	}

//关闭新增商店面板
	$(".close-panel").click(function(){
		$(".add-panel").hide();
	});
//打开新增商店面板
	$(".open-panel").click(function(){
		$("#add-form")[0].reset();
		$(".add-panel .panel-title").html("新增轮播");
		$("#add-btn").show();
		$("#update-btn").hide();
		$(".add-panel").show();
	});

//编辑
	window.edit = function(id){
		$("#add-form")[0].reset();
		$(".add-panel .panel-title").html("更新轮播");
		
		$("#add-btn").hide();
		$("#update-btn").show();

		var item = $(".slide-"+id);
		$("#id").val(id);
		$("#title").val(item.find(".slide-title").html());
		$("#weight").val(item.find(".slide-weight").html());
		$("#img").val(item.find(".slide-img a img").attr("src"));
		$("#link").val(item.find(".slide-link a").html());
		$(".img-show").html('<img src="'+item.find(".slide-img a img").attr("src")+'" style="width:100%;">');
		
		$(".add-panel").show();
	}//333


//更新

	$("#update-btn").click(function(){
			var params = $("#add-form").serializeArray();
            var j = {};
            for (var item in params) {
                j[params[item].name] = params[item].value;
            }
            $.ajax({
                url:'store/updateStore',
                data: {data:JSON.stringify(j)},
                type:'post',
                dataType:'json',
                success:function(data){
                    if (data==true) {
                    	alert("更新成功...");
                    	qry();
                    }else{
                    	alert("更新失败...");
                    	qry();
                    }
                }
            });
		});

	});

//添加图片

 	  $("#select-img-btn").click(function(){
    	  $("#uploadifive-file_upload").click();
          });
  	  $('#file_upload').uploadifive({
  			'width'           : 75,                 // The width of the button
  			'height'          : 30,                 // The height of the button
  	        'auto' : true,   //取消自动上传 
  	        'uploadScript' : 'util/upload-image', //处理上传文件Action路径 
  	        'fileObjName'  : 'image',        //文件对象
	        'buttonText'   : '选择文件',   //按钮显示文字 
	        'queueID'      : 'tip-queue', //drug and drop box's ID 
	        'fileType'     : 'image/jpg,image/jpeg,image/png',   //允许上传文件类型 
	        'fileSizeLimit'   : '2MB',                  // Maximum allowed size of files to upload
	        'formData'     : {"folder":"slide"},//The other data want to send
	        'queueSizeLimit'  : 100,                  //The maximum number of files in drup and drop box 
            'simUploadLimit'  : 100,                  // The maximum number of files to upload at once
            'uploadLimit'     : 100,                  // The maximum number of files you can upload
	        'onUploadComplete' : function(file, data) { //文件上传成功后执行 
	        	
	        	var url = $.parseJSON(data); 
	        	
	        	$(".img-show").html('<img src='+url+' style="width:100%;">');
	        	$("#img").val(url);
					}

				});
	</script>
</body>
</html>