package com.itheima.core.service;
import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.User;
/**
 * 用户Service层接口
 */
public interface UserService {
	// 通过账号和密码查询用户
	public User findUser(String usercode,String password);
	/*public void registerUser( User user);
	public Integer findUserByName(String username);*/
	public int registUser(User user);
}
