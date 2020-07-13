<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>茶叶商城</title>
  <link href="resources/css/style.css" rel="stylesheet">
 <link href="resources/css/layui.css" rel="stylesheet">
<link href="resources/css/admin.css" rel="stylesheet">
<link href="resources/css/pro.css" rel="stylesheet">
<link href="resources/css/login.css" rel="stylesheet">  
<script src="resources/js/jquery.min.js" type="text/javascript"></script> 
<script src="resources/js/layui.js" type="text/javascript"></script>   
<link href="${pageContext.request.contextPath}/css/style.css" type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css/style1.css" type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css/boot-crm.css" type=text/css rel=stylesheet>
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />	
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />	
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />	
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
 

</head>

   <!--  <style>
        * { margin: 0; padding: 0; }
        html { height: 100%; }
        body { height: 100%; background: #fff url(./upload/backgroud3.jpg) 50% 50% no-repeat; background-size: cover;}
        .dowebok { position: absolute; left: 50%; top: 50%; width: 430px; height: 550px; margin: -300px 0 0 -215px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
        .logo { width: 104px; height: 104px; margin: 50px auto 80px; background: url(./upload/login.png) 0 0 no-repeat; }
        .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
        .form-item input { letter-spacing:1px;width: 288px; height: 48px; padding-left: 55px; border: 1px solid #fff; border-radius: 25px; font-size: 20px; color: #2F4F4F; background-color:	#E1FFFF; outline: none;}
        .form-item button { width: 360px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
        #usercode { background: url(./upload/emil.png) 20px 14px no-repeat; }
        #password { background: url(./upload/password.png) 23px 11px no-repeat; }
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
</style>   -->

<body   style= "background-image: url(./upload/67.jpg);">
	<!--导航栏部分-->
	   <jsp:include page="userview/include/header.jsp" />   

	<!-- 中间内容 -->
 	  <div class="container-fluid">
	<form id="loginForm">
		<div class="layadmin-user-login layadmin-user-display-show" style="padding-bottom:0px;padding-top:50px;height:250px;"
			id="LAY-user-login">
			<div class="layadmin-user-login-main" style="height:200px;">
				<div class="layadmin-user-login-box layadmin-user-login-header">
					<h2>用户登录</h2>
				</div>
				<div
					class="layadmin-user-login-box layadmin-user-login-body layui-form" style="height:100px;">
					<div class="layui-form-item">
						<label
							class="layadmin-user-login-icon layui-icon layui-icon-username"
							for="LAY-user-login-username"></label> <input type="text"
							name="userName" id="userName"
							lay-verify="required" placeholder="用户名"
							class="layui-input layui-form-danger">
					</div>
					<div class="layui-form-item">
						<label
							class="layadmin-user-login-icon layui-icon layui-icon-password"
							for="LAY-user-login-password"></label> <input type="userPass"
							name="userPass" id="userPass"
							lay-verify="required" placeholder="密码" class="layui-input">
					</div>
					<div class="layui-form-item">
						<button class="layui-btn layui-btn-fluid" type="button" lay-submit=""
							lay-filter="loginSubmit">登 入</button>
					</div>
				</div>
			</div>
		</div>
		</form>
	</div>   
	 <%--  <div class="dowebok">
 		
        <form action="${pageContext.request.contextPath }/login" 
			                       method="post" onsubmit="return check()">
		
        <div class="logo"></div>
        
        <div class="form-item" style="margin:0 auto; width:250px;" >
        
            <input id="userName" type="text" name="userName" autocomplete="off" placeholder="请输入用户名">
            <p class="tip">请输入合法的用户名</p>
        </div>
        <div class="form-item" style="margin:0 auto; width:250px;" >
            <input id="userPass" type="userPass" name="userPass" autocomplete="off" placeholder="请输入密码">
            <p class="tip">用户名或密码不正确</p>
        </div>
        <font color="red" >
			 提示信息
			 <span id="message">${msg}</span>
		</font>
		
        <div class="form-item" style="margin:0 auto;width:250px;height: 40px;height-line:40;font-size:20px;">
	        
	        <input class="btn btn-primary btn-lg" data-toggle="modal"  type="submit" value="登录"  />
	         </br>
	        </br>
	      <input class="btn btn-primary btn-lg" data-toggle="modal" data-target="#newUserDialog"  type="button" value="注册"  />  
        	
		</div>
        </form>
	</div>   --%>
	<!--尾部-->
<%-- <script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
	<jsp:include page="userview/include/foot.jsp" /> --%>
<!--  <script type="text/javascript">
function check(){
    var userName = $("#userName").val();
    var userPass = $("#userPass").val();
    if(userName=="" || userPass==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
<script type="text/javascript">
	function clearUser(){
	$("#new_userName").val("");
	$("#new_userPass").val("");
}
</script>   -->
 	  <script type="text/javascript">
		layui.use(['form','layer'], function() {
			var form = layui.form;
			var layer=layui.layer;
			form.on('submit(loginSubmit)',function(){
				$.ajax({
					type:"post",
					url:"user/login",
					data:$("#loginForm").serialize(),
					success:function(data){
						if(data=="success"){
							layer.msg("登陆成功！",{icon:1,anim:2,time:2000},function(){
								window.location.href="index";
							});
						}else{
							layer.msg("登陆失败！请检查用户名和密码后重试！",{icon:5,anim:6,time:1000} );
						}
					}
				});
			});
		});
	</script>    
</body>
</html>