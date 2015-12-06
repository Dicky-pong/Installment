package com.qfq.service.impl;



import java.sql.SQLException;

import java.util.List;
import java.util.Map;
import cn.itcast.jdbc.JdbcUtils;
import com.qfq.dao.BaseDao;
import com.qfq.entity.InstallmentEntity;
import com.qfq.pager.PageBean;
import com.qfq.pager.PageConstants;
import com.qfq.po.Installment;
import com.qfq.service.OrderService;

public class OrderServiceImpl implements OrderService{
	private BaseDao baseDao;

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public PageBean<Installment> myOrders(int id, int pageCode) {
		/*
		 * 1.得到pageSize
		 */
		int pageSize = PageConstants.ORDER_PAGE_SIZE;//每页记录数
		
		String hql = "select count(i.id) from Installment i where i.userinfo.id ='"+id+"'";
		/*
		 * 3.获得总记录数
		 */
		Number number = baseDao.countQuery(hql);
		System.out.println("输出的number是："+number);
		int totalRecoder = number.intValue();//得到总记录数
		/*
		 * 4.得到beanList,即当前页记录
		 */
		 hql= " from Installment i where i.userinfo.id ='"+id+"' order by i.date desc";
		int start = (pageCode-1) * pageSize;//当前页首行记录的下标
		List<Installment> beanList = baseDao.findByHql(hql,start,pageSize);
		System.out.println(beanList.get(0).getUserinfo());
		System.out.println(beanList.get(0).getGoods());
		System.out.println(beanList.get(0).getColor());		
		/*
		 * 5.创建PageBean设置参数
		 */
		PageBean<Installment>pb = new PageBean<Installment>();
		/*
		 * 其中PageBean没有url,这个任务由Servlet完成
		 */
		pb.setBeanList(beanList);
		pb.setPageCode(pageCode);
		pb.setPagesize(pageSize);
		pb.setTotalRecoder(totalRecoder);
		return pb;
	}

	/**
	 * 加载订单
	 * @param oid
	 * @return
	 */
	public Installment load(String id){
		
		String hql = " from Installment i where i.id='"+id+"'";
		System.out.println(hql);
		return (Installment) baseDao.loadObject(hql);
		
	}
	
	
	
	
}
