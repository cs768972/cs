package com.fuzhou.service;

import java.util.List;

import com.fuzhou.domain.Order;
import com.fuzhou.domain.OrderItem;

public interface OrderService {
	
	public int createOrder(Order order);
	
	public int createOrderItem(List<OrderItem> orderItems);
	
	public Order getOrderById(String oid);
	
	public int updateOrderStatus(String oid,int status);
	
	public List<Order> findOrderByUId(String uid);
}
