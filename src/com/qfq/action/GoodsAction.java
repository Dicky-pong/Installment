package com.qfq.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.qfq.po.Category;
import com.qfq.po.Goods;
import com.qfq.po.Goodstype;
import com.qfq.service.GoodsService;
import com.qfq.utils.Page;
import com.qfq.utils.PageUtil;

public class GoodsAction extends BaseAction{

	private GoodsService goodsService;
	private Page page;
	
	private List<Category> categoryList;
	private List<Goods> goodsList;
	private Goods goods;
	private String searchOption;//查询时的接受条件
	private String categoryId4Search;//查询时需要接受的二级分类ID
	
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
		
		for(Object o : goods.getGoodstypes()){
			Goodstype gt = (Goodstype)o;
			System.out.println("showGoodsDetail: "+gt.getTypename()+" - "+gt.getPrice());
		}
		return SUCCESS;
	}
}
