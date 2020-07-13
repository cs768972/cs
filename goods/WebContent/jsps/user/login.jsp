<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/login.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jsps/js/user/login.js'/>"></script>
	<script src="<c:url value='/js/common.js'/>"></script>
<style type="text/css">
	.loginBtn :hover {border: 0px; width: 92px; height: 27px;}
</style>
<script type="text/javascript">
	$(function() {/*Map<String(Cookie名称),Cookie(Cookie本身)>*/
		// 获取cookie中的用户名
		var loginname = window.decodeURI("${cookie.loginname.value}");
		if("${requestScope.user.loginname}") {
			loginname = "${requestScope.user.loginname}";
		}
		$("#loginname").val(loginname);
	});
</script>
<style type="text/css">
        * { margin: 0; padding: 0; }
        html { height: 100%; }
        body { height: 100%; background: #fff url(/goods/images/backgroud3.jpg) 50% 50% no-repeat; background-size: cover;}
        .dowebok { position: absolute; left: 50%; top: 50%; width: 430px; height: 550px; margin: -300px 0 0 -215px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
        .logo { width: 104px; height: 104px; margin: 50px auto 80px; background: url(/goods/images/login.png) 0 0 no-repeat; }
        .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
        .form-item input { letter-spacing:1px;width: 288px; height: 48px; padding-left: 55px; border: 1px solid #fff; border-radius: 25px; font-size: 20px; color:black; background-color:	#E1FFFF; outline: none;}
        .form-item button { width: 360px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
        #usercode { background-image: url(/goods/images/emil.png) 20px 14px no-repeat; }
        #password { background-image: url(/goods/images/password.png) 23px 11px no-repeat; }
        .tip { display: none; position: absolute; left: 20px; top: 52px; font-size: 14px; color: #f50; }
        .reg-bar { width: 360px; margin: 20px auto 0; font-size: 14px; overflow: hidden;}
        .reg-bar a { color: #fff; text-decoration: none; }
        .reg-bar a:hover { text-decoration: underline; }
        .reg-bar .reg { float: left; }
        .reg-bar .forget { float: right; }
        .dowebok ::-webkit-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok ::-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-ms-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}

        @media screen and (max-width: 500px) {
            * { box-sizing: border-box; }
            .dowebok { position: static; width: auto; height: auto; margin: 0 30px; border: 0; border-radius: 0; }
            .logo { margin: 50px auto; }
            .form-item { width: auto; }
            .form-item input, .form-item button, .reg-bar { width: 100%; }
            
}
 h1{
text-align:center;
 margin-top:25px;
 color:white;
        }
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
  </head>
  <p style="position:absolute;font-size:20px;color:#0000FF;bottom:5px;right:10px;">
   此刻的时间是: <%= (new java.util.Date()).toLocaleString()%>
</p>
<!-- 左右两边云 -->
<div class="wel" id="box">
    <div class="box-1 lefp"></div>
    <div class="box-1">
        <div class="righp"></div>
    </div>
</div>
<!--荧光点点-->
<div class="wel" id="git"></div>
  <body background="${pageContext.request.contextPath}/goods/images/backgroud4.jpg">

	
	<div class="dowebok">
	<h1 >会员登录</h1>
 		<form target="_top" action="<c:url value='/user/login.do'/>" method="post" id="loginForm" onsubmit="return check()">
   <%--      <form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()"> --%>
		
        <div class="logo"></div>
        
        <div class="form-item" style="margin:0 auto; width:250px;" >
        
        <input class="input" id="loginname" type="text" name="loginname" autocomplete="off" placeholder="请输入用户名">
            <p class="tip">请输入合法的用户名</p>
        </div>
        <div class="form-item" style="margin:0 auto; width:250px;" >
            <input class="input" type="password" name="password" id="loginpass" autocomplete="off" value="${user.loginpass }" placeholder="请输入密码">
            <p class="tip">用户名或密码不正确</p>
        </div>
        <font color="red" >
			 提示信息
			 <span id="message">${msg}</span>
		</font>
		
        <div class="form-item" style="margin:0 auto;width:250px;height: 40px;height-line:40;font-size:20px;">
	        
	        <input class="btn btn-primary btn-lg" data-toggle="modal"    value="登录"  />
	         </br>

		</div>
        </form>
        <div class="reg-bar">
            <a class="reg" href="javascript:">立即注册</a>
            <a class="forget" href="javascript:">忘记密码</a>
        </div>
</div>

<%-- 	<div class="main">
	  <div><img src="<c:url value=''/>" /></div>
	  <div>
	    <div class="imageDiv"><img class="img" src="<c:url value='/images/zj.png'/>"/></div>
        <div class="login1">
	      <div class="login2">
            <div class="loginTopDiv">
              <span class="loginTop">会员登录</span>
              <span>
                <a href="<c:url value='/jsps/user/regist.jsp'/>" class="registBtn"></a>
              </span>
            </div>
            <div>
              <form target="_top" action="<c:url value='/user/login.do'/>" method="post" id="loginForm">
                  <table>
                    <tr>
                      <td width="50"></td>
                      <td><label class="error" id="msg">${msg }</label></td>
                    </tr>
                    <tr>
                      <td width="50">用户名</td>
                      <td><input class="input" type="text" name="loginname" id="loginname"/></td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td><label id="loginnameError" class="error"></label></td>
                    </tr>
                    <tr>
                      <td>密　码</td>
                      <td><input class="input" type="password" name="password" id="loginpass" value="${user.loginpass }"/></td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td><label id="loginpassError" class="error"></label></td>
                    </tr>  																				
                 </table>
              </form>
            </div>
          </div>
        </div>
      </div>
	</div> --%>
	<%-- <tr>
                      <td>&nbsp;</td>
                      <td align="left">
                        <input type="image" id="submit" src="<c:url value='/images/login1.jpg'/>" class="loginBtn"/>
                      </td>
                    </tr> --%>
      <div class="footer">
			CopyRight@cs临风版权所有
		</div>
  </body>
</html>
	