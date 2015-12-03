package com.qfq.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.qfq.po.Category;
import com.qfq.po.Goods;
import com.qfq.po.Goodstype;
import com.qfq.service.GoodsService;

public class GoodsAction extends BaseAction{

	private GoodsService goodsService;
	
	private List<Category> categoryList;
	private List<Goods> goodsList;
	private Goods goods;
	
	//setter,getter
	public GoodsService getGoodsService() {
		return goodsService;
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

	//Action的方法
	public String showGoods(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String categoryId = request.getParameter("categoryId");
		if(categoryId != null && !"".equals(categoryId)){
			setGoodsList(goodsService.getGoodsByCategory(Integer.valueOf(categoryId), 0, 20));
		}else{
			this.goodsList = goodsService.getAllGoods(0, 20);
		}
		
		setCategoryList(goodsService.getAllCatagory());
//		for(Category c : categoryList){
//			if(null != c.getCategories()){
//				for(Object o : c.getCategories()){
//					System.out.println("zi: " + ((Category) o).getName());
//				}
//			}
//			System.out.println("fu: " + c.getName());;
//		}
//		for(Goods g : goodsList){
//			System.out.println("goods: " + g.getName());
//		}
		return SUCCESS;
	}
	
	public String showGoodsDetail(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String goodsId = request.getParameter("goodsId");
		goods = goodsService.getGoods(goodsId.trim());
		
		for(Object o : goods.getGoodstypes()){
			Goodstype gt = (Goodstype)o;
			System.out.println("showGoodsDetail: "+gt.getTypename()+" - "+gt.getPrice());
		}
		return SUCCESS;
	}
}
