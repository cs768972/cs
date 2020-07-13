
package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.core.po.Tea;
import com.itheima.core.service.TeaService;
import com.itheima.core.dao.TeaDao;

@Service
@Transactional
//@DataSourceSelector(DataSourceName.mybatis)
public class TeaServiceImpl implements TeaService {
	//注解注入TeaDao
	@Autowired
	private TeaDao TeaDao;
	
	public Tea findTeaById(Integer id) {
		return this.TeaDao.findTeaById(id);
	}
	
	public List<Tea> findTeaAll(){
		return this.TeaDao.findTeaAll();
	}
	
	public void doAddTea(Tea tea){
		this.TeaDao.doAddTea(tea);
	}
	
	public void delTeaById(Integer id) {
		  this.TeaDao.delTeaById(id);
	}
	
	public void doUpdateTea(Tea tea){
		this.TeaDao.doUpdateTea(tea);
	}

}
