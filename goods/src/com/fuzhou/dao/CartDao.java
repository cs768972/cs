package com.fuzhou.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fuzhou.domain.CartItem;

public interface CartDao {
	
	public int insertCart(CartItem c);
	
	public CartItem selectCartByBidAndUid(CartItem c);
	//
	public int updateCartQuantity(CartItem c);
	
	//更新购物车之后，立马根据用户查询购物车
	public List<CartItem> selectCartByUid(String uid);
	
	public List<CartItem> selectCartByIds(@Param("cartItemIds") String[] cartItemIds);
}
