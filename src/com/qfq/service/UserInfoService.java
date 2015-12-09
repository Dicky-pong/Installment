package com.qfq.service;

import java.util.List;

import com.qfq.dao.BaseDao;
import com.qfq.entity.UserInfoEntity;
import com.qfq.po.Userinfo;
import com.qfq.utils.UserException;

public interface UserInfoService {
	/*
	 * 验证登陆名是否存在
	 */
	public boolean ajaxValidateLoginname(String username);

	/*
	 * 验证登陆信息是否正确
	 */
	public Userinfo login(UserInfoEntity userInfo);

	/*
	 * 验证邮箱是否存在，格式是否正确
	 */
	public boolean ajaxValidateEmail(String  email);

	/*
	 * 添加用户
	 */
	public void saveUser(UserInfoEntity formUser);

	/*
	 * 更新激活状态
	 */
	public void updateActivation(String code) throws UserException;

	/*
	 * 根据用户姓名和Email查询
	 */
	public boolean findByNameAndEmail(String username,String email);

	/*
	 * 验证原密码 
	 */
	public Userinfo validatePass(String username);

	/*
	 * 修改密码
	 */
	public void updatePass(String username,String newpass);

}
