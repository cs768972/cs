package com.fuzhou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fuzhou.dao.CategoryDao;
import com.fuzhou.domain.Category;
import com.fuzhou.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDao category;

	@Override
	public List<Category> findAllCategory() {
		// TODO Auto-generated method stub
		List<Category> categories = category.selectAllCategory();

		/*
		 * for (Category c : categories) { List<Category> children =
		 * selectAllCategoryByPid(c.getCid()); c.setChildren(children); }
		 */

		return categories;
	}

	/*
	 * 当无法使用mybatis的关联查询时，可以使用此方法
	 * @Override public List<Category> findAllCategoryByPid(String pid) { // TODO
	 * Auto-generated method stub List<Category> categories =
	 * category.selectAllCategoryByPid(pid); return categories; }
	 */

}
