package com.qfq.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ModelDriven;
import com.qfq.entity.CategoryEntity;
import com.qfq.po.Category;
import com.qfq.po.Goods;
import com.qfq.po.Goodstype;
import com.qfq.service.GoodsManageService;
import com.qfq.utils.Page;
import com.qfq.utils.PageUtil;
import com.qfq.utils.ResponseUtil;

public class GoodsManageAction extends BaseAction implements ModelDriven<Goods>,ServletResponseAware{
	
	private HttpServletResponse response;
	private GoodsManageService goodsManageService;
	private Page page;
	
	private Goods goods = new Goods();
	private List<Goods> goodsList;
	private Category category;
	private List<Category> categoryList;
	private String[] colorCheck;
	private String[] periodCheck;
	private String[] price;
	private String[] style;
	private String categoryId;//添加商品时的二级分类ID

	
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String[] getPrice() {
		return price;
	}
	public void setPrice(String[] price) {
		this.price = price;
	}
	public String[] getStyle() {
		return style;
	}
	public void setStyle(String[] style) {
		this.style = style;
	}
	public String[] getColorCheck() {
		return colorCheck;
	}
	public void setColorCheck(String[] colorCheck) {
		this.colorCheck = colorCheck;
	}
	public String[] getPeriodCheck() {
		return periodCheck;
	}
	public void setPeriodCheck(String[] periodCheck) {
		this.periodCheck = periodCheck;
	}
	public GoodsManageService getGoodsManageService() {
		return goodsManageService;
	}
	public void setGoodsManageService(GoodsManageService goodsManageService) {
		this.goodsManageService = goodsManageService;
	}
	public List<Category> getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	public String showGoods(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String goodsId = request.getParameter("goodsId");
		goods = goodsManageService.getGoods(Integer.valueOf(goodsId).intValue());
		for(Object o : goods.getGoodstypes()){
			Goodstype gt = (Goodstype)o;
			System.out.println("sghowgood:: "+gt.getTypename()+" - "+gt.getPrice());
		}
		return SUCCESS;
	}
	
	public String showAllGoods(){
		HttpServletRequest req = ServletActionContext.getRequest();
		int currentPage = 1;
		String goodsBrand = goods.getBrand();
		String goodsName = goods.getName();
		String currentPageStr = req.getParameter("currentPage");
		if (null == currentPageStr || "".equals(currentPageStr)) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		if(goodsBrand == null||"不限".equals(goodsBrand.trim())){
			goods.setBrand(goodsBrand="");
		}
		if(goodsName == null||"不限".equals(goodsName.trim())){
			goods.setName(goodsName="");
		}
		int everyPage = 5;
		int totalCount = goodsManageService.getGoodsCount(goods.getName(), goods.getBrand(), categoryId);
		page = PageUtil.createPage(everyPage, totalCount, currentPage);
		goodsList = goodsManageService.getPaperGoods(goods.getName(), goods.getBrand(), categoryId, page.getBeginIndex(), everyPage);
		categoryList = goodsManageService.getAllCatagory();
		System.out.println("goodsName:"+goods.getName()+"\ngoodsbrand: "+goods.getBrand()+"\ncategoryID:"+categoryId);
		System.out.println("the goodsList : "+goodsList.size());
		return SUCCESS;
	}
	
	public String createGoods(){
		System.out.println("crateGoods");
		if(price != null){
			String[][] price$style = new String[price.length][2];
			for(int i=0; i<price.length; i++){
				price$style[i][0] = style[i];
				price$style[i][1] = price[i];
				System.out.println("style & price : "+style[i]+" - "+price[i]);
			}
//			System.out.println("perpare to create!!!");
			try{
				goodsManageService.saveGoods(goods, Integer.valueOf(categoryId), colorCheck, periodCheck, price$style);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	public String toCreateGoods(){
		setCategoryList(goodsManageService.getAllCatagory());
		
		return SUCCESS;
	}
	/**
	 * ajax分类二级联动获取二级分类的接口
	 */
	public void getSecondCategory() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String categoryId = request.getParameter("categoryId");//如何保证categoryId一定有效？
		List<Category> list;
		if(null == categoryId || "".equals(categoryId)){
			list =  goodsManageService.getSecondCategory(0);
		}
		list =  goodsManageService.getSecondCategory(Integer.valueOf(categoryId).intValue());
		JSONObject object = new JSONObject();
		if(list != null){
			JSONArray array = new JSONArray();
			CategoryEntity categoryEntity;
			for(Category category : list){
				categoryEntity = new CategoryEntity();
				categoryEntity.setId(category.getId());
				categoryEntity.setName(category.getName());
				array.add(categoryEntity);
			}
			object.put("code", 1);
            object.put("message", array);
			System.out.println("Action -- getcategory success: "+object);
            ResponseUtil.renderJson(response, object.toString());
		}else{
			sendFailureMsg("系统尚未创建角色！");
		}
	}
	
	public void setServletResponse(HttpServletResponse arg0) {
		response = arg0;
	}
	/**
	 * 以数据流的方式发送失败的信息
	 * @param msg 失败信息的内容
	 */
	private void sendFailureMsg(String msg){
		JSONObject object = new JSONObject();
		object.put("code", 0);
        object.put("message", msg);
		System.out.println("Action - failed: "+object.toString());
        ResponseUtil.renderJson(response, object.toString());
	}
	public Goods getModel() {
		return goods;
	}
}
