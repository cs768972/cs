package com.itheima.core.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.core.dao.UserDao;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;
/**
 * 用户Service接口实现类
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	// 注入UserDao
	@Autowired
	private UserDao userDao;
	// 通过账号和密码查询用户
	@Override
	public User findUser(String usercode, String password) {
		User user = this.userDao.findUser(usercode, password);
		return user;
	}
	/*@Override
	public void registerUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.registerUser(user);
	}
	@Override
	public Integer findUserByName(String usercode) {
		 System.out.println("7");
		// TODO Auto-generated method stub
		return this.userDao.findUserByName(usercode);
	}*/
	@Override
	public int registUser(User user) {
		// TODO Auto-generated method stub
		return this.userDao.registUser(user);
	}
}
