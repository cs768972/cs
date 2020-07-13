package com.itheima.core.web.controller;
import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.core.po.Tea;
import com.itheima.core.service.TeaService;


@Controller

public class TeaController {
	@Autowired
	private TeaService TeaService;

	@RequestMapping(value = "/findTeaById")
	public void findTeaById(HttpServletRequest req, HttpServletResponse resp, Model model) throws ServletException, IOException {
		Integer id=Integer.parseInt(req.getParameter("id"));
		Tea tea =TeaService.findTeaById(id);
		req.setAttribute("tea3", tea);
		//返回客户信息展示页面
		req.getRequestDispatcher("/WEB-INF/jsp/tea.jsp").forward(req, resp);
	}
	
	@RequestMapping(value = "/findTeaAll")
	public void findTeaAll(Model model, HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		List<Tea> alltea = TeaService.findTeaAll();
		
		request.setAttribute("tea", alltea);
		//返回车辆信息展示页面
		request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, resp);

	}
	
	@RequestMapping(value = "/addtea")
	public String addtea(Model model) {
		
		
		return "addtea";
	}
	
	@RequestMapping(value = "/delTea")
	public void delTeaById(Integer id, HttpServletResponse resp) throws IOException {
		//删除车辆数据
		TeaService.delTeaById(id);
		resp.sendRedirect("./findTeaAll");
		}
		

	


	@RequestMapping("/addTea")
	public void addTea(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		String tea_type = req.getParameter("tea_type");
		String tea_name = req.getParameter("tea_name");
		String tea_price = req.getParameter("tea_price");
		String Monthly_sales = req.getParameter("Monthly_sales");
		String tea_place = req.getParameter("tea_place");
			 
			System.out.println(tea_type+tea_name+tea_price+Monthly_sales+tea_place);
			 

			Tea tea = new Tea();
			
			tea.setTea_type(tea_type);
			tea.setTea_name(tea_name);
			tea.setTea_price(tea_price);
			tea.setMonthly_sales(Monthly_sales);
			tea.setTea_place(tea_place);
			
			TeaService.doAddTea(tea);
			resp.sendRedirect("./findTeaAll");
			
	}
	
		
	@RequestMapping("/modTea")
	public void modTea(Integer id,  HttpServletRequest request, HttpServletResponse resp) throws IOException, ServletException {
		Tea tea = TeaService.findTeaById(id);
		request.setAttribute("tea2", tea);
		request.getRequestDispatcher("/WEB-INF/jsp/modtea.jsp").forward(request, resp);
	}      
	
	@RequestMapping("/doUpdateTea")
	public void updateTea(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		Integer id = Integer.parseInt(req.getParameter("id"));

		String tea_type = req.getParameter("tea_type");
		String tea_name = req.getParameter("tea_name");
		String tea_price = req.getParameter("tea_price");
		String Monthly_sales = req.getParameter("Monthly_sales");
		String tea_place = req.getParameter("tea_place");
			
		Tea tea = new Tea();
			tea.setId(id);
			tea.setTea_type(tea_type);
			tea.setTea_name(tea_name);
			tea.setTea_price(tea_price);
			tea.setMonthly_sales(Monthly_sales);
			tea.setTea_place(tea_place);
			TeaService.doUpdateTea(tea);
			resp.sendRedirect("./findTeaAll");
			
	}
	
	
	
}
