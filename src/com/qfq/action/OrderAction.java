package com.qfq.action;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qfq.entity.InstallmentEntity;
import com.qfq.entity.UserInfoEntity;
import com.qfq.pager.PageBean;
import com.qfq.po.Installment;
import com.qfq.po.Userinfo;
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
	 * 获取当前页码
	 * @param req
	 * @return
	 */
	private int getPageCode() {
		System.out.println("pagecode获取");
		int pageCode = 1;
		String param = this.getRequest().getParameter("pc");
		if (param != null && !param.trim().isEmpty()) {
			try {
				pageCode = Integer.parseInt(param);
			} catch (RuntimeException e) {
			}

		}
		return pageCode;
	}

	/*
	 * 截取url,页面中的分页导航中需要使用它作为超链接的目标
	 */
	private String getUrl(){
		System.out.println("url获取");
		String url = this.getRequest().getRequestURI()+"?"+this.getRequest().getQueryString();
		/*
		 * 如果url中存在pageCode参数，截取掉，如果不存在那就不用截取
		 */
		int index = url.lastIndexOf("&pc=");
			if(index!=-1){
				url=url.substring(0,index);
			}
			return url;
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
		System.out.println("收到！");
		/*
		 * 1.得到PageCode：如果页面传递，使用页面的，如果没传递，默认为1
		 */
		int pageCode = getPageCode();
		/*
		 * 2.得到url:...
		 */
		String url = getUrl();
		/*
		 * 3.从当前session中获取
		 */
		System.out.println("user获取");
		Userinfo user = (Userinfo)this.getSession().getAttribute("sessionUser");
		System.out.println("user获取成功");
		/*
		 * 4.使用pageCode和cid调用service#findByCagetgory得到pageBean
		 */
		System.out.println("准备进入方法获取");
		PageBean<Installment> pb = orderService.myOrders(user.getId(), pageCode);
		/*
		 * 5.给PageBean设置url，保存PageBean,转发到/jsps/book/list.jsp
		 */
		pb.setUrl(url);
		this.getRequest().setAttribute("pb", pb);
		return "order";
	}
	
	/**
	 * 加载订单
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String load() {
		System.out.println("load()");
			String id = this.getRequest().getParameter("id");
			Installment installment = orderService.load(id);
			System.out.println("load()成功");
			this.getRequest().setAttribute("order", installment);
			String btn = this.getRequest().getParameter("btn");//btn说明了用户点击哪个超链接来访问本方法的
			this.getRequest().setAttribute("btn", btn);
			return "pay";
	}
	
}
