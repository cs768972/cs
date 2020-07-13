package com.fuzhou.dao;


import com.fuzhou.domain.User;

public interface UserDao {
	
	public User selectUserByLoginname(String loginname);
	
}
