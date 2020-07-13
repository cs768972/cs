package com.fuzhou.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fuzhou.domain.Order;
import com.fuzhou.domain.OrderItem;

public interface OrderDao {
	
	public int insertOrder(Order order);
	
	public int insertOrderItem(@Param("orderItems")List<OrderItem> orderItems);
	
	public Order selectOrderById(String oid);
	
	public int updateOrderStatus(String oid,int status);
	
	public List<Order> selectOrderByUId(String uid);
}
