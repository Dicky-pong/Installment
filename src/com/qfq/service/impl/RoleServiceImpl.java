package com.qfq.service.impl;

import java.util.List;

import com.qfq.dao.BaseDao;
import com.qfq.po.Admin;
import com.qfq.po.Roleinfo;
import com.qfq.service.RoleService;

public class RoleServiceImpl implements RoleService{

	private BaseDao baseDao;

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
	public boolean saveRole(Roleinfo roleinfo) {
		try{
			baseDao.save(roleinfo);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public int deleteRole(String[] roleIds) {
		try{
//			Roleinfo r = null;
			for(String id : roleIds){
				id = id.trim();
//				r = new Roleinfo();
//				r.setId(Integer.valueOf(id).intValue());
				baseDao.callProcedure("delete from Roleinfo where id = "+id);
			}
		}catch (Exception e) {
			e.printStackTrace();
			return 1;
		}
		return 0;
	}

	public List<Roleinfo> getPaperRole(int beginIndex, int everyPage) {
		String hql = "from Roleinfo";
		List<Roleinfo> list = baseDao.findByHql(hql, beginIndex, everyPage);
		if(list == null || list.size() == 0){
			return null;
		}
		return list;
	}

	public int getRoleCount() {
		String hql = "select count(r.id) from Roleinfo r";
		try{
			return baseDao.countQuery(hql);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public Roleinfo getRole(String roleId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Roleinfo> getAllRole() {
		// TODO Auto-generated method stub
		return null;
	}

}
