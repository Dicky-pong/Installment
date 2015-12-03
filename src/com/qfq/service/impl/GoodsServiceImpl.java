package com.qfq.service.impl;

import java.util.List;

import com.qfq.dao.BaseDao;
import com.qfq.po.Category;
import com.qfq.po.Goods;
import com.qfq.service.GoodsService;

public class GoodsServiceImpl implements GoodsService{

	private BaseDao baseDao;
	
	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public List<Goods> getAllGoods(int start, int limit) {
		try{
			System.out.println("getAllGods");
			return baseDao.findByHql("from Goods", start, limit);
		}catch (Exception e) {
			System.out.println("error of getting message: "+e.getMessage());
		}
		return null;
	}
	
	public List<Category> getAllCatagory(){
		try{
			return baseDao.findByHql("from Category where pid is null");
		}catch (Exception e) {
			System.out.println("error of getting message: "+e.getMessage());
		}
		return null;
	}
	
	public List<Goods> getGoodsByCategory(int categoryId, int start, int limit){
		try{
			return baseDao.findByHql("from Goods where c_id = "+categoryId, start, limit);
		}catch (Exception e) {
			System.out.println("error of getting message: "+e.getMessage());
		}
		return null;
	}

	public Goods getGoods(String goodsId) {
		List<Goods> list = baseDao.findByHql("from Goods where id = "+goodsId);
		if(list != null && list.size() != 0){
			return list.get(0);
		}
		return null;
	}
	
}
