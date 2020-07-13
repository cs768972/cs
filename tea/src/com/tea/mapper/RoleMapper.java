package com.tea.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tea.entity.Funs;
import com.tea.entity.Role;

@Repository
public interface RoleMapper {
	Role findById(Integer id);
	List<Role> findAllRole();
	Role findRolesFunsById(Integer roleId);
}
