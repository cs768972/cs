package com.fuzhou.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fuzhou.domain.User;
import com.fuzhou.service.UserService;



@Controller
@RequestMapping(value="user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="login.do")
	public ModelAndView login(HttpSession session,HttpServletRequest request, String loginname,String password) {
		ModelAndView mv = new ModelAndView();
		System.out.println(loginname + "(********" + password);
		User user = userService.findUserByLoginname(loginname, password);
		//濡傛灉鏌ヨ鐨勭粨鏋滀笉涓虹┖锛屽垯灏唘ser濉叆session杩斿洖鍒颁富椤�
		if(user == null) {
			session.setAttribute("msg", "请输入账号和密码！");
			mv.setViewName("user/login");
		}else {
			session.setAttribute("sessionUser", user);
			mv.setViewName("redirect:/index.jsp");
		}
		
		return mv;
	}
}
