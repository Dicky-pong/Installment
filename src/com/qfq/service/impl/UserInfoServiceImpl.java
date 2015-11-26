package com.qfq.service.impl;


import java.io.IOException;

import java.text.MessageFormat;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;


import cn.itcast.commons.CommonUtils;
import cn.itcast.mail.Mail;
import cn.itcast.mail.MailUtils;

import com.qfq.dao.BaseDao;
import com.qfq.entity.UserInfoEntity;

import com.qfq.po.Userinfo;
import com.qfq.service.UserInfoService;

public class UserInfoServiceImpl implements UserInfoService{
	private BaseDao baseDao;
	
	
	public BaseDao getBaseDao() {
		return baseDao;
	}


	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}


	/**
	 * 登录功能
	 * @param user
	 * @return
	 */
	public Userinfo login(UserInfoEntity userinfo){
		System.out.println(userinfo.getUsername());
		String hql = "from Userinfo u where u.username = '"+userinfo.getUsername()
				+"' and u.password = '"+userinfo.getPassword()+"'";
		Userinfo user = (Userinfo) baseDao.loadObject(hql);
			return user;
	}
	
	
	public boolean ajaxValidateLoginname(String username){
		
		
		return false;
		
	}


	public boolean ajaxValidateEmail(String email) {
		String hql = "from Userinfo u where u.email ='"+email+"'";
		  Number number = (Number) baseDao.findByHql(hql);
		   return number.intValue()==0;
	}


	public void regist(UserInfoEntity formUser) {
		/*
		 * 1. 数据的补齐
		 */
		System.out.println("cccccccccc");
		formUser.setStatus(false);
		formUser.setActivationCode(CommonUtils.uuid() + CommonUtils.uuid());
		System.out.println("dddddddd");
		baseDao.save(formUser);
		/*
		 * 3. 发邮件
		 */
		/*
		 * 把配置文件内容加载到prop中
		 */
		Properties prop = new Properties();
		try {
			prop.load(this.getClass().getClassLoader().getResourceAsStream("email_template.properties"));
		} catch (IOException e1) {
			throw new RuntimeException(e1);
		}
		/*
		 * 登录邮件服务器，得到session
		 */
		String host = prop.getProperty("host");//服务器主机名
		String name = prop.getProperty("username");//登录名
		String pass = prop.getProperty("password");//登录密码
		Session session = MailUtils.createSession(host, name, pass);
		
		/*
		 * 创建Mail对象
		 */
		String from = prop.getProperty("from");
		String to = formUser.getEmail();
		String subject = prop.getProperty("subject");
		// MessageForm.format方法会把第一个参数中的{0},使用第二个参数来替换。
		// 例如MessageFormat.format("你好{0}, 你{1}!", "张三", "去死吧"); 返回“你好张三，你去死吧！”
		String content = MessageFormat.format(prop.getProperty("content"), formUser.getActivationCode());
		Mail mail = new Mail(from, to, subject, content);
		/*
		 * 发送邮件
		 */
		try {
			MailUtils.send(session, mail);
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		
	}
}
