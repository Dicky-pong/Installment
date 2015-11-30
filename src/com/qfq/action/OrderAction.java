package com.qfq.action;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.goods.order.domain.Order;
import cn.itcast.goods.pager.PageBean;
import cn.itcast.goods.user.domain.User;

import com.qfq.entity.InstallmentEntity;
import com.qfq.entity.UserInfoEntity;
import com.qfq.service.OrderService;
import com.qfq.utils.UserException;

public class OrderAction extends BaseAction{
	private OrderService orderService;
	private	InstallmentEntity installmentEntity;
	
	
	public InstallmentEntity getInstallmentEntity() {
		return installmentEntity;
	}

	public void setInstallmentEntity(InstallmentEntity installmentEntity) {
		this.installmentEntity = installmentEntity;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	/**
	 * 我的订单
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String myOrder() {
		/*
		 * 1.得到PageCode：如果页面传递，使用页面的，如果没传递，默认为1
		 */
		int pageCode = getPageCode(req);
		/*
		 * 2.得到url:...
		 */
		String url = getUrl(req);
		/*
		 * 3.从当前session中获取
		 */
		UserInfoEntity user = (UserInfoEntity)this.getSession().getAttribute("sessionUser");
		/*
		 * 4.使用pageCode和cid调用service#findByCagetgory得到pageBean
		 */
		PageBean<Order> pb = orderService.myOrders(user.getId(), pageCode);
		/*
		 * 5.给PageBean设置url，保存PageBean,转发到/jsps/book/list.jsp
		 */
		pb.setUrl(url);
		this.getRequest().setAttribute("pb", pb);
		return "f:/jsps/order/list.jsp";
	}
	
}
