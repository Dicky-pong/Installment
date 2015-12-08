package com.qfq.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ModelDriven;
import com.qfq.po.Roleinfo;
import com.qfq.service.RoleService;
import com.qfq.utils.Page;
import com.qfq.utils.PageUtil;

public class RoleAction extends BaseAction implements ModelDriven<Roleinfo>{
	
	private RoleService roleService;
	
	private Roleinfo role = new Roleinfo();
	private List<Roleinfo> roleList;
	private Page page;
	
	public Roleinfo getModel() {
		return role;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List<Roleinfo> getRoleList() {
		return roleList;
	}
	public void setRoleList(List<Roleinfo> roleList) {
		this.roleList = roleList;
	}
	public RoleService getRoleService() {
		return roleService;
	}
	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
	
	public String toCreateRole(){
		setRoleList(roleService.getAllRole());
		System.out.println("toCreateRole: "+role);
		return SUCCESS;
	}
	public String createRole(){
		System.out.println("dreateRole - role:"+role);
		try{
			roleService.saveRole(role);
		}catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	public String deleteRole() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String[] strs = request.getParameterValues("choose");
		if(strs != null){
			for(int i =0; i<strs.length; i++){
				System.out.println("delete strs的第"+i+"个字符值： "+strs[i]);
			}
			try{
				System.out.println("deleteRole's result: "+roleService.deleteRole(strs));
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return ERROR;
			}
		}
		return SUCCESS;
	}
	
	public String showRole(){
		System.out.println("toUpdateRole - ");
		HttpServletRequest request = ServletActionContext.getRequest();
		String roleId = request.getParameter("roleId");
//		role = roleService.getRole(roleId.trim());
		roleList = roleService.getAllRole();
		
		return SUCCESS;
	}
	public String updateRole(){
		System.out.println("Action updateRole: id:"+role.getId()+" name"+role.getName());
//		roleService.updateRole(role, Integer.valueOf(roleId));
		return SUCCESS;
	}
	
	public String showAllRole(){
		HttpServletRequest req = ServletActionContext.getRequest();
		int currentPage = 1;
		String currentPageStr = req.getParameter("currentPage");
		if (null == currentPageStr || "".equals(currentPageStr)) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		int everyPage = 5;
		int totalCount = roleService.getRoleCount();
		page = PageUtil.createPage(everyPage, totalCount, currentPage);
		roleList = roleService.getPaperRole(page.getBeginIndex(), everyPage);
//		roleList = roleService.getAllRole();
		System.out.println("RoleAction - ");
		return SUCCESS;
	}
}
