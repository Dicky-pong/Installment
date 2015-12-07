package com.qfq.service;

import java.util.List;

import com.qfq.po.Category;
import com.qfq.po.Goods;

public interface GoodsService {
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
	 * 保存商品，和与之关联颜色、分期及其单价、类型及其价格与数量
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
	public Goods getGoods(String goodsId);
	
	/**
	 * 获取商品在查询条件下的总数目
	 * @param goodsName 可为空字符，表示不起限制作用
	 * @param goodsBrand 可为空字符，表示不起限制作用
	 * @param categoryID 可为null或空字符，表示不起限制作用
	 * @return
	 */
	public int getGoodsCount(String goodsName, String goodsBrand, String categoryID);
	
	/**
	 * 通过查询条件获取商品分布列表
	 * @param goodsName 可为空字符，表示不起限制作用
	 * @param goodsBrand 可为空字符，表示不起限制作用
	 * @param categoryId 可为null或空字符，表示不起限制作用
	 * @param beginIndex 从哪一项开始获取，必须是有效int
	 * @param everyPage 每页显示数量，必须是有效int
	 * @return
	 */
	public List<Goods> getPaperGoods(String goodsName, String goodsBrand, String categoryId, int beginIndex, int everyPage);
	
	/**
	 * 根据商品的ID的数组批量删除商品，级联删除颜色表、商品类型表、月供表。如果有分期表，则无法删除
	 * @param goodsIDs
	 * @return 0删除成功；1有分期表引用，无法删除；2出现异常
	 */
	public int deleteGoods(String[] goodsIDs);
	
	/**
	 * 更新商品
	 * @param goods 包含新数据的Goods对象
	 * @return 
	 */
	public boolean updateGoods(Goods goods);
	
	/**
	 * 获取商品在查询条件下的总数目
	 * @param searchOption 可为空字符，表示不起限制作用
	 * @param categoryID 可为null或空字符，表示不起限制作用
	 * @return
	 */
	public int getGoodsCount(String searchOption, String categoryID);
	
	/**
	 * 通过查询条件获取商品分页列表
	 * @param searchOption 商品名称与商品品牌的共享查询条件，可为空字符
	 * @param categoryId 可为null或空字符，表示不起限制作用
	 * @param beginIndex 从哪一项开始获取，必须是有效int
	 * @param everyPage 每页显示数量，必须是有效int
	 * @return
	 */
	public List<Goods> getPaperGoods(String searchOption, String categoryId, int beginIndex, int everyPage);
}
