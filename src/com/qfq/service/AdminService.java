package com.qfq.service;

import java.util.List;

import com.qfq.entity.AdminEntity;
import com.qfq.po.Admin;
import com.qfq.po.Category;
import com.qfq.po.Roleinfo;


public interface AdminService {

	public boolean login(String code, String pass);

//	public void findPageUser(Page page);

	public boolean saveOrUpdateUser(AdminEntity adminEntity);

	/**
	 * 保存新增管理员
	 * @param admin 包含新增数据的管理员对象
	 * @param roleId 管理员的角色ID
	 * @return 插入成功与否
	 */
	public boolean saveAdmin(Admin admin, Integer roleId);
	
	/**
	 * 更新管理员信息
	 * @param admin 包含新数据的管理员对象
	 * @param roleId 管理员新的角色的ID，如果为null或0，则不更新角色
	 * @return
	 */
	public boolean updateAdmin(Admin admin, Integer roleId);
	
	/**
	 * 通过多个ID批量删除管理员
	 * @param adminIds 要删除的管理员ID组成的数组
	 * @return 0删除成功；1出现异常
	 */
	public int deleteAdmin(String[] adminIds);
	
	/**
	 * 通过角色ID获取管理员分页列表
	 * @param roleId 可为null或空字符，表示不起限制作用
	 * @param beginIndex 从哪一项开始获取，必须是有效int
	 * @param everyPage 每页显示数量，必须是有效int
	 * @return 
	 */
	public List<Admin> getPaperAdmin(String roleId, int beginIndex, int everyPage);
	
	/**
	 * 获取管理员在查询条件下的总数目
	 * @param roleId 可为null或空字符，表示不起限制作用
	 * @return
	 */
	public int getAdminCount(String roleId);
	
	/**
	 * 通过管理员ID获取管理员对象
	 * @param adminId
	 * @return
	 */
	public Admin getAdmin(String adminId);
	
	/**
	 * 获取所有角色
	 * @return
	 */
	public List<Roleinfo> getAllRole();
}
