package com.tea.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tea.entity.Address;
import com.tea.entity.Provinces;

@Repository
public interface ProvincesMapper {
	List<Provinces> findAllProvince();
	
	Provinces findProByProName(String name);
	
	Provinces findProByProId(String id);
}
