package com.itheima.core.web.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itheima.core.po.User;
import com.itheima.core.service.UserService;
/**
 * 用户控制器类
 */
@Controller
public class UserController {
	// 依赖注入
	@Autowired
	private UserService userService;
	/**
	 * 用户登录
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}
	 
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String usercode,String password, Model model, 
                                                          HttpSession session) {
		// 通过账号和密码查询用户
		User user = userService.findUser(usercode, password);
		if(user != null){		
			// 将用户对象添加到Session
			session.setAttribute("USER_SESSION", user);
			// 跳转到主页面
			 return "customer";
//			return "redirect:tea/list.action";
		}
		model.addAttribute("msg", "账号或密码错误，请重新输入！");
         // 返回到登录页面
		return "login";
	}
	
	
/*	@RequestMapping("/user/registuser.action" ,method = RequestMethod.POST)
	@ResponseBody
	public String registUser(@RequestParam("user_code")String user_code,@RequestParam("user_name")String user_name,
							@RequestParam("user_password")String user_password) {
		User user = new User();
		user.setUser_code(user_code);
		user.setUser_name(user_name);
		user.setUser_password(user_password);
		int rows = userService.registUser(user);
		if(rows > 0) {
			return "Ok";
		}else {
			return "fall";
		}
	}*/
/*	@RequestMapping(value="/register.action",method=RequestMethod.POST)
	public String register(User user,Model model,HttpSession session) {
	    // 鑾峰彇鐢ㄦ埛鍚嶅拰瀵嗙爜
		Integer count = 0;
	   count = userService.findUserByName(user.getUser_code()+user.getUser_password()+user.getUser_state());
	   if(count<1){
		   userService.registerUser(user);
		   model.addAttribute("reg", "恭喜注册成功");
		    return "login";
	   }else{
		   model.addAttribute("reg", "用户名已存在，请重新输入");
		    return "register";
	   }
	    // 姝ゅ妯℃嫙浠庢暟鎹簱涓幏鍙栫敤鎴峰悕鍜屽瘑鐮佸悗杩涜鍒ゆ柇
	    
	}*/
	@RequestMapping(value="/registuser.action",method=RequestMethod.POST)
	@ResponseBody
	public String registUser(@RequestParam("user_code")String user_code,
			@RequestParam("user_name")String user_name,@RequestParam("user_password")String user_password) {
			System.out.println("test");
		User user = new User();
		user.setUser_code(user_code);
		user.setUser_name(user_name);
		user.setUser_password(user_password);
		int i = userService.registUser(user);
		if(i>0) {
			System.out.println("test1");
			return "OK";
		}else {
			return "FALSE";
		}
	}
	/*@RequestMapping(value = "/custdata.action", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView custdata(HttpServletRequest request){
		ModelAndView retMap = new ModelAndView(); 
		//返回新的ModelAndView
		 retMap.setViewName("customerdata");
		return retMap;
		}
	*/
	/*@param与@RequestParam的区别？*/
	/*@ResponseBody的用法.
	 * 3，*/
		/**
	 * 模拟其他类中跳转到客户管理页面的方法
	 */
	@RequestMapping(value = "/toCustomer.action")
	public String toCustomer() {
	    return "customer";
	}
	
	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:login.action";
	}
	/**
	 * 向用户登陆页面跳转
	 */



}
