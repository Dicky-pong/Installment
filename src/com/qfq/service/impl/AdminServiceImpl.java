package com.qfq.service.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.qfq.dao.BaseDao;
import com.qfq.entity.AdminEntity;
import com.qfq.po.Admin;
import com.qfq.po.Roleinfo;
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

	public boolean saveAdmin(Admin admin, Integer roleId) {
		Roleinfo role = new Roleinfo();
		role.setId(roleId);
		admin.setRoleinfo(role);
		//System.out.println(colorSet.iterator().next().getColorname()+" - "+monthSet.iterator().next().getMonths()+" - "+typeSet.iterator().next().getTypename());
		try{
			baseDao.save(admin);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean updateAdmin(Admin admin, Integer roleId) {
		try{
			if(roleId != null && !roleId.equals(0)){
				Roleinfo role = new Roleinfo();
				role.setId(roleId);
				admin.setRoleinfo(role);
			}
			baseDao.saveOrUpdate(admin);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public int deleteAdmin(String[] adminIds) {
		try{
			Admin a = null;
			for(String id : adminIds){
				id = id.trim();
				System.out.println("AdminServiceImpl -- deleteAdmin - id: "+id);
				a = new Admin();
				a.setId(Integer.valueOf(id).intValue());
				baseDao.delete(a);
			}
		}catch (Exception e) {
			e.printStackTrace();
			return 1;
		}
		return 0;
	}

	public List<Admin> getPaperAdmin(String roleId, int beginIndex,
			int everyPage) {
		String hql = "from Admin a " +
				" ";
		if(roleId != null && !"".equals(roleId.trim())){
			hql += " where a.roleinfo.id = "+roleId.trim();
		}
		System.out.println("getPagerAdmins - hql: "+hql);
		List<Admin> list = baseDao.findByHql(hql, beginIndex, everyPage);
		if(list == null || list.size() == 0){
			return null;
		}
		return list;
	}
	
	public int getAdminCount(String roleId) {
		String hql = "select count(a.id) from Admin a ";
		if(roleId != null && !"".equals(roleId.trim())){
			hql += "where a.roleinfo.id = "+roleId.trim();
		}
		try{
			return baseDao.countQuery(hql);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public Admin getAdmin(String adminId) {
		List<Admin> list = baseDao.findByHql("from Admin where id = "+adminId);
		if(list != null && list.size() != 0){
			return list.get(0);
		}
		return null;
	}

	public List<Roleinfo> getAllRole() {
		try{
			return baseDao.findByHql("from Roleinfo");
		}catch (Exception e) {
			System.out.println("error of getting message: "+e.getMessage());
		}
		return null;
	}
	 
}
