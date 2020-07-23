package com.tea.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.tea.entity.Evaluate;

public interface IEvaluateService {
	Integer addEvaluate(Evaluate eva,String[] imgs);
	List<Evaluate> findEvaluateByGoodsId(Integer goodsId);
	PageInfo<Evaluate> findAllEvaluate(Integer page,Integer limit,String keyword);
	Integer deleteEvaluate(Integer evaId);
	Evaluate findEvaluteById(Integer evaId);
}
