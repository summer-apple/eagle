<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>





<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Xenon Boostrap Admin Panel" />
<meta name="author" content="" />

<title>Eagle - Dashboard</title>

<%@ include file="css.jsp"%>
<style type="text/css">
#uploadifive-file_upload, #uploadifive-content_upload {
	background-color: #000;
	color: #FFF;
}
</style>




</head>
<body class="page-body">



	<div class="page-container">

		<%@ include file="side-bar.jsp"%>
		<div class="main-content">

			<%@ include file="top-bar.jsp"%>

			<div class="page-title">

				<div class="title-env">
					<h1 class="title">关于管理</h1>
					<p class="description">edit about</p>
				</div>

				<div class="breadcrumb-env">

					<ol class="breadcrumb bc-1">
						<li><a href="dashboard/home"><i class="fa-home"></i>主页</a></li>
						<li class="active"><strong>查询关于</strong></li>
					</ol>

				</div>

			</div>


			<!--主体部分开始-->
			<div class="add-panel panel panel-default">
				<div class="row">

					
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
										<select name="type" class="form-control" id="qry-type"
											style="display: none;">
											<option value="1">时代强鹰</option>
											<option value="2">校园联盟</option>
											<option value="3">青年园</option>
											<option value="4">强鹰孵化器</option>
										</select>
									</div>
								</div>

							</div>
						</form>

					</div>
					<div class="col-sm-8"></div>

				</div>

				<div class="panel-body">

					<form id="add-form" role="form" class="form-horizontal" action=""
						method="post">

						<input name="id" type="hidden" id="id"> <input
							name="title" type="hidden" id="title">


						<div class="form-group">
							<label class="col-sm-2 control-label" for="content">详&nbsp;&nbsp;&nbsp;情</label>
							<div class="col-sm-10">
								<div style="width:600px;margin:20px auto 40px;">
							        <script type="text/plain" id="editor" style="width:100%;height:360px;"></script>
							    </div>

							</div>

						</div>



						<div class="form-group">
							<div class="col-sm-6"></div>
							<div class="col-sm-2">
								<button id="add-btn" type="submit"
									class="btn btn-primary btn-single btn-sm">更 新</button>
							</div>
						</div>


					</form>

				</div>
			</div>
			<!--新增关于表单结束-->


			<!--主体部分结束-->
			<%@ include file="footer.jsp"%>
		</div>



	</div>


	<div class="page-loading-overlay">
		<div class="loader-2"></div>
	</div>

	<link rel="stylesheet" href="resources/js/select2/select2.css">
	<link rel="stylesheet"
		href="resources/js/select2/select2-bootstrap.css">

	<%@ include file="script.jsp"%>
	
	<script src="resources/js/select2/select2.min.js"></script>
	<script src="resources/js/jquery-ui/jquery-ui.min.js"></script>
	<script src="resources/js/selectboxit/jquery.selectBoxIt.min.js"></script>
	<script src="resources/js/multiselect/js/jquery.multi-select.js"></script>



	<link type="text/css" href="resources/js/umeditor/themes/default/css/umeditor.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="resources/js/umeditor/umeditor.config.js"></script>
    <script type="text/javascript" src="resources/js/umeditor/umeditor.min.js"></script>
	<script type="text/javascript">
	$().ready(function(){



      var um = UM.getEditor('editor');
//载入时
		edit();

//类型改变时
		$("#qry-type").change(function(){
			edit();
		});

//编辑
		function edit(){
			var id = $('#qry-type').val();
			$.ajax({
		                url:'about/get-one?id='+id,
		                type:'post',
		                dataType:'json',
		                success:function(data){
		                	$("#id").val(data.id);
		                	$("#title").val(data.title);
		                	$("#content").val(data.content);
		                	$("#typeSelectBoxItText").attr("data-val",data.id).html(data.title);
		                }
		            });
		}
		





				});
	</script>
</body>
</html>