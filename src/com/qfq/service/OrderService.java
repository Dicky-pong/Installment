package com.qfq.service;

import java.util.List;

import com.qfq.entity.InstallmentEntity;
import com.qfq.pager.PageBean;
import com.qfq.po.Installment;

public interface OrderService {

	public PageBean<Installment> myOrders(int id, int pageCode,int status);

	public Installment load(String id);
	
	public List<Installment> myOrder(int pageCode);

	public int findStatus(String id);

	public void updateStatus(String id, int i);

}
