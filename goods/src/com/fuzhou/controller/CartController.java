package com.fuzhou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fuzhou.domain.Book;
import com.fuzhou.domain.CartItem;
import com.fuzhou.domain.User;
import com.fuzhou.service.BookService;
import com.fuzhou.service.CartService;

@Controller
@RequestMapping(value="cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="addCart.do")
	public ModelAndView addCart(HttpServletRequest request,CartItem c,String bid) {
		ModelAndView mv = new ModelAndView();
		
		User user = (User) request.getSession().getAttribute("sessionUser");//setAttribute("sesssionUser",user)
		Book book = bookService.findBookByBid(bid);
		c.setUser(user);
		c.setBook(book);
		
		int i = cartService.addCart(c);
		List<CartItem> cartItemList = cartService.findCartByUid(user.getUid());
		if(i > 0) {
			mv.addObject("cartItemList", cartItemList);
			mv.setViewName("cart/list");//jsps/cart/list.jsp
		}else {
			mv.addObject("msg", "添加购物车失败");
			mv.setViewName("book/desc.jsp");
		}
		
		return mv;
	}
	
	public ModelAndView findCartByUid(String uid) {
		ModelAndView mv = new ModelAndView();
		List<CartItem> carts = cartService.findCartByUid(uid);
		
		return mv;
	}
	
	@RequestMapping(value="loadCartItems.do")
	public ModelAndView loadCartItems(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String cartItemIds = request.getParameter("cartItemIds");
		double total = Double.parseDouble(request.getParameter("total"));
		
		List<CartItem> carts = cartService.findCartByIds(cartItemIds);
		System.out.println(cartItemIds + "********" + total);
		mv.addObject("cartItemList", carts);
		mv.addObject("total", total);
		mv.addObject("cartItemIds", cartItemIds);
		mv.setViewName("forward:/jsps/cart/showitem.jsp");
		return mv;
	}
}
