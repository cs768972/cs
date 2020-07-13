package com.tea.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tea.entity.Address;
import com.tea.entity.Areas;
import com.tea.entity.Cities;
import com.tea.entity.Provinces;

public interface IAddressService {
	List<Address> findAddressByUserId(Integer userId);
	Address findAddresById(Integer id);
	Provinces findProByProByName(String name);
	Cities findCityByCityName(String name,String provinceId);
	Areas findAreaByAreaName(String name,String cityId);
	Integer addAddress(Address addr);
	Integer updateAddress(Address addr);
	Integer deleteAddress(Integer addrId);
}
