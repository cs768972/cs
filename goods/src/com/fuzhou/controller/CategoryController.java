package com.fuzhou.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fuzhou.domain.Category;
import com.fuzhou.service.CategoryService;

@Controller
@RequestMapping(value="category")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="findAllCategory.do")
	public ModelAndView findAllCategory() {
		
		ModelAndView mv = new ModelAndView();
		List<Category> parents = categoryService.findAllCategory();
		
		
		mv.addObject("parents", parents);
		mv.setViewName("forward:/jsps/left.jsp");
		return mv;
	}
}
