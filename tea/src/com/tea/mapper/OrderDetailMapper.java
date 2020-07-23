package com.tea.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tea.entity.OrderDetail;

@Repository
public interface OrderDetailMapper {
	Integer addOrderDetail(OrderDetail orderDetail);
	OrderDetail findOrderDetailById(Integer detailId);
	Integer updateOrderDetail(OrderDetail orderDetail);
	List<OrderDetail> findOrderDetailByOrderId(String orderId);
}
