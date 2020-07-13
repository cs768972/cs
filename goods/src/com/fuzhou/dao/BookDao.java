package com.fuzhou.dao;

import java.util.List;

import com.fuzhou.domain.Book;

public interface BookDao {
	public List<Book> selectAllBooks();
	
	public List<Book> selectBookByCid(String cid);
	
	public Book selectBookByBid(String bid);
}
