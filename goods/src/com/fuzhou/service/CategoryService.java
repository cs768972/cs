package com.fuzhou.service;

import java.util.List;

import com.fuzhou.domain.Category;

public interface CategoryService {
	public List<Category> findAllCategory();
	public int findCategoryByCid(int cid);
	//public List<Category> findAllCategoryByPid(String pid);
}
