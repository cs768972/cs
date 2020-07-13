package com.fuzhou.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fuzhou.dao.UserDao;
import com.fuzhou.domain.User;
import com.fuzhou.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public User findUserByLoginname(String loginname,String password) {
		System.out.println(loginname);
		User user = userDao.selectUserByLoginname(loginname);
		System.out.println(user);
		//如果能根据用户名查到用户，并且密码相等，则表示信息正确，返回user对象
		if(user != null && user.getLoginpass().equals(password)){
	        
            return user;
        }
		return null;
	}

}
