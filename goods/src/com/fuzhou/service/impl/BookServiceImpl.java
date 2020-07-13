package com.fuzhou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fuzhou.dao.BookDao;
import com.fuzhou.domain.Book;
import com.fuzhou.service.BookService;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookDao bookDao;
	
	@Override   //�������ע�������ʾ����Ľӿ��ڸ��ӿ����Ƿ����
				//	˵���˾��Ǽ�鷽����д����û��д��ͻᱨ��
	public List<Book> findAllBook() {
		// TODO Auto-generated method stub
		List<Book> books = bookDao.selectAllBooks();
		return books;
	}

	@Override
	public List<Book> findBookByCid(String cid) {
		// TODO Auto-generated method stub
		List<Book> books = bookDao.selectBookByCid(cid);
		return books;
	}

	@Override
	public Book findBookByBid(String bid) {
		// TODO Auto-generated method stub
		Book book = bookDao.selectBookByBid(bid);
		return book;
	}

}
