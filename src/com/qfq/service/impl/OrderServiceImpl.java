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

	public PageBean<Installment> myOrders(int id, int pageCode,int status) {
		/*
		 * 1.得到pageSize
		 */
		int pageSize = PageConstants.ORDER_PAGE_SIZE;//每页记录数
		StringBuffer str = new StringBuffer("");
		if(status>0){
		str.append(" and i.status= '"+status+"'");  
		}
		String hql = "select count(i.id) from Installment i where i.userinfo.id ='"+id+"' "+str.toString() ;
	
		/*
		 * 3.获得总记录数
		 */
		Number number = baseDao.countQuery(hql);
		int totalRecoder = number.intValue();//得到总记录数
		/*
		 * 4.得到beanList,即当前页记录
		 */
		 hql= " from Installment i where i.userinfo.id ='"+id+"' "+str.toString()+ "order by i.date desc";
		System.out.println(hql);
		 int start = (pageCode-1) * pageSize;//当前页首行记录的下标
		List<Installment> beanList = baseDao.findByHql(hql,start,pageSize);
		if(beanList.size()>0){
		System.out.println(beanList.get(0).getUserinfo());
		System.out.println(beanList.get(0).getGoods());
		System.out.println(beanList.get(0).getColor());	
		}
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
		
		String hql = " from Installment i where i.orderId='"+id+"'";
		Installment ins =(Installment) baseDao.loadObject(hql);
		System.out.println(ins.getGoods());
		System.out.println(ins.getColor());
		System.out.println(ins.getUserinfo());
		return ins;
		
	}

	public int findStatus(String id) {
		String hql = " from Installment i where i.orderId ='"+id+"'";
		Installment installment=(Installment) baseDao.loadObject(hql);
		return installment.getStatus();
	}

	public void updateStatus(String id, int i) {
		String hql = " from Installment i where i.orderId ='"+id+"'";
		Installment installment=(Installment) baseDao.loadObject(hql);
		installment.setStatus(i);
		baseDao.saveOrUpdate(installment);
		System.out.println("保存成功");
	}
	

	public List<Installment> myOrder(int pageCode) {
		/*
		 * 1.得到pageSize
		 */
		int pageSize = PageConstants.ORDER_PAGE_SIZE;//每页记录数
		String hql = "select count(i.id) from Installment i";
		/*
		 * 3.获得总记录数
		 */
		Number number = baseDao.countQuery(hql);
		System.out.println("输出的number是："+number);
		int totalRecoder = number.intValue();//得到总记录数

		hql= " from Installment i order by i.date desc";
		int start = (pageCode-1) * pageSize;//当前页首行记录的下标
		List<Installment> beanList = baseDao.findByHql(hql,start,pageSize);
		System.out.println(beanList.get(0).getUserinfo());
		System.out.println(beanList.get(0).getGoods());
		System.out.println(beanList.get(0).getColor());
		return beanList;
	}
	
	
	
	
}
