package com.fuzhou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fuzhou.dao.OrderDao;
import com.fuzhou.domain.Order;
import com.fuzhou.domain.OrderItem;
import com.fuzhou.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;
	
	@Override
	public int createOrder(Order order) {
		// TODO Auto-generated method stub
		int i = orderDao.insertOrder(order);
		
		return i;
	}

	@Override
	public int createOrderItem(List<OrderItem> orderItems) {
		// TODO Auto-generated method stub
		int i = orderDao.insertOrderItem(orderItems);
		return i;
	}

	@Override
	public Order getOrderById(String oid) {
		// TODO Auto-generated method stub
		Order order = orderDao.selectOrderById(oid);
		return order;
	}

	@Override
	public int updateOrderStatus(String oid,int status) {
		// TODO Auto-generated method stub
		int i = orderDao.updateOrderStatus(oid,status);
		return i;
	}

	@Override
	public List<Order> findOrderByUId(String uid) {
		// TODO Auto-generated method stub
		List<Order> orders = orderDao.selectOrderByUId(uid);
		
		return orders;
	}

}
