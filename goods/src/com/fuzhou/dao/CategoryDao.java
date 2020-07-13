package com.fuzhou.dao;

import java.util.List;

import com.fuzhou.domain.Category;

public interface CategoryDao {
	public List<Category> selectAllCategory();
	public int SelectCategoryByCid(int cid);
	public List<Category> selectAllCategoryByPid(String pid);
}
