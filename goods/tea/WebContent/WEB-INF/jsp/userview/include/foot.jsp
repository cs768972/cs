<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>茶叶商城</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <script src="resources/js/bootstrap.min.js"></script>
</head>
<style>
.footer{
height:40px; 
line-height:40px;  
position:fixed; 
bottom:0;
left:0;
width:100%;
text-align:center;
background-color:#E1FFFF;
font-family:Arial;
font-size:20px; 
letter-spacing:1px;
color:green;
}
</style>
<body>
   
    <hr/>
   <div class="footer">
      	Copyright©cs临风版权所有|消费者维权热线：130****5628 经营证照
        <br/>
        	茶叶商城
	</div>
    
    

</body>
</html>