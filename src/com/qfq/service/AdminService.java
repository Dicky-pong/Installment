package com.qfq.service;

import com.qfq.entity.AdminEntity;


public interface AdminService {

	AdminEntity login(String code, String pass);

//	public void findPageUser(Page page);

	public boolean saveOrUpdateUser(AdminEntity adminEntity);

}
