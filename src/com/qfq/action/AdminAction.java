package com.qfq.action;

import com.qfq.entity.AdminEntity;
import com.qfq.po.Admin;
import com.qfq.service.AdminService;
import com.qfq.utils.Page;
import com.qfq.utils.filter.Constants;



public class AdminAction extends BaseAction{
	private AdminEntity adminEntity;
	private AdminService adminService;
	
	
	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	public AdminEntity getAdminEntity() {
		return adminEntity;
	}

	public void setAdminEntity(AdminEntity adminEntity) {
		this.adminEntity = adminEntity;
	}

	/** 登录验证 */
	public String login() {
		System.out.println(adminEntity.getName());
		System.out.println(adminEntity.getPassword());
		try{
			String code = adminEntity.getName().trim().toLowerCase();
			String pass = adminEntity.getPassword().trim().toLowerCase();
			AdminEntity adminEntity = adminService.login(code, pass);
//			if (adminEntity != null) {
//				this.getSession().setAttribute(Constants.USERINFO, adminEntity);
//				return "success";
//			} else{
//				this.getRequest().setAttribute("error", "用户名或密码错误");
//				return "input";
//			}
		}catch (Exception e) {
			e.printStackTrace();
			this.getRequest().setAttribute("error", "连接失败");
			return "login";
		}
		return null;
	}
	
	/** 用户权限菜单 */
	public String getMenuBuf() {
		AdminEntity adminEntity = this.getAdminEntity();
		try {
			if(adminEntity!=null){
				this.outString(adminEntity.getUsermenu());
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	/** 
	 * 分页查询用户列表 
	 */
	public String findPageUser() {
		try {
			Page page = new Page();
			page.setStart(this.getStart());
			page.setLimit(this.getLimit());
			adminService.findPageUser(page);
			this.outPageString(page);
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	/**
	 * 保存/修改用户
	 */
//	public String saveOrUpdateUser() {
//		try {
//			boolean bool = adminService.saveOrUpdateUser(adminEntity);
//			if(bool){
//				if(adminEntity.getId()==null){
//					this.outString("{success:true,message:'保存成功!'}");
//				}else{
//					this.outString("{success:true,message:'修改成功!'}");
//				}
//			}else{
//				this.outString("{success:false,errors:'用户账号已存在!'}");
//			}
//		} catch (Exception e) {
//			 e.printStackTrace();
//			 this.outError();
//		}
//		return null;
//	}
}
