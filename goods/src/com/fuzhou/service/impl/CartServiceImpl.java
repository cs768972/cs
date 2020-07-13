package com.fuzhou.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fuzhou.dao.CartDao;
import com.fuzhou.domain.CartItem;
import com.fuzhou.service.CartService;
import com.fuzhou.utils.GoodUtils;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;
	
	@Override
	public int addCart(CartItem c) {
		// TODO Auto-generated method stub
		String cartItemId = GoodUtils.getRandomString(16);
		c.setCartItemId(cartItemId);
		//查询数据库购物车是否存在相同的图书
		CartItem cartExist = cartDao.selectCartByBidAndUid(c);
		//如果有，那么更新这本书的数量，不需要新增数据
		if(cartExist != null) {
			int quantity = c.getQuantity() + cartExist.getQuantity();
			c.setQuantity(quantity);
			int i = cartDao.updateCartQuantity(c);
			return i;
		}else {
			int i = cartDao.insertCart(c);
			return i;
		}
	}

	@Override
	public List<CartItem> findCartByUid(String uid) {
		// TODO Auto-generated method stub
		List<CartItem> carts = cartDao.selectCartByUid(uid);
		return carts;
	}

	@Override
	public List<CartItem> findCartByIds(String cartItemIds) {
		//将string转换成数组
		String[] cartItemIdArray = cartItemIds.split(",");
		List<CartItem> carts = cartDao.selectCartByIds(cartItemIdArray);
		return carts;
	}

}
