package com.qfq.service.impl;

import java.util.Iterator;

import java.util.List;

import java.util.Set;

import net.sf.json.JSONArray;

import com.qfq.dao.BaseDao;
import com.qfq.entity.AdminEntity;
import com.qfq.po.Admin;
import com.qfq.po.Rolemenu;
import com.qfq.service.AdminService;

public class AdminServiceImpl implements AdminService{

	private BaseDao baseDao;

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public AdminEntity login(String code, String pass) {
		String hql="from Admin as t where t.name='"+code+"' and t.password='"+pass+"'";
		Admin admin = (Admin)baseDao.loadObject(hql);
		Set<Rolemenu>rolemenu=admin.getRoleinfo().getRolemenus();
		Iterator<Rolemenu>it = rolemenu.iterator();
		while(it.hasNext()){
			System.out.println(it.next().getMenu().getName());
		}
//		if(admin!=null){
//			AdminEntity dto = AdminEntity.createDto(user);
//			hql = "from Vusermenu as t where t.userid="+user.getUserid();
//			List list = baseDao.findByHql(hql);
//			JSONArray jsong = JSONArray.fromObject(new UserMenuDTO().getTree(0,list));
//			dto.setUsermenu(jsong.toString());
//			return dto;
//		}
//		return null;
		return null;
	}

//	public void findPageUser(Page page) {
//		// TODO Auto-generated method stub
//		
//	}

	public boolean saveOrUpdateUser(AdminEntity adminEntity) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public static void main(String args[]){
		AdminServiceImpl a = new AdminServiceImpl();
		a.login("admin","admin");
	}
	
}
