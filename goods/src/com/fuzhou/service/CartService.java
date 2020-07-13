package com.fuzhou.service;

import java.util.List;

import com.fuzhou.domain.CartItem;

public interface CartService {
	
	public int addCart(CartItem c);
	
	public List<CartItem> findCartByUid(String uid);
	
	public List<CartItem> findCartByIds(String cartItemIds);
}
