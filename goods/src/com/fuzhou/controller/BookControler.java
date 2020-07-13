package com.fuzhou.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fuzhou.domain.Book;
import com.fuzhou.service.BookService;

@Controller
@RequestMapping(value="book")
public class BookControler {
	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="findAllBooks.do")
	public ModelAndView findAllBooks() {
		ModelAndView mv = new ModelAndView();
		List<Book> books = bookService.findAllBook();
		mv.addObject("books", books);
		mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping(value="findBookByCid.do")
	public ModelAndView findBookByCid(String cid) {
		ModelAndView mv = new ModelAndView();
		List<Book> books = bookService.findBookByCid(cid);
		mv.addObject("books", books);
		mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping(value="findBookByBid.do")
	public ModelAndView findBookByBid(String bid) {
		ModelAndView mv = new ModelAndView();
		System.out.println(bid+"********");
		Book book = bookService.findBookByBid(bid);
		mv.addObject("book", book);
		mv.setViewName("book/desc");
		return mv;
	}
}
