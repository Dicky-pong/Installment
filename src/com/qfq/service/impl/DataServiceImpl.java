package com.qfq.service.impl;

import java.util.List;

import com.qfq.dao.BaseDao;
import com.qfq.service.DataService;

public class DataServiceImpl implements DataService{
	
	private BaseDao baseDao;
	
	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public int[] getSalesByGoods(String goodsId, String year, String month) {
		String hql = "select * from installment where g_id = 24 and date like "+year+"-"+month+"%";
		baseDao.findByHql("");
		return new int[0];
	}

	public int[] getSalesByGoods(String goodsId, String year) {
		int[] datas = new int[12];
		String baseHql = "select count(i.id) from Installment i where i.goods.id = "+goodsId+" and i.date like '"+year+"-";
		String hql;
		for(int i = 0; i < 12; i++){
			if((i+1)<10){
				hql = baseHql + "0" + (i+1) + "-%'";
			}else{
				hql = baseHql + (i+1) + "-%'";
			}
			System.out.println("getSalesByGoods - hql: "+hql);
			
			List list = baseDao.findByHql(hql);
			if(list == null || list.size() == 0){
				datas[i] = 0;
			}else{
				datas[i] = Integer.valueOf(list.get(0).toString());
			}
		}
		
		return datas;
	}
	
}
