<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/regist.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jsps/js/user/regist.js'/>"></script>
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
  <body style="background: #E1FFFF;background-image:url(/goods/images/67.jpg);">
  ${msg }
<%-- <div id="divMain">
  <div id="divTitle">
    <span id="spanTitle">新用户注册</span>
  </div>
  <div id="divBody">
<form action="<c:url value='/user/regist.do'/>" method="post" id="registForm">
    <table id="tableForm">
      <tr>
        <td class="tdText">用户名：</td>
        <td class="tdInput">
          <input class="inputClass" type="text" name="loginname" id="loginname" value="${form.loginname }"/>
        </td>
        <td class="tdError">
          <label class="errorClass" id="loginnameError">${errors.loginname }</label>
        </td>
      </tr>
      <tr>
        <td class="tdText">登录密码：</td>
        <td>
          <input class="inputClass" type="password" name="loginpass" id="loginpass" value="${form.loginpass }"/>
        </td>
        <td>
          <label class="errorClass" id="loginpassError">${errors.loginpass }</label>
        </td>
      </tr>
      <tr>
        <td class="tdText">确认密码：</td>
        <td>
          <input class="inputClass" type="password" name="reloginpass" id="reloginpass" value="${form.reloginpass }"/>
        </td>
        <td>
          <label class="errorClass" id="reloginpassError">${errors.reloginpass}</label>
        </td>
      </tr>
      <tr>
        <td class="tdText">Email：</td>
        <td>
          <input class="inputClass" type="text" name="email" id="email" value="${form.email }"/>
        </td>
        <td>
          <label class="errorClass" id="emailError">${errors.email}</label>
        </td>
      </tr>
      
      <tr>
        <td></td>
        <td>
          <input type="image" src="<c:url value='/images/regist1.jpg'/>" id="submitBtn"/>
        </td>
        <td>
          <label></label>
        </td>
      </tr>
    </table>
</form>    
  </div>
</div> --%>
 <div class="wel" id="background-3"></div>
<!--左右两边云-->
<div class="wel" id="box">
    <div class="box-1 lefp"></div>
    <div class="box-1">
        <div class="righp"></div>
    </div>
</div>
<!--荧光点点-->
<div class="wel" id="git"></div>
	<h1 style="text-align:center;margin-top:25px;color:white;">新用户注册</h1>
      <div class="box-2 le-2">
        <form  action="<c:url value='/UserServlet'/>" method="post" id="registForm">
            <div class="flrg-1">
                <h3>注册</h3>
                <div class="a">
                    <input class="inputClass" type="text" name="loginname" id="loginname" value="${form.loginname }" class="in-1" placeholder="您的用户名">
                </div>
                <div class="a">
                    <input class="inputClass" type="password" name="loginpass" id="loginpass" value="${form.loginpass }" class="in-1" placeholder="输入密码">
                </div>
                <div class="a">
                    <input class="inputClass" type="password" name="reloginpass" id="reloginpass" value="${form.reloginpass }" class="in-1" placeholder="再次确认密码">
                </div>
                <div class="a">
                    <input class="inputClass" type="text" name="email" id="email" value="${form.email }" class="in-1" placeholder="输入邮箱地址">
                </div>
                <div class="a">
                    <input type="image" src="<c:url value='/images/regist1.jpg'/>" id="submitBtn"/>
                </div>
            </div>
        </form>
    </div> 
<div class="footer">
			CopyRight@cs临风版权所有
		</div>
  </body>
</html>
