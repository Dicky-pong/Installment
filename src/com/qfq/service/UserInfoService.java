package com.qfq.service;

import java.util.List;

import com.qfq.dao.BaseDao;
import com.qfq.entity.UserInfoEntity;
import com.qfq.po.Userinfo;

public interface UserInfoService {
	public boolean ajaxValidateLoginname(String username);

	public Userinfo login(UserInfoEntity userInfo);

	public boolean ajaxValidateEmail(String  email);

	public void regist(UserInfoEntity formUser);

}
