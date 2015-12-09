package com.qfq.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.qfq.po.Category;
import com.qfq.po.Goods;
import com.qfq.po.Goodstype;
import com.qfq.po.Installment;
import com.qfq.po.Monthprovide;
import com.qfq.po.Userinfo;
import com.qfq.service.GoodsService;
import com.qfq.service.OrderService;
import com.qfq.utils.Page;
import com.qfq.utils.PageUtil;
import com.qfq.utils.ResponseUtil;

public class GoodsAction extends BaseAction implements ServletResponseAware{

	private HttpServletResponse response;
	private GoodsService goodsService;
	private Page page;
	
	private List<Category> categoryList;
	private List<Goods> goodsList;
	private Goods goods;
	private OrderService orderService;
	private String searchOption;//查询时的接受条件
	private String categoryId4Search;//查询时需要接受的二级分类ID
	
	
	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	//setter,getter
	public GoodsService getGoodsService() {
		return goodsService;
	}

	public String getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}

	public String getCategoryId4Search() {
		return categoryId4Search;
	}

	public void setCategoryId4Search(String categoryId4Search) {
		this.categoryId4Search = categoryId4Search;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public List<Category> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}

	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	//Action的方法
	public String showGoods(){
		HttpServletRequest req = ServletActionContext.getRequest();
		int currentPage = 1;
		String currentPageStr = req.getParameter("currentPage");
		if (null == currentPageStr || "".equals(currentPageStr)) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		if(searchOption == null||"".equals(searchOption.trim())){
			searchOption="";
		}
		int everyPage = 8;
		int totalCount = goodsService.getGoodsCount(searchOption, categoryId4Search);
		page = PageUtil.createPage(everyPage, totalCount, currentPage);
		goodsList = goodsService.getPaperGoods(searchOption, categoryId4Search, page.getBeginIndex(), everyPage);
		categoryList = goodsService.getAllCatagory();
		System.out.println("GoodsAction "+totalCount+"- searchOption: "+searchOption+"\ncategoryId4Search:"+categoryId4Search);
		if(goodsList != null && goodsList.size() != 0)
			System.out.println("the goodsList : "+goodsList.size());
		else
			System.out.println("goodsList is null!!");
		return SUCCESS;
	}
	
	public String showGoodsDetail(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String goodsId = request.getParameter("goodsId");
		goods = goodsService.getGoods(goodsId.trim());
		
		System.out.println("goods's month: "+((Monthprovide)goods.getMonthprovides().iterator().next()).getUnitPrice());
		
		for(Object o : goods.getGoodstypes()){
			Goodstype gt = (Goodstype)o;
			System.out.println("showGoodsDetail: "+gt.getTypename()+" - "+gt.getPrice());
		}
		return SUCCESS;
	}
	
	public String makeOrder(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String goodstypeId = request.getParameter("goodstypeId");
		String colorId = request.getParameter("colorId");
		String monthId = request.getParameter("monthId");
		String goodsId = request.getParameter("goodsId");
		
		String cityAddress = request.getParameter("cityAddress");
		String detailAddress = request.getParameter("detailAddress");
		String receiver = request.getParameter("receiver");
		String tel = request.getParameter("tel");
		Userinfo user = (Userinfo) this.getSession().getAttribute("sessionUser");
		
		String result = goodsService.saveOrder(user.getId(), goodsId, goodstypeId, colorId, monthId, 
				cityAddress+detailAddress, receiver, tel);
			Installment installment = orderService.load(result);
			this.getRequest().setAttribute("order", installment);
		System.out.println("make order!! - type:"+goodstypeId+" - "+colorId+" - "+monthId+" - "+goodsId+
				" \n "+cityAddress+ " - " +detailAddress+" - "+receiver+" - "+tel);
//		if(0 == result){
//			sendSimpleMsg(1, "下单成功！");
//			System.out.println("success order!");
//		}else if(1 == result){
//			sendSimpleMsg(0, "下单时出现问题，请重试！");
//			System.out.println("failed order!");
//		}
		return SUCCESS;
	}

	public void setServletResponse(HttpServletResponse arg0) {
		response = arg0;
	}
	/**
	 * 以数据流的方式发送简单的信息，主要回应Ajax的请求
	 * @param code 信息的标识码， 目前有0和1
	 * @param msg 信息的内容
	 */
	private void sendSimpleMsg(int code, String msg){
		JSONObject object = new JSONObject();
		object.put("code", code);
        object.put("message", msg);
        ResponseUtil.renderJson(response, object.toString());
	}
}
