package com.tea.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tea.entity.Evaluate;
import com.tea.entity.Goods;
import com.tea.mapper.EvaluateMapper;
import com.tea.mapper.GoodsMapper;
import com.tea.service.IEvaluateService;
import com.tea.service.IGoodsService;

@Service
public class GoodsServiceImpl implements IGoodsService {
	@Autowired
	private GoodsMapper goodsMapper;
	@Autowired
	private IEvaluateService evaluateService;
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	@Override
	public List<Goods> findAll() {
		return goodsMapper.findAll();
	}
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	@Override
	public Goods findById(Integer id) {
		Goods goods = goodsMapper.findGoodsById(id);
		List<Evaluate> evaList = evaluateService.findEvaluateByGoodsId(goods.getGoodsId());
		goods.setEvaList(evaList);
		return goods;
		
	}
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	@Override
	public Integer update(Goods goods) {
		Integer rs = goodsMapper.updateGoods(goods);
		if(rs>0){
			List<Evaluate> evaList = evaluateService.findEvaluateByGoodsId(goods.getGoodsId());
			goods.setEvaList(evaList);		
		}
		return rs;
	}
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	@Override
	public Integer deleteGoods(Integer goodsId) {
		Integer rs = goodsMapper.deleteGoods(goodsId);
		return rs;
	}
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public PageInfo<Goods> findBySplitPage(Integer page,Integer size,String keyword){
		List<Goods> list =new ArrayList<Goods>();
		PageHelper.startPage(page, size);
		if(keyword!=null &&!keyword.trim().equals("")){
			list=goodsMapper.findGoodsLikeName(keyword);
		}else{
			list = goodsMapper.findAll();
		}
		PageInfo<Goods> info=new PageInfo<Goods>(list);
		return info;
	}
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	@Override
	public List<Goods> findGoodsByType(Integer typeId) {
		return goodsMapper.findGoodsByType(typeId);
	}
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	@Override
	public List<Goods> findHotGoods(Integer num) {
		return goodsMapper.findHotGoods(num);
	}
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	@Override
	public List<Goods> findGoodsLikeName(String name) {
		return goodsMapper.findGoodsLikeName(name);
	}
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	@Override
	public Integer addGoods(Goods goods) {

		Integer rs = goodsMapper.saveGoods(goods);

		return rs;
	}
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	@Override
	public List<Goods> findGoodsByVolume(Integer limit) {
		return goodsMapper.findGoodsByVolume(limit);
	}
}
