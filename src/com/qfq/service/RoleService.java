package com.qfq.service;

import java.util.List;

import javax.management.relation.Role;

import com.qfq.po.Roleinfo;

public interface RoleService {

	/**
	 * 保存新增角色
	 * @param role 包含新增数据的角色对象
	 * @return 插入成功与否
	 */
	public boolean saveRole(Roleinfo roleinfo);
	
	/**
	 * 通过多个ID批量删除管理员
	 * @param roleIds 要删除的管理员ID组成的数组
	 * @return 0删除成功；1出现异常
	 */
	public int deleteRole(String[] roleIds);
	
	/**
	 * 通过角色ID获取管理员分页列表
	 * @param roleId 可为null或空字符，表示不起限制作用
	 * @param beginIndex 从哪一项开始获取，必须是有效int
	 * @param everyPage 每页显示数量，必须是有效int
	 * @return 
	 */
	public List<Roleinfo> getPaperRole(int beginIndex, int everyPage);
	
	/**
	 * 获取角色在查询条件下的总数目
	 * @return
	 */
	public int getRoleCount();
	
	/**
	 * 通过管理员ID获取管理员对象
	 * @param roleId
	 * @return
	 */
	public Roleinfo getRole(String roleId);
	
	/**
	 * 获取所有角色
	 * @return
	 */
	public List<Roleinfo> getAllRole();
}
