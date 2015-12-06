package com.qfq.service;

import com.qfq.entity.InstallmentEntity;
import com.qfq.pager.PageBean;
import com.qfq.po.Installment;

public interface OrderService {

	public PageBean<Installment> myOrders(int id, int pageCode);

	public Installment load(String id);

}
