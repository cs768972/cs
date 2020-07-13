<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>组合查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
table {
		color: #404040;
		font-size: 10pt;
		margin:70px auto 0 25;
		display:inline-block;
		text-align:center;
		border:3px solid black;
	}
.gj{
	width:320px;
	height:270px;
	background:	transparent;
	margin:35px auto ;
	}
	table,p{
	border:3px solid black;
	background:lightorange;
	display:inline-block;
	text-align:center;
	}
	table,tr,td{
	border:3px solid black;
	background:lightgreen;
	}
</style>
  </head>
  
  <body style="background-image:url(/goods/images/70.jpg);">
  <form action="<c:url value='/BookServlet'/>" method="get">
  	<input type="hidden" name="method" value="findByCombination"/>
  	<h1 style="color:green;font-size:35px;margin:35px 0;text-align:center;">欢迎进入高级搜索模式</h1>
<div class="gj">
<table align="center">
	<tr>
		<td>茶名：</td>
		<td><input type="text" name="bname" placeholder="请输入茶名"/></td>
	</tr>
	<tr>
		<td>当前价格：</td>
		<td><input type="text" name="currPrice" placeholder="请输入当前价格"/></td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td>
		<p>
			<input type="submit" value="搜　　索"/>
			<input type="reset" value="重新填写"/>
		</p>
		</td>
	</tr>

</table>
</div>
	</form>
  </body>
</html>
