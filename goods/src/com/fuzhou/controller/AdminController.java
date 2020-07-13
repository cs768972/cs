package com.fuzhou.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fuzhou.domain.Book;
import com.fuzhou.domain.Category;
import com.fuzhou.domain.Order;
import com.fuzhou.service.BookService;
import com.fuzhou.service.CategoryService;
import com.fuzhou.service.OrderService;
import com.fuzhou.utils.GoodUtils;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("findAllCategory.do")
	public ModelAndView findAll() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("parents", categoryService.findAllCategory());
		mv.setViewName("forward:/adminjsps/admin/category/list.jsp");
		return mv;
	}
	//添加图书第一步
	@RequestMapping("addPre.do")
	public ModelAndView addPre() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("parents", categoryService.findParents());
		mv.setViewName("forward:/adminjsps/admin/book/add.jsp");
		return mv;
	}
	
	//获取全部的图书分类，用于图书管理
	@RequestMapping(value="findCategoryAll.do")
	public ModelAndView findAllCategory() {
		
		ModelAndView mv = new ModelAndView();
		List<Category> parents = categoryService.findAllCategory();
		
		
		mv.addObject("parents", parents);
		mv.setViewName("forward:/adminjsps/admin/book/left.jsp");
		return mv;
	}
	
	//新增图书
	@RequestMapping(value="addBook.do")
	public ModelAndView addBook(@RequestParam("file") MultipartFile[] file,Book book,String cid) throws Exception{
		
		
		String rootPath = request.getSession().getServletContext().getRealPath("/") + "book_img1";
        String filePath = rootPath + "/";
        File dir = new File(filePath);
        if (!dir.isDirectory())
            dir.mkdir();
        File writeFile = null;
        for(int i = 0;i < file.length;i++) {
        	if(i == 0) {
	        	String fileOriginalName = file[i].getOriginalFilename();
	            String newFileName = GoodUtils.getRandomString(8) + "-1_w" + fileOriginalName.substring(fileOriginalName.lastIndexOf("."));
	            writeFile = new File(filePath + newFileName);
	            //文件写入磁盘
	            file[i].transferTo(writeFile);
	            System.out.println("fasdf");
            	book.setImage_w("book_img1/" + newFileName);
            }else {
            	String fileOriginalName = file[i].getOriginalFilename();
	            String newFileName = GoodUtils.getRandomString(8) + "-1_b" + fileOriginalName.substring(fileOriginalName.lastIndexOf("."));
	            writeFile = new File(filePath + newFileName);
	            //文件写入磁盘
	            file[i].transferTo(writeFile);
            
            	book.setImage_b("book_img1/" + newFileName);
            }
        }
        book.setBid(GoodUtils.getRandomString(16));
        
        book.setCategory(categoryService.findCategoryByCid(cid));
        bookService.addBook(book);
        
		return null;
	}
	
	
	@RequestMapping(value="orderManage.do")
	public ModelAndView orderManage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Order> orders = orderService.findAllOrder();
		mv.addObject("orders", orders);
		mv.setViewName("forward:/adminjsps/admin/order/list.jsp");
		return mv;
	}
	
	
	@RequestMapping(value="findChildren.do")
	@ResponseBody
	public List<Category> findChildren(String pid) {
		List<Category> result = categoryService.findChildrenByPid(pid);
		System.out.println(result);
		return result;
	}
}
