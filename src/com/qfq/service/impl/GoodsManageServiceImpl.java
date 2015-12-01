package com.qfq.service.impl;

import java.util.HashSet;
import java.util.List;

import com.qfq.dao.BaseDao;
import com.qfq.po.Category;
import com.qfq.po.Color;
import com.qfq.po.Goods;
import com.qfq.po.Goodstype;
import com.qfq.po.Monthprovide;
import com.qfq.service.GoodsManageService;

public class GoodsManageServiceImpl implements GoodsManageService{

	private BaseDao baseDao;
	
	public BaseDao getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public List<Category> getAllCatagory() {
		try{
			return baseDao.findByHql("from Category where pid is null");
		}catch (Exception e) {
			System.out.println("error of getting message: "+e.getMessage());
		}
		return null;
	}
	
	public List<Category> getSecondCategory(int categoryId) {
		try{
			return baseDao.findByHql("from Category where pid = "+categoryId);
		}catch (Exception e) {
			System.out.println("error of getting message: "+e.getMessage());
		}
		return null;
	}
	
	public boolean saveGoods(Goods goods, Integer categoryId, String[] colors, String[] periods,
			String[][] type$price) {
		HashSet<Color> colorSet = new HashSet<Color>();
		Color c;
		for(String co : colors){
			c = new Color();
			c.setColorname(co);
			c.setGoods(goods);
			colorSet.add(c);
		}
		goods.setColors(colorSet);
		
		Double defaultPrice = Double.valueOf(type$price[0][1]);
		HashSet<Monthprovide> monthSet = new HashSet<Monthprovide>();
		Monthprovide m;
		for(String pe : periods){
			m = new Monthprovide();
			Integer period = Integer.valueOf(pe);
			m.setMonths(period);
			m.setUnitPrice(defaultPrice/period);
			m.setGoods(goods);
			monthSet.add(m);
		}
		goods.setMonthprovides(monthSet);
		
		HashSet<Goodstype> typeSet = new HashSet<Goodstype>();
		Goodstype gt;
		for(int i = 0; i < type$price.length; i++){
			gt = new Goodstype();
			gt.setTypename(type$price[i][0]);
			gt.setPrice(Double.valueOf(type$price[i][1]));
			gt.setGoods(goods);
			typeSet.add(gt);
		}
		goods.setGoodstypes(typeSet);
		
		Category category = new Category();
		category.setId(categoryId);
		goods.setCategory(category);
		System.out.println(colorSet.iterator().next().getColorname()+" - "+monthSet.iterator().next().getMonths()+" - "+typeSet.iterator().next().getTypename());
		try{
			baseDao.save(goods);
			baseDao.saveOrUpdateAll(typeSet);
			baseDao.saveOrUpdateAll(monthSet);
			baseDao.saveOrUpdateAll(colorSet);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public Goods getGoods(int goodsId) {
		List<Goods> list = baseDao.findByHql("from Goods where id = "+goodsId);
		if(list != null && list.size() != 0){
			return list.get(0);
		}
		return null;
	}

	
}
