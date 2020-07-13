package com.tea.service;
/**
 * 与手机内存有关的service接口
 */
import java.util.List;

import com.tea.entity.Memory;

public interface IMemoryService {
	/*查询所有手机内存类型*/
	List<Memory> finAllMemory();
}
