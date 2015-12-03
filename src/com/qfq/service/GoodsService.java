package com.qfq.service;

import java.util.List;

import com.qfq.po.Category;
import com.qfq.po.Goods;

public interface GoodsService {
	
	/**
	 * 获取指定数量的所有商品
	 * @param start
	 * @param limit
	 * @return
	 */
	public List<Goods> getAllGoods(int start, int limit);

	public List<Category> getAllCatagory();
	
	public List<Goods> getGoodsByCategory(int categoryId, int start, int limit);
	
	public Goods getGoods(String goodsId);
}
