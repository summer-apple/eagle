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
					<h1 class="title">招聘管理</h1>
					<p class="description">query edit or create  stores</p>
				</div>

				<div class="breadcrumb-env">

					<ol class="breadcrumb bc-1">
						<li><a href="dashboard/home"><i class="fa-home"></i>主页</a></li>
						<li class="active"><strong>查询招聘</strong></li>
					</ol>

				</div>

			</div>


<!--主体部分开始-->
			<div class="add-panel panel panel-default" style="display: none;">
						<div class="panel-heading">
							<h3 class="panel-title">新增招聘</h3>
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
									<label class="col-sm-2 control-label" for="link">类&nbsp;&nbsp;&nbsp;型</label>
									
									<script type="text/javascript">
										jQuery(document).ready(function($)
										{
											$("#type").selectBoxIt().on('open', function()
											{
												// Adding Custom Scrollbar
												$(this).data('selectBoxSelectBoxIt').list.perfectScrollbar();
											});
										});
									</script>
									<div class="col-sm-10">
										<select name="type" class="form-control" id="type" style="display: none;">
											<option value="强鹰学员">强鹰学员</option>
											<option value="名誉学员">名誉学员</option>
											<option value="强鹰专职">强鹰专职</option>
											<option value="实习生">实习生</option>
										</select>
									</div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-2 control-label">权&nbsp;&nbsp;&nbsp;重</label>
									
									<div class="col-sm-10">
										<input name="weight" type="number" min="0" max="10" class="form-control" id="weight" placeholder="1-10数字，越小越靠前，首页展示前五个">
									</div>
								</div>
								

								<div class="form-group">
									<label class="col-sm-2 control-label" for="content">概&nbsp;&nbsp;&nbsp;要</label>
									<div class="col-sm-10">
										<textarea name="brief" id="brief" class="form-control" placeholder="内容概要，150字以内"></textarea>
									</div>
									
								</div>

								<div class="form-group">
									<label class="col-sm-2 control-label" for="content">详&nbsp;&nbsp;&nbsp;情</label>
									<div class="col-sm-10">
										<textarea name="content" id="content" class="form-control ckeditor" rows="10">
											Here we go ~
										</textarea>
									</div>
									
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label" for="img">附&nbsp;&nbsp;&nbsp;件</label>
									
									<div class="col-sm-2">

										<input id="file_upload" type="file" name="upload" style="display:none;" />
										<div id="tip-queue" style="display:none;"></div>
										<input name="attachment" type="hidden" class="form-control" id="attachment">
										<h5>多附件请打包上传</h5>
									</div>
									<div class="col-sm-8 file-show">
										
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
<!--新增招聘表单结束-->

			<div class="panel panel-default">
				
				<div class="vspacer v3"></div>
				
				<div class="row">
					<div class="col-sm-8">
						<a href="javascript:void(0);" class="open-panel btn btn-primary btn-single btn-sm">新建招聘</a>
						<h5>主页展示权重排名前五项的新闻类型</h5>
					</div>
					<div class="col-sm-4">
						
	
						<form class="form-inline" id="qry-form" action="" method="post">
							<div class="row">
							<div class="form-group col-sm-12">
									
									<script type="text/javascript">
										jQuery(document).ready(function($)
										{
											$("#qry-type").selectBoxIt().on('open', function()
											{
												// Adding Custom Scrollbar
												$(this).data('selectBoxSelectBoxIt').list.perfectScrollbar();
											});
										});
									</script>
									<div class="col-sm-12">
										<select name="type" class="form-control" id="qry-type" style="display: none;">
											<option value="强鹰学员">强鹰学员</option>
											<option value="名誉学员">名誉学员</option>
											<option value="强鹰专职">强鹰专职</option>
											<option value="实习生">实习生</option>
										</select>
									</div>
								</div>
							<div class="form-group"> 
								<input id="pageNo" name="pageNo" class="form-control" type="hidden" value="0" placeholder="页码">
							</div>
							<div class="form-group"> 
								<input id="pageSize" name="pageSize" class="form-control" type="hidden" value="10" placeholder="每页招聘数">
							</div>

							<div class="form-group"> 
								<input id="amount" name="amount" class="form-control" type="hidden" placeholder="总页数">
							</div>
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
												<th>类型</th>
												<th>标题</th>
												<th>权重</th>
												<th>简介</th>
												<th>附件</th>
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

	<link rel="stylesheet" href="resources/js/select2/select2.css">
	<link rel="stylesheet" href="resources/js/select2/select2-bootstrap.css">

	<%@ include file="script.jsp" %>
	<script type="text/javascript" src="resources/js/jquery.pagination.js"></script>
	<script src="resources/js/jquery.uploadifive.js"></script>
	<script src="resources/js/ckeditor/ckeditor.js"></script>
	<script src="resources/js/ckeditor/adapters/jquery.js"></script>

	<script src="resources/js/select2/select2.min.js"></script>
	<script src="resources/js/jquery-ui/jquery-ui.min.js"></script>
	<script src="resources/js/selectboxit/jquery.selectBoxIt.min.js"></script>
	<script src="resources/js/multiselect/js/jquery.multi-select.js"></script>

	<script type="text/javascript">
	$().ready(function(){
//变更类型时刷新
$("#qry-type").change(function(){
	qry();
		initpage($("#amount").val());
});


//首次进入时刷新
		qry();
		initpage($("#amount").val());



//查询方法
		function qry(){
            $.ajax({
                url:'job/qry',
                data: {'pageNo':$('#pageNo').val(),'pageSize':$('#pageSize').val(),'type':$("#qry-type").val()},
                type:'post',
                dataType:'json',
                success:function(data){
                    $("#qry-table tbody").empty();
                	$.each(data.list, function(i, item) {
                		 $("#qry-table tbody").append(
                		'<tr class="job-'+item.id+'">'+
						'	<td class="job-id">'+item.id+'</td>'+
						'	<td class="job-type">'+item.type+'</td>'+
						'	<td class="job-title">'+item.title+'</td>'+
						'	<td class="job-weight">'+item.weight+'</td>'+
						'	<td class="job-brief" style="max-width:400px;">'+item.brief+'</a></td>'+
						'	<td class="job-attachment">'+attachment(item.attachment+'</td>'+
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

//附件方法

	function attachment(attachment){
		if (attachment!=null) {
			return '<a href="'+attachment+'">'+attachment+'</a>';
		}else{
			return "";
		}
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
								
								brief: {
									required: true,
									maxlength:150
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

								brief: {
									required: '必填项目',
									maxlength:'最多150个汉字'
								}
							},
							
							// Form Processing via AJAX
							submitHandler: function(form)
							{
								var $url ='';

								if ($("#id").val()==0) {
									$url ='job/add';
								}else{
									$url ='job/update';
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
					                    	$(".file-show").html("");
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
                url:'job/del?id='+id,
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
		$(".add-panel .panel-title").html("新增招聘");
		$("#add-btn").show();
		$("#update-btn").hide();
		$(".add-panel").show();
	});

//编辑
	window.edit = function(id){
		$("#add-form")[0].reset();
		$(".add-panel .panel-title").html("更新招聘");
		
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
  	        'uploadScript' : 'util/upload-file', //处理上传文件Action路径 
  	        'fileObjName'  : 'file',        //文件对象
	        'buttonText'   : '选择文件',   //按钮显示文字 
	        'queueID'      : 'tip-queue', //drug and drop box's ID 
	        //'fileType'     : 'image/jpg,image/jpeg,image/png',   //允许上传文件类型 
	        'fileSizeLimit'   : '20MB',                  // Maximum allowed size of files to upload
	        'formData'     : {"folder":"attachment"},//The other data want to send
	        'queueSizeLimit'  : 100,                  //The maximum number of files in drup and drop box 
            'simUploadLimit'  : 100,                  // The maximum number of files to upload at once
            'uploadLimit'     : 100,                  // The maximum number of files you can upload
	        'onUploadComplete' : function(file, data) { //文件上传成功后执行 
	        	
	        	var $obj = $.parseJSON($.parseJSON(data)); 
	        	

	        	$(".file-show").html('<h5 class="file-name">'+$obj.name+'  <a class="remove-file" href="javascript:void(0);"><span class="fa fa-close" style="color:#000;"></span></a></h5>');
	        	$("#attachment").val($obj.url);
					}

				});

	$(".file-show").on("click",".remove-file",function(){
		$(".file-show").html("");
		$("#attachment").val("");
	});

	</script>
</body>
</html>