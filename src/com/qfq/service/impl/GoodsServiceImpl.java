package com.qfq.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import cn.itcast.commons.CommonUtils;

import com.qfq.dao.BaseDao;
import com.qfq.po.Category;
import com.qfq.po.Color;
import com.qfq.po.Goods;
import com.qfq.po.Goodstype;
import com.qfq.po.Installment;
import com.qfq.po.Monthprovide;
import com.qfq.po.Userinfo;
import com.qfq.service.GoodsService;

public class GoodsServiceImpl implements GoodsService{

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
			gt.setCount(Integer.valueOf(type$price[i][2]));
			gt.setGoods(goods);
			typeSet.add(gt);
		}
		goods.setGoodstypes(typeSet);
		
		Category category = new Category();
		category.setId(categoryId);
		goods.setCategory(category);
		//System.out.println(colorSet.iterator().next().getColorname()+" - "+monthSet.iterator().next().getMonths()+" - "+typeSet.iterator().next().getTypename());
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
	
	public Goods getGoods(String goodsId) {
		List<Goods> list = baseDao.findByHql("from Goods where id = "+goodsId);
		if(list != null && list.size() != 0){
			return list.get(0);
		}
		return null;
	}
	
	public int getGoodsCount(String goodsName, String goodsBrand,
			String categoryID) {
		String hql = "select count(g.id) from Goods g " +
				"where g.name LIKE '%"+goodsName+"%' and g.brand like'%"+goodsBrand+"%'";
		if(categoryID != null && !"".equals(categoryID.trim())){
			hql += " and g.category.id = "+categoryID.trim();
		}
		try{
			return baseDao.countQuery(hql);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List<Goods> getPaperGoods(String goodsName, String goodsBrand,
			String categoryId, int beginIndex, int everyPage) {
		String hql = "from Goods g " +
				"where g.name LIKE '%"+goodsName+"%' and g.brand like'%"+goodsBrand+"%'";
		if(categoryId != null && !"".equals(categoryId.trim())){
			hql += " and g.category.id = "+categoryId.trim();
		}
		System.out.println("getPagerGoods - hql: "+hql);
		List<Goods> list = baseDao.findByHql(hql, beginIndex, everyPage);
		if(list == null || list.size() == 0){
			return null;
		}
		return list;
	}

	public int getGoodsCount(String searchOption, String categoryID) {
		String hql = "select count(g.id) from Goods g " +
				"where (g.name LIKE '%"+searchOption+"%' or g.brand like'%"+searchOption+"%')";
		if(categoryID != null && !"".equals(categoryID.trim())){
			hql += " and g.category.id = "+categoryID.trim();
		}
		try{
			return baseDao.countQuery(hql);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public List<Goods> getPaperGoods(String searchOption, String categoryId,
			int beginIndex, int everyPage) {
		String hql = "from Goods g " +
				"where (g.name LIKE '%"+searchOption+"%' or g.brand like'%"+searchOption+"%')";
		if(categoryId != null && !"".equals(categoryId.trim())){
			hql += " and g.category.id = "+categoryId.trim();
		}
		System.out.println("getPagerGoods - hql: "+hql);
		List<Goods> list = baseDao.findByHql(hql, beginIndex, everyPage);
		if(list == null || list.size() == 0){
			return null;
		}
		return list;
	}
	
	public int deleteGoods(String[] goodsIDs) {
		try{
			//String hql = "delete from Goods where id = ?";
			Goods g = null;
			for(String id : goodsIDs){
				id = id.trim();
				System.out.println("deleteGoods - id: "+id);
				List<Installment> list = baseDao.findByHql("from Installment i where i.goods.id = "+id);
				if(list != null && list.size() != 0){
					return 1;
				}
				String hqlColor = "delete from color where g_id = "+id;
				baseDao.callProcedure(hqlColor);
				String hqlGoodstype = "delete from goodstype where g_id = "+id;
				baseDao.callProcedure(hqlGoodstype);
				String hqlMonthprovide = "delete from monthprovide where g_id = "+id;
				baseDao.callProcedure(hqlMonthprovide);
				g = new Goods();
				g.setId(Integer.valueOf(id).intValue());
				baseDao.delete(g);//在hbm.xml中配置cascade级联删除
			}
		}catch (Exception e) {
			e.printStackTrace();
			return 2;
		}
		return 0;
	}
	
	public boolean updateGoods(Goods goods) {
		try{
			baseDao.saveOrUpdate(goods);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public int saveOrder(String goodsId, String goodstypeId, String colorId,
			String monthId, String address, String receiver, String tel) {
		try{
			Goods goods = new Goods();
			goods.setId(Integer.valueOf(goodsId));
			
			Userinfo user = new Userinfo();
			user.setId(1);
			
			Color color = new Color();
			color.setId(Integer.valueOf(colorId));
			
			List<Monthprovide> list = baseDao.findByHql("from Monthprovide where id = "+monthId);
			if(list == null || list.size() == 0){
				return 1;
			}
			
			List<Goodstype> list2 = baseDao.findByHql("from Goodstype where id = "+goodstypeId);
			if(list2 == null || list2.size() == 0){
				return 1;
			}
			if(list2.get(0).getCount() < 1){
				return 2;
			}
			
			Installment in = new Installment();
			in.setOrderID(CommonUtils.uuid());
			in.setPayMonth(list.get(0).getMonths());
			in.setPayPrice(list2.get(0).getPrice());
			in.setGoodsType(list2.get(0).getTypename());
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			in.setDate(format.format(date));
			in.setStatus(0);
			in.setAddress(address);
			in.setTel(tel);
			in.setReceiver(receiver);
			in.setUserinfo(user);
			in.setColor(color);
			in.setGoods(goods);
			baseDao.save(in);
			baseDao.callProcedure("update Goodstype g set g.count=g.count-1 where g.id = "+goodstypeId);
		}catch (Exception e) {
			e.printStackTrace();
			return 1;
		}
		return 0;
	}
	
}
