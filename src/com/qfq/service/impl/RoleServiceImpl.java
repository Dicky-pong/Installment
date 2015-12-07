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
		//System.out.println(colorSet.iterator().next().getColorname()+" - "+monthSet.iterator().next().getMonths()+" - "+typeSet.iterator().next().getTypename());
		try{
			baseDao.save(roleinfo);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public int deleteRole(String[] roleIds) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Roleinfo> getPaperRole(int beginIndex, int everyPage) {
		String hql = "from Roleinfo";
		System.out.println("getPagerRoles - hql: "+hql);
		List<Roleinfo> list = baseDao.findByHql(hql, beginIndex, everyPage);
		if(list == null || list.size() == 0){
			return null;
		}
		return list;
	}

	public int getRoleCount() {
		// TODO Auto-generated method stub
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
