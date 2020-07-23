package com.tea.listener;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;
import com.tea.entity.Evaluate;
import com.tea.entity.Goods;
import com.tea.entity.GoodsType;
import com.tea.entity.Memory;
import com.tea.service.IEvaluateService;
import com.tea.service.IGoodsService;
import com.tea.service.IGoodsTypeService;
import com.tea.service.IMemoryService;


public class GoodsAttrListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		/*初始化spring容器，加载配置文件*/
		ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext.xml");
		
		ServletContext application = arg0.getServletContext();
		IGoodsTypeService typeService = app.getBean(IGoodsTypeService.class);
		IMemoryService memoryService = app.getBean(IMemoryService.class);
		
		List<GoodsType> typeList = typeService.findAllType();
		application.setAttribute("goodsTypeList", typeList);
		
		List<Memory> memoryList = memoryService.finAllMemory();
		application.setAttribute("memoryList", memoryList);
		
		IGoodsService service = app.getBean(IGoodsService.class);
		List<Goods> goodsList = service.findAll();
		
		IEvaluateService evaService = app.getBean(IEvaluateService.class);
		for (Goods g : goodsList) {
			List<Evaluate> evaList = evaService.findEvaluateByGoodsId(g.getGoodsId());
			g.setEvaList(evaList);

		}
	}

}
