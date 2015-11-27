package com.qfq.service.impl;


import java.io.IOException;



import java.sql.SQLException;
import java.text.MessageFormat;
import java.util.List;
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
import com.qfq.utils.UserException;
import com.sun.xml.internal.ws.wsdl.writer.UsingAddressing;

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
			String hql = "from Userinfo u where u.username ='"+username+"'";
			List list =   baseDao.findByHql(hql);
			if(list.size()>0)
			return false;
			return true;
	}


	public boolean ajaxValidateEmail(String email) {
		String hql = "from Userinfo u where u.email ='"+email+"'";
		List list =   baseDao.findByHql(hql);
		if(list.size()>0)
		return false;
		return true;
			
	}


	public void saveUser(UserInfoEntity formUser) {
		/*
		 * 1. 数据的补齐
		 */
		Userinfo userinfo = new Userinfo();
		userinfo.setUsername(formUser.getUsername());
		userinfo.setPassword(formUser.getPassword());
		userinfo.setIp(formUser.getIp());
		userinfo.setEmail(formUser.getEmail());
		userinfo.setStatus((short) 0);
		userinfo.setActivationCode(CommonUtils.uuid() + CommonUtils.uuid());
		System.out.println("准备执行！");
		baseDao.save(userinfo);
		System.out.println("执行成功！");
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
		String content = MessageFormat.format(prop.getProperty("content"), userinfo.getActivationCode());
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


	public void updateActivation(String code) throws UserException {
		/*
		 * 1.通过激活码查询用户
		 * 2.如果用户为null，说明是无效激活码，抛出异常，给出异常信息(无效激活码)
		 * 3.查询用户状态是否为true,如果为true，抛出异常，给出异常信息（请不要二次激活）
		 * 4.修改用户状态为true
		 */
		Userinfo user;
		String hql = " from Userinfo u where u.activationCode='"+code+"'";
		user=  (Userinfo) baseDao.loadObject(hql);
		if(user==null)throw new UserException("无效的激活码！");
		System.out.println(user.getStatus());
		if(user.getStatus()!=0)throw new UserException("您已经激活过了，请不要二次激活！");
		user.setStatus((short) 1);
		baseDao.saveOrUpdate(Userinfo.class);//修改状态
	}
}
