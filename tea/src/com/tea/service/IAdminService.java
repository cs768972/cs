package com.tea.service;

import com.tea.entity.Admins;

public interface IAdminService {
	Admins login(String name,String pass);
	Integer updateAdmin(Admins admin);
	Admins findAdminById(Integer id);
}
