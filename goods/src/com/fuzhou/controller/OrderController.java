package com.fuzhou.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fuzhou.domain.CartItem;
import com.fuzhou.domain.Order;
import com.fuzhou.domain.OrderItem;
import com.fuzhou.domain.User;
import com.fuzhou.service.CartService;
import com.fuzhou.service.OrderService;
import com.fuzhou.utils.GoodUtils;

@Controller
@RequestMapping(value="order")
public class OrderController {
	
	@Autowired
	private CartService cartService;
	@Autowired
	private Order order;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="addOrder.do")
	public ModelAndView addOrder(HttpServletRequest request,String cartItemIds) {
		ModelAndView mv = new ModelAndView();
		//鏌ヨ璐墿杞︼紝鐪嬫槸鍚︽湁鍟嗗搧琚�変腑
		List<CartItem> cartItemList = cartService.findCartByIds(cartItemIds);
		if(cartItemList.size() == 0) {
			mv.addObject("code", "error");
			mv.addObject("msg", "鎮ㄦ病鏈夐�夋嫨瑕佽喘涔扮殑鍥句功锛屼笉鑳戒笅鍗曪紒");
			mv.setViewName("forward:/jsps/msg.jsp");
			return mv;
		}
		
		order.setOid(GoodUtils.getRandomString(16));//璁剧疆涓婚敭
		order.setOrdertime(String.format("%tF %<tT", new Date()));//涓嬪崟鏃堕棿
		order.setStatus(1);//璁剧疆鐘舵�侊紝1琛ㄧず鏈粯娆�
		order.setAddress(request.getParameter("address"));//璁剧疆鏀惰揣鍦板潃
		User owner = (User)request.getSession().getAttribute("sessionUser");
		order.setOwner(owner);//璁剧疆璁㈠崟鎵�鏈夎��
		
		BigDecimal total = new BigDecimal("0");
		for(CartItem cartItem : cartItemList) {
			//啥意思？
			total = total.add(new BigDecimal(cartItem.getSubtotal() + ""));
		}
		order.setTotal(total.doubleValue());//璁剧疆鎬昏
		
		/*
		 * 3. 鍒涘缓List<OrderItem>
		 * 涓�涓狢artItem瀵瑰簲涓�涓狾rderItem
		 */
		List<OrderItem> orderItemList = new ArrayList<OrderItem>();
		for(CartItem cartItem : cartItemList) {
			System.out.println("<<<<<<<<<<<<<<<<" + GoodUtils.getRandomString(16));
			OrderItem orderItem = new OrderItem();
			orderItem.setOrderItemId(GoodUtils.getRandomString(16));//璁剧疆涓婚敭
			orderItem.setQuantity(cartItem.getQuantity());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setBook(cartItem.getBook());
			orderItem.setOrder(order);
			System.out.println(orderItem.getOrderItemId());
			orderItemList.add(orderItem);
		}
		for(OrderItem m :orderItemList ) {
			System.out.println("LLL" + m.getOrderItemId());
		}
		order.setOrderItemList(orderItemList);
		
		/*
		 * 4. 璋冪敤service瀹屾垚娣诲姞
		 */
		orderService.createOrder(order);
		orderService.createOrderItem(orderItemList);
		// 鍒犻櫎璐墿杞︽潯鐩�
		//cartItemService.batchDelete(cartItemIds);
		/*
		 * 5. 淇濆瓨璁㈠崟锛岃浆鍙戝埌ordersucc.jsp
		 */
		mv.addObject("order", order);
		mv.setViewName("forward:/jsps/order/ordersucc.jsp");
		return mv;
	}
	
	@RequestMapping(value="findAllOrder.do")
	public ModelAndView findAllOrder(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		User user = (User) request.getSession().getAttribute("sessionUser");
		List<Order> orders = orderService.findOrderByUId(user.getUid());
		
		mv.addObject("beanList", orders);
		mv.setViewName("order/list");
		return mv;
	}
}
