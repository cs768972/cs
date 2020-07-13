package com.fuzhou.service;

import java.util.List;

import com.fuzhou.domain.Book;

public interface BookService {
	public List<Book> findAllBook();
	
	public List<Book> findBookByCid(String cid);
	
	public Book findBookByBid(String bid);
}
