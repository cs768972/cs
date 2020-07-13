<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/style1.css'/>">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body 
{
		background: #E1FFFF;
		margin: 0;
		padding:0;
		color: 	#00FF00;
		background-image:url(/goods/book_img/66.jpg);
		
}
.button {
 /*  display: inline-block; */
  border-radius: 4px;
  background-color:		#AFEEEE;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 20px;
  width: 150px;
  height:45px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 25px auto auto 0;
  float:left;
  display:inline-block;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.top{
margin:50px auto auto 5;
display:inline-block;
color:white;

}
</style>
  </head>
  
  <body>
    <!-- <div class="wel" id="background-3"></div>
左右两边云
<div class="wel" id="box">
    <div class="box-1 lefp"></div>
    <div class="box-1">
        <div class="righp"></div>
    </div>
</div>-->
<!-- 荧光点点 -->
<div class="wel" id="git"></div>
<h3 style="text-align: center;margin:5px 500px auto auto;font-size:30px;display:inline-block;float:right;">茶之道商城欢迎您</h3>
<div style="font-size: 10pt; line-height: 10px;">

<%-- 根据用户是否登录，显示不同的链接 --%>
<!-- <ul> -->
<c:choose>

	<c:when test="${empty sessionScope.sessionUser }">
		
	<a   href=" <c:url value='/jsps/user/login.jsp'/>"  target="_parent">
		<button class="button" style="vertical-align:middle" <c:url value='/jsps/user/login.jsp'/>><span>会员登录 </span></button>
	</a>
	<a  href=" <c:url value='/jsps/user/regist.jsp'/>"  target="_parent">
		<button class="button" style="vertical-align:middle" <c:url value='/jsps/user/regist.jsp'/>><span>会员注册 </span></button>
	</a>
	</c:when>

	<c:otherwise>
	<div class="top">
		   <a  class="active" href="#home" target="_parent">会员：${sessionScope.sessionUser.loginname }&nbsp;&nbsp;|&nbsp;&nbsp;</a>
		   <a href="<c:url value='/CartItemServlet?method=myCart'/>" target="body">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		   <a href="<c:url value='/order/findAllOrder.do'/>" target="body">我的订单</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		   <a href="<c:url value='/jsps/user/pwd.jsp'/>" target="body">修改密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		   <a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">退出</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		   <a href="http://www.itcast.cn/channel/contact.shtml" target="_top">联系我们</a>	
	</div>
	</c:otherwise>

</c:choose>


</div>
  </body>
</html>
