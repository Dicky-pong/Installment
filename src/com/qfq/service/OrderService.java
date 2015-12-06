package com.qfq.service;

import java.util.List;

import com.qfq.entity.InstallmentEntity;
import com.qfq.pager.PageBean;
import com.qfq.po.Installment;

public interface OrderService {

	/*
	 * 查询当前用户所有订单
	 * 当前用户根据订单状态查询订单
	 */
	public PageBean<Installment> myOrders(int id, int pageCode,int status);

	/*
	 * 根据orderid加载订单
	 */
	public Installment load(String id);
	
	/*
	 * 查询所有用户所有订单
	 * 按订单状态查询所有用户的订单
	 */
	public PageBean<Installment> myBackOrder(int pageCode,int status);
	/*
	 * 获得当前用户的订单状态
	 */
	public int findStatus(String id);

	public void updateStatus(String id, int i);

	/*
	 * 查询当前用户符合条件的订单
	 */
	public PageBean<Installment> findByCriteria(int userid,int pageCode,String criteria);

}
