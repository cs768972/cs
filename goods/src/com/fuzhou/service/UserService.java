package com.fuzhou.service;

import com.fuzhou.domain.User;

public interface UserService {
	
	public User findUserByLoginname(String loginname,String password);
}
