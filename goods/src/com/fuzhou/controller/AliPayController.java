package com.fuzhou.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.fuzhou.domain.Order;
import com.fuzhou.service.OrderService;
import com.fuzhou.utils.AlipayConfig;

@Controller
@RequestMapping(value="alipay")
public class AliPayController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "goAlipay", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String goAlipay(String oid, HttpServletRequest request, HttpServletRequest response) throws Exception {

		Order order = orderService.getOrderById(oid);
		System.out.println(order.getOid()+"---");
		System.out.println(order.getTotal() + "---");
		//Product product = productService.getProductById(order.getProductId());

		//获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

		//设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

		//商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no = oid;
		//付款金额，必填
		String total_amount = String.valueOf(order.getTotal());
		//订单名称，必填
		String subject = order.getOwner().getLoginname();
		//商品描述，可空
		//String body = "用户订购商品个数：" + order.getOrderItemList().size();

		// 该笔订单允许的最晚付款时间，逾期将关闭交易。取值范围：1m～15d。m-分钟，h-小时，d-天，1c-当天（1c-当天的情况下，无论交易何时创建，都在0点关闭）。 该参数数值不接受小数点， 如 1.5h，可转换为 90m。
    	String timeout_express = "1c";

		alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
				+ "\"total_amount\":\""+ total_amount +"\","
				+ "\"subject\":\""+ subject +"\","
				+ "\"timeout_express\":\""+ timeout_express +"\","
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

		//请求
		System.out.println(alipayRequest.getReturnUrl());;
		String result = alipayClient.pageExecute(alipayRequest).getBody();

		return result;
	}
	
	
	@RequestMapping(value="alipayReturnNotice.do")
	public ModelAndView alipayReturnNotice(HttpServletRequest request, HttpServletRequest response) throws Exception {


		//获取支付宝GET过来反馈信息
		Map<String,String> params = new HashMap<String,String>();
		Map<String,String[]> requestParams = request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}

		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名
		System.out.println("((((((((((((((");
		ModelAndView mv = new ModelAndView();
		
		//——请在这里编写您的程序（以下代码仅作参考）——
		if(signVerified) {
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

			//付款金额
			String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");

			// 修改订单状态，改为 支付成功，已付款; 
			orderService.updateOrderStatus(out_trade_no,2);


			Order order = orderService.getOrderById(out_trade_no);

			System.out.println("********************** 支付成功(支付宝同步通知) **********************");
			System.out.println("* 订单号: {}"+ out_trade_no);
			System.out.println("* 支付宝交易号: {}"+trade_no);
			System.out.println("* 实付金额: {}"+total_amount);
			System.out.println("***************************************************************");


    		mv.addObject("out_trade_no", out_trade_no);
    		mv.addObject("trade_no", trade_no);
    		mv.addObject("total_amount", total_amount);
    		mv.addObject("order", order);
    		//mv.addObject("productName", product.getName());

		}else {
			System.out.println("支付, 验签失败...");
		}
		mv.setViewName("forward:/index.jsp");
		return mv;
	}
	
	
	
	
}
