<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	<link href="${pageContext.request.contextPath}/css/style.css" type=text/css rel=stylesheet>
	<link href="${pageContext.request.contextPath}/css/style1.css" type=text/css rel=stylesheet>
	<link href="${pageContext.request.contextPath}/css/boot-crm.css" type=text/css rel=stylesheet>
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
    <style>
        * { margin: 0; padding: 0; }
        html { height: 100%; }
        body { height: 100%; background: #fff url(images2/backgroud3.jpg) 50% 50% no-repeat; background-size: cover;}
        .dowebok { position: absolute; left: 50%; top: 50%; width: 430px; height: 550px; margin: -300px 0 0 -215px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
        .logo { width: 104px; height: 104px; margin: 50px auto 80px; background: url(images2/login.png) 0 0 no-repeat; }
        .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
        .form-item input { letter-spacing:1px;width: 288px; height: 48px; padding-left: 55px; border: 1px solid #fff; border-radius: 25px; font-size: 20px; color: #191970; background-color:	#E1FFFF; outline: none;}
        .form-item button { width: 360px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
        #usercode { background: url(images2/emil.png) 20px 14px no-repeat; }
        #password { background: url(images2/password.png) 23px 11px no-repeat; }
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
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/images2/backgroud4.jpg">
<div class="dowebok">
 		
        <form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
		
        <div class="logo"></div>
        
        <div class="form-item" style="margin:0 auto; width:250px;" >
        
            <input id="usercode" type="text" name="usercode" autocomplete="off" placeholder="请输入用户名">
            <p class="tip">请输入合法的用户名</p>
        </div>
        <div class="form-item" style="margin:0 auto; width:250px;" >
            <input id="password" type="password" name="password" autocomplete="off" placeholder="请输入密码">
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
</div>
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>

<script type="text/javascript">
function clearUser(){
	$("#new_usercode").val("");
	$("#new_password").val("");
	$("#new_username").val("");
}
function createUser(){
	
	$.post("<%=basePath%>registuser.action",
			$("#new_user_form").serialize(),function(data){
				
				if(data =="OK"){
					alert("用户注册成功");
					window.location.reload();
				}else{
					alert("用户注册成功");
					window.location.reload();
				}
			});
							
		}
</script>
<div class="modal fade" id="newUserDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">请输入注册信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_user_form">
					<div class="form-group">
						<label for="new_usercode" class="col-sm-2 control-label">
						    客户昵称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_usercode" placeholder="客户昵称" name="user_code" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_username" class="col-sm-2 control-label">客户名称</label>
						<div class="col-sm-10"> 
							<input type="text" class="form-control" id="new_username" placeholder="客户名称" name="user_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_password" class="col-sm-2 control-label">客户密码</label> 
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_password" placeholder="客户密码" name="user_password" />
						</div>
					</div>
					
				</form>			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createUser()">注册客户</button>
			</div>
		</div>
	</div>				
</div>
 <div class="footer">
			CopyRight@cs临风版权所有
		</div>
</body>
</html> 

 
  
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	<link href="${pageContext.request.contextPath}/css/style.css" type=text/css rel=stylesheet>
	<link href="${pageContext.request.contextPath}/css/boot-crm.css" type=text/css rel=stylesheet>
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/images2/backgroud4.jpg">
<div ALIGN="center">
<table border="0" width="1140px" cellspacing="0" cellpadding="0"
                                                           id="table1">
	<tr>
		<td height="93"></td>
		<td></td>
	</tr>
	<tr>
   <td background="${pageContext.request.contextPath}"
		width="740" height="412">
   </td>
   <td class="login_msg" width="400" align="center">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <fieldset style="width: auto; margin: 0px auto;">
		  <legend>
		     <font style="font-size:15px" face="宋体">
		          欢迎使用Tea客户管理系统
		     </font>
		  </legend> 
		<font color="red">
			 提示信息
			 <span id="message">${msg}</span>
		</font>
		 提交后的位置：/WEB-INF/jsp/customer.jsp
		<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
          账&nbsp;号：<input id="usercode" type="text" name="usercode" />
          <br /><br />
          密&nbsp;码：<input id="password" type="password" name="password" />
          <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input class="btn btn-primary btn-lg" data-toggle="modal"  type="submit" value="登录" />
		  <input class="btn btn-primary btn-lg" data-toggle="modal" data-target="#newUserDialog"  type="button" value="注册" />      
		
		 </form>
	 </fieldset>
	</td>
	</tr>
</table>
</div>

<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>

<script type="text/javascript">
function clearUser(){
	$("#new_user_code").val("");
	$("#new_user_name").val("");
	$("#new_user_password").val("");
}
function createUser(){
	
	$.post("<%=basePath%>registuser.action",
			$("#new_user_form").serialize(),function(data){
		if(data == "OK"){
			alert("用户注册成功");
			window.location.reload();
		}else{
			alert("用户注册成功");
			window.location.reload();
		}
	});
		
			
			
}
$("#form").validator(
        {
            custom: {
                exist: function($el) {
                    var flag=false;
                    $.ajax({
                        async:false,//改为同步
                        type: "GET",
                        url: url,
                        data: {user_code:$el.val()},
                        dataType: "json",
                        success: function (result) {
                            if(result.code == 200 && result.rows.length>0){
                                flag=true;
                            }\ 
                        }
                    });
                    if(flag){
                        return "用户名已存在";
                    }
 
                }
 
            }
        }
    )
</script>
<div class="modal fade" id="newUserDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">请输入注册信息</h4>
			</div>
			<div class="modal-body">
				<form action="${pageContext.request.contextPath }/registuser.action" method="post" class="form-horizontal" id="new_user_form">
					<div class="form-group">
						<label for="new_user_code" class="col-sm-2 control-label">
						    客户昵称
						</label>
						<div class="col-sm-10">
							<input  type="text" class="form-control" id="new_user_code" placeholder="客户昵称" name="user_code" />
							<span style="font-family: Arial, Helvetica, sans-serif;data-exist:user_code;"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_name" class="col-sm-2 control-label">客户名称</label>
						<div class="col-sm-10"> 
							<input  type="text" class="form-control" id="new_user_name" placeholder="客户名称" name="user_name" />
							<!-- <span style="font-family: Arial, Helvetica, sans-serif;">data-exist="user_name"</span> -->
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_password" class="col-sm-2 control-label">客户密码</label> 
						<div class="col-sm-10">
							<input   type="text" class="form-control" id="new_user_password" placeholder="客户密码" name="user_password" />
							<!-- <span style="font-family: Arial, Helvetica, sans-serif;">data-exist="user_passwod"</span> -->
						</div>
					</div>
					
				</form>			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createUser()">注册客户</button>
			</div>
		</div>
	</div>				
</div> 
</body>
</html>  --%>
