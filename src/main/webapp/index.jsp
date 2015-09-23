<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="resources/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $(":button").click(function () {
                if ($("#file1").val().length > 0) {
                    ajaxFileUpload();
                }
                else {
                    alert("请选择图片");
                }
            })
        })
        function ajaxFileUpload() {
            $.ajaxFileUpload
            (
                {
                    url: 'image/upload', //用于文件上传的服务器端请求地址
                    secureuri: false, //一般设置为false
                    fileElementId: 'file1', //文件上传空间的id属性  <input type="file" id="file" name="file" />
                    dataType: 'json', //返回值类型 一般设置为json
                    success: function (data){
                        alert(data);
                        $("#img1").attr("src", data);
                    }
                }
            )
            return false;
        }
    </script>
</head>
<body>
    <p><input type="file" id="file1" name="image" /></p>
    <input type="button" value="上传" />
    <p><img id="img1" alt="上传成功啦" src="" /></p>
</body>
</html>