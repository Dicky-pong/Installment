package com.qfq.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ModelDriven;
import com.qfq.entity.AdminEntity;
import com.qfq.po.Admin;
import com.qfq.po.Roleinfo;
import com.qfq.service.AdminService;
import com.qfq.utils.Page;
import com.qfq.utils.PageUtil;



public class AdminAction extends BaseAction implements ModelDriven<Admin>{
	private Admin admin = new Admin();
	private List<Admin> adminList;
	private String roleId;//添加管理员账号的时候接受角色的ID
	private String roleId4Search;//
	private List<Roleinfo> roleList;
	private Page page;
	
	private AdminEntity adminEntity;
	private AdminService adminService;
	
	
	public String getRoleId4Search() {
		return roleId4Search;
	}

	public void setRoleId4Search(String roleId4Search) {
		this.roleId4Search = roleId4Search;
	}

	public List<Admin> getAdminList() {
		return adminList;
	}

	public void setAdminList(List<Admin> adminList) {
		this.adminList = adminList;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	public Admin getModel() {
		return this.admin;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public List<Roleinfo> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Roleinfo> roleList) {
		this.roleList = roleList;
	}

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
			if (adminService.login(code, pass)) {
				this.getSession().setAttribute("sessionAdmin", adminEntity);
				return "goto";
			} else{
				this.getRequest().setAttribute("error", "用户名或密码错误");
				return "adminLogin";
			}
		}catch (Exception e) {
			e.printStackTrace();
			this.getRequest().setAttribute("error", "连接失败");
			return "adminLogin";
		}
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
//	public String findPageUser() {
//		try {
//			Page page = new Page();
//			page.setStart(this.getStart());
//			page.setLimit(this.getLimit());
//			adminService.findPageUser(page);
//			this.outPageString(page);
//		} catch (Exception e) {
//			e.printStackTrace();
//			this.outError();
//		}
//		return null;
//	}
	
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
	
	public String toCreateAdmin(){
		setRoleList(adminService.getAllRole());
		System.out.println("toCreateAmin - roleList: "+roleList);
		return SUCCESS;
	}
	public String createAdmin(){
		System.out.println("dreateAdmin - admin:"+admin+" - roleId:"+roleId);
		try{
			if(roleId != null && !"".equals(roleId)){
				adminService.saveAdmin(admin, Integer.valueOf(roleId));
			}else
				return ERROR;
		}catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	public String deleteAdmin() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String[] strs = request.getParameterValues("choose");
		if(strs != null){
			for(int i =0; i<strs.length; i++){
				System.out.println("delete strs的第"+i+"个字符值： "+strs[i]);
			}
			try{
				System.out.println("deleteAdmin: "+adminService.deleteAdmin(strs));
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return ERROR;
			}
		}
		return SUCCESS;
	}
	
	public String showAdmin(){
		System.out.println("toUpdateAdmin - roleId4Search"+roleId4Search);
		HttpServletRequest request = ServletActionContext.getRequest();
		String adminId = request.getParameter("adminId");
		admin = adminService.getAdmin(adminId.trim());
		roleList = adminService.getAllRole();
		
		return SUCCESS;
	}
	public String updateAdmin(){
		System.out.println("Action updateAdmin: id:"+admin.getId()+" name"+admin.getName());
		adminService.updateAdmin(admin, Integer.valueOf(roleId));
		return SUCCESS;
	}
	
	public String showAllAdmin(){
		HttpServletRequest req = ServletActionContext.getRequest();
		int currentPage = 1;
		String currentPageStr = req.getParameter("currentPage");
		if (null == currentPageStr || "".equals(currentPageStr)) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		int everyPage = 5;
		int totalCount = adminService.getAdminCount(roleId4Search);
		page = PageUtil.createPage(everyPage, totalCount, currentPage);
		adminList = adminService.getPaperAdmin(roleId4Search, page.getBeginIndex(), everyPage);
		roleList = adminService.getAllRole();
		System.out.println("AdminAction - roleId4Search:"+roleId4Search);
		return SUCCESS;
	}
	
	public String backIndex(){
		return SUCCESS;
	}
}
