package com.qfq.service.impl;

import com.qfq.dao.BaseDao;
import com.qfq.service.OrderService;

public class OrderServiceImpl implements OrderService{
	private BaseDao baseDao;

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
	
}
