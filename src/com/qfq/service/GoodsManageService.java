package com.qfq.service;

import java.util.List;

import com.qfq.po.Category;
import com.qfq.po.Goods;

public interface GoodsManageService {
	/**
	 * 获取所有分类
	 * @return
	 */
	public List<Category> getAllCatagory();
	
	/**
	 * 通过一级分类的ID来获得对应的二级分类
	 * @param categoryId 一级分类的ID
	 * @return 所属的二级分类们
	 */
	public List<Category> getSecondCategory(int categoryId);
	
	/**
	 * 保存商品，和与之关联颜色、类型及其价格、分期及其单价
	 * @param goods
	 * @param categoryId
	 * @param colors
	 * @param periods
	 * @param type$price
	 * @return
	 */
	public boolean saveGoods(Goods goods, Integer categoryId, String[] colors, String[] periods, String[][] type$price);
	
	/**
	 * 根据商品的ID获取商品对象信息
	 * @param goodsId
	 * @return
	 */
	public Goods getGoods(int goodsId);
	
	/**
	 * 获取商品查询条件下的总数目
	 * @param goodsName
	 * @param goodsBrand
	 * @param categoryID
	 * @return
	 */
	public int getGoodsCount(String goodsName, String goodsBrand, String categoryID);
	
	/**
	 * 通过查询条件获取商品列表
	 * @param goodsName
	 * @param goodsBrand
	 * @param category
	 * @param beginIndex
	 * @param everyPage
	 * @return
	 */
	public List<Goods> getPaperGoods(String goodsName, String goodsBrand, String category, int beginIndex, int everyPage);
}
