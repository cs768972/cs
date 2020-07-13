package com.itheima.core.dao;
import java.util.List;

import com.itheima.core.po.Tea;
/**
 * Tea接口文件
 */
public interface TeaDao {
	/**
	 * 根据id查询客户信息
	 */
	public Tea findTeaById(Integer id);
	public List<Tea> findTeaAll();
	public void doAddTea(Tea tea);
	public int delTeaById(Integer id);
	public void doUpdateTea(Tea tea);
	public void findTeaAll(Tea tea);

}
