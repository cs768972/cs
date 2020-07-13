function _change() {
	$("#vCode").attr("src", "/goods/VerifyCodeServlet?" + new Date().getTime());
}
//定义一些公共的函数
//用来检验表单中输入的值得规范



function fun_input_check(id,tips,pid){
	//先从页面上获取到input的标签--DOM操作
	
	var _element = document.getElementById(id);
	//获取input的value
	var _value = _element.value;
	//判断value的长度==0，是否为空
	if(_value.length ==0){
	//提示到P标签中，错误的显示红色
		document.getElementById(pid).innerHTML=tips+"输入不能为空";
		document.getElementById(pid).style.color="red";
		return false;
	}//判断长度是否在6-10，不在当中提示：
	
	else if(_value.length<6 || _value.length>10){
		document.getElementById(pid).innerHTML=tips+"请输入长度为6-10的";
		document.getElementById(pid).style.color="red";
		return false;	
	}
	else {
		document.getElementById(pid).innerHTML=tips+"格式输入正确";
		document.getElementById(pid).style.color="green";
		return true;
	
	}
}

function fun_reg(){
	//表单验证
	//用户名验证
	var bool1 = fun_input_check("username","用户名","userTips");
	//密码1 验证
	var bool2 = fun_input_check("pwd1","密码","pwd1Tips");
	console.log(bool1,bool2);
	
	//用户名的格式
	var username = document.getElementById("username").value;
	//密码2 的格式+值验证
	var pwd1 = document.getElementById("pwd1").value;
	var pwd2 = document.getElementById("pwd2").value;
	//获取第一次和第二次输入的密码
	console.log(pwd1,pwd2);
	var flag = false;
	//var bool2 = fun_input_check("pwd2","密码","pwd1Tips");
	if(pwd2.length == 0 ){
		document.getElementById("pwd2Tips").innerHTML= "验证密码输入不能为空";
		document.getElementById("pwd2Tips").style.color="red";
		
	}
	else if(pwd2 !=pwd1 ){
		document.getElementById("pwd2Tips").innerHTML="两次密码不一致";
		document.getElementById("pwd2Tips").style.color="red";
	}
	else {
		document.getElementById("pwd2Tips").innerHTML="验证密码格式正确";
		document.getElementById("pwd2Tips").style.color="green";
		flag =  true;
	}
	
	
	//判断所有的验证是否通过
	if(bool1 && bool2 && flag){
	//从本地缓存中获取userArr
		var userArr = JSON.parse(localStorage.userArr37);
		console.log(userArr);
		
		//
		for(var i= 0 ; i<userArr.length; i++){
			if(userArr[i].username == username){
				break;
			}
		}
		if(i == userArr.length){
		//用户名不存在 --生成新用户，吧新用户放入用户数据中，存到本地缓存中	
			var new_user = new User(username,pwd1);
			console.log(new_user);
			userArr.push(new_user);
			console.log(new_user);
			localStorage.userArr37 = JSON.stringify(userArr);
			alert("注册成功");
		
		}else{
			alert("用户名已存在，请重新输入");
		}

	}
	else{
		alert("请完善表单信息");
	}
	//
	
	
}



function fun_log(){
	
	var bool1 = fun_input_check("username","用户名","userTips");
	//密码1 验证
	var bool2 = fun_input_check("pwd","密码","pwd1Tips");
	console.log(bool1,bool2);
	
	
	if(bool1 && bool2){
		//从本地缓存中获取userArr
		var userArr = JSON.parse(localStorage.userArr37);
		console.log(userArr);
			
		
		var username = document.getElementById("username").value;
		//密码2 的格式+值验证相等，密码相等 --登录成功
		var pwd = document.getElementById("pwd").value;
		//遍历用户数组判断用户名
		for	(var i= 0 ; i<userArr.length-1; i++){
			if(userArr[i].username == username && userArr[i].pwd == pwd){
					break;
		
			}
		}
		if(i == userArr.length-1){
			
			alert("登录成功");
		}else{
			alert("登录失败");
			//把当前用户的用户名存储
			localStorage.onLine37 = username;
			//页面跳转，js操作浏览器 ---DOM操作
			window.location.href= "index.html";
		}
		
	}
	
}
