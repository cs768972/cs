//声明用户类
function User(username,pwd){

	this.username = username;
	this.pwd = pwd;
}

var user1 = new User("zc123","123456");
var user2 = new User("zs123","123456");
var user3 = new User("zw123","123456");


var userArr = [user1,user2,user3];
//如果本地缓存 中没有数据，做数据初始化操作
if(!localStorage.userArr37){
	
//存储到localStorage本地
//存储的格式是字符串
//把一个对象转化为字符串


var jsonStr = JSON.stringify(userArr);
console.log(jsonStr);
//吧json字符串存入到本地缓存中
localStorage.userArr37 = jsonStr;


}