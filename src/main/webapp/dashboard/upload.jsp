<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-1.11.1.min.js"></script>
<script src="resources/js/jquery.uploadifive.js"></script>

<script type="text/javascript">
    $(function(){
  	  $('#file_upload').uploadifive({
  			'width'           : 100,                 // The width of the button
  			'height'          : 30,                 // The height of the button
  	        'auto' : true,   //取消自动上传 
  	        'uploadScript' : 'image/upload', //处理上传文件Action路径 
  	        'fileObjName'  : 'image',        //文件对象
	        'buttonText'   : '选择文件',   //按钮显示文字 
	        'queueID'      : 'tip-queue', //drug and drop box's ID 
	        'fileType'     : 'image/jpg,image/jpeg,image/png',   //允许上传文件类型 
	        'fileSizeLimit'   : '2MB',                  // Maximum allowed size of files to upload
	        'formData'     : {"folder":"news"},//The other data want to send
	        'queueSizeLimit'  : 100,                  //The maximum number of files in drup and drop box 
            'simUploadLimit'  : 10,                  // The maximum number of files to upload at once
            'uploadLimit'     : 100,                  // The maximum number of files you can upload
	        'onUploadComplete' : function(file, data) { //文件上传成功后执行 
	        	$("body").append("<img src="+data+">");
					}
				});
	})
</script>
</head>
<body>

	<input id="file_upload" type="file" name="upload" />
	<div id="tip-queue" style="display:none;"></div>



</body>
</html>