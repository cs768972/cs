package com.itheima.core.service;
import java.util.List;

import com.itheima.core.po.Tea;

public interface TeaService {
	public Tea findTeaById(Integer id);
	public List<Tea> findTeaAll();
	public void doAddTea(Tea tea);
	public void delTeaById(Integer id);
	public void doUpdateTea(Tea tea);
}
