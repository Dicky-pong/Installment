package com.qfq.action;


import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;

import com.qfq.entity.InstallmentEntity;
import com.qfq.pager.PageBean;
import com.qfq.po.Installment;
import com.qfq.po.Userinfo;
import com.qfq.service.OrderService;
import com.qfq.utils.PaymentUtil;

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
	 * 确认收货
	 * @return
	 */
	public String confirm() {
		String id = this.getRequest().getParameter("id");
		/*
		 * 校验订单状态
		 */
		int status = orderService.findStatus(id);
		if(status !=3){
			this.getRequest().setAttribute("code", "error");
			this.getRequest().setAttribute("msg", "状态不对，不能确认收货！");
			return "msg";
		}
		orderService.updateStatus(id, 4);//设置状态为交易成功！
		this.getRequest().setAttribute("code", "success");
		this.getRequest().setAttribute("msg", "恭喜，交易成功！");
		return "msg";
	}
	
	/**
	 * 取消订单
	 * @return
	 */
	public String cancel(){
		System.out.println("进入canel()");
		String id = this.getRequest().getParameter("id");
		/*
		 * 校验订单状态
		 */
		int status = orderService.findStatus(id);
		if(status !=1){
			this.getRequest().setAttribute("code", "error");
			this.getRequest().setAttribute("msg", "状态不对，不能取消！");
			return "msg";
		}
		orderService.updateStatus(id, 5);
		this.getRequest().setAttribute("code", "success");
		this.getRequest().setAttribute("msg", "您的订单已取消！");
		return "msg";
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
		int pageCode = getPageCode();
		int status = Integer.parseInt(this.getRequest().getParameter("status"));
		/*
		 * 2.得到url:...
		 */
		String url = getUrl();
		/*
		 * 3.从当前session中获取
		 */
		Userinfo user = (Userinfo)this.getSession().getAttribute("sessionUser");
		/*
		 * 4.使用pageCode和cid调用service#findByCagetgory得到pageBean
		 */
		PageBean<Installment> pb = orderService.myOrders(user.getId(), pageCode,status);
		/*
		 * 5.给PageBean设置url，保存PageBean,转发到/jsps/book/list.jsp
		 */
		pb.setUrl(url);
		this.getRequest().setAttribute("pb", pb);
		return "order";
	}
	
	/**
	 * 加载前台订单
	 * @return
	 */
	public String load() {
			String id = this.getRequest().getParameter("id");
			Installment installment = orderService.load(id);
			this.getRequest().setAttribute("order", installment);
			String btn = this.getRequest().getParameter("btn");//btn说明了用户点击哪个超链接来访问本方法的
			this.getRequest().setAttribute("btn", btn);
			return "detil";
	}
	
	/**
	 * 加载订单
	 * @return
	 */
	public String loadOrder() {
			String id = this.getRequest().getParameter("id");
			Installment installment = orderService.load(id);
			this.getRequest().setAttribute("order", installment);
			return "orderdetail";
	}
	
	/**
	 * 查询所有订单
	 * @return
	 */
	public String findAllOrder() {
		System.out.println("进入方法");
		int pageCode = Integer.parseInt(this.getRequest().getParameter("pageCode"));
		List<Installment> order =  orderService.myOrder(pageCode);
		this.getRequest().setAttribute("orders", order);
		return "ordermag";
	}
	
	/**
	 * 支付准备
	 * @return
	 */
	public String paymentPre() {
		this.getRequest().setAttribute("order", orderService.load(this.getRequest().getParameter("id")));
		return "pay";
		
	}
	
	/**
	 * 支付方法
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public void payment() throws IOException{
		Properties props = new Properties();
		props.load(this.getClass().getClassLoader().getResourceAsStream("payment.properties"));
		/*
		 * 1.准备13个参数
		 */
		String p0_Cmd = "Buy";//业务类型，固定值Buy
		String p1_MerId = props.getProperty("p1_MerId");//商号编码，在易宝的唯一表示
		String p2_Order = this.getRequest().getParameter("id");//订单编号
		String p3_Amt = "0.01";//支付金额
		String p4_Cur = "CNY"; //交易币种，固定值CNY
		String p5_Pid = "";//商品名称
		String p6_Pcat = ""; //商品种类
		String p7_Pdesc ="";//商品描述
		String p8_Url=props.getProperty("p8_Url");//支付成功后，易宝会访问这个地址
		String p9_SAF="";//送货地址
		String pa_MP="";//扩展信息
		String pd_FrpId = this.getRequest().getParameter("yh");//支付通道
		String pr_NeedResponse = "1";//应答机制，固定值1
		
		/*
		 * 2.计算hmac
		 * 需要13个参数
		 * 需要keyValu
		 * 需要加密算法
		 */
		String keyValue = props.getProperty("keyValue");
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur,
				p5_Pid, p6_Pcat, p7_Pdesc, p8_Url,
				p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, keyValue);
		/*
		 * 3.重定向到易宝的支付网关
		 */
		StringBuilder sb = new StringBuilder("https://www.yeepay.com/app-merchant-proxy/node");
		sb.append("?").append("p0_Cmd=").append(p0_Cmd);
		sb.append("&").append("p1_MerId=").append(p1_MerId);
		sb.append("&").append("p2_Order=").append(p2_Order);
		sb.append("&").append("p3_Amt=").append(p3_Amt);
		sb.append("&").append("p4_Cur=").append(p4_Cur);
		sb.append("&").append("p5_Pid=").append(p5_Pid);
		sb.append("&").append("p6_Pcat=").append(p6_Pcat);
		sb.append("&").append("p7_Pdesc=").append(p7_Pdesc);
		sb.append("&").append("p8_Url=").append(p8_Url);
		sb.append("&").append("p9_SAF=").append(p9_SAF);
		sb.append("&").append("pa_MP=").append(pa_MP);
		sb.append("&").append("pd_FrpId=").append(pd_FrpId);
		sb.append("&").append("pr_NeedResponse=").append(pr_NeedResponse);
		sb.append("&").append("hmac=").append(hmac);

		this.getResponse().sendRedirect(sb.toString());
		
	}
	
	/**
	 * 回馈方法
	 * 当支付成功时，易宝会访问这里
	 * 用两种方式访问：
	 * 	1.引导用户的浏览器重定向（如果用户关闭了浏览器，就不能访问这里了）
	 * 	2.易宝的服务器会使用点对点通讯的方法访问这个方法。（必须回馈success，不然易宝服务器会一直调用这个方法）
	 * @throws IOException 
	 */
	public String back() throws IOException{
		/*
		 * 1.获取12个参数
		 */
		String p1_MerId = this.getRequest().getParameter("p1_MerId");
		String r0_Cmd = this.getRequest().getParameter("r0_Cmd");
		String r1_Code = this.getRequest().getParameter("r1_Code");
		String r2_TrxId = this.getRequest().getParameter("r2_TrxId");
		String r3_Amt = this.getRequest().getParameter("r3_Amt");
		String r4_Cur = this.getRequest().getParameter("r4_Cur");
		String r5_Pid = this.getRequest().getParameter("r5_Pid");
		String r6_Order = this.getRequest().getParameter("r6_Order");
		String r7_Uid = this.getRequest().getParameter("r7_Uid");
		String r8_MP = this.getRequest().getParameter("r8_MP");
		String r9_BType = this.getRequest().getParameter("r9_BType");
		String hmac = this.getRequest().getParameter("hmac");
		
		/*
		 * 2.获取keyValue
		 */
		Properties props = new Properties();
		props.load(this.getClass().getClassLoader().
				getResourceAsStream("payment.properties"));
		String keyValue = props.getProperty("keyValue");
		/*
		 * 3.调用PaymentUtil的校验方法来校验调用者的身份
		 *  >如果校验失败，保存错误信息，转发到msg.jsp
		 *  >如果校验通过：
		 *  	*判断访问的方式是重定向还是点对点，如果要是重定向
		 *  	修改订单状态，保存成功信息，转发到msg.jsp
		 *  	*如果是点对点，修改订单状态,返回success
		 */
		boolean bool = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid, r8_MP, r9_BType, keyValue);
		if(!bool){
			this.getRequest().setAttribute("code", "error");
			this.getRequest().setAttribute("msg","无效的签名，支付失败！");
			return "msg";
		}
		if(r1_Code.equals("1")){
			orderService.updateStatus(r6_Order, 2);
			if(r9_BType.equals("1")){
				this.getRequest().setAttribute("code", "success");
				this.getRequest().setAttribute("msg","恭喜，支付成功！");
				return "msg";
			}else if(r9_BType.equals("2")){
				this.getResponse().getWriter().print("success");
			}
		}
		return null;
		
	}
	
}
