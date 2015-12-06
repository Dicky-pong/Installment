package com.qfq.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qfq.entity.UserInfoEntity;
import com.qfq.po.Userinfo;
import com.qfq.service.UserInfoService;


public class UserInfoAction extends BaseAction{
	//版本ID
	private static final long serialVersionUID = 2803636538398903766L;
	
	private UserInfoEntity userInfoEntity;
	private UserInfoService userInfoService;
	public UserInfoEntity getUserInfoEntity() {
		return userInfoEntity;
	}
	public void setUserInfoEntity(UserInfoEntity userInfoEntity) {
		this.userInfoEntity = userInfoEntity;
	}
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}


	/**
	 * 登录功能
	 * @param user
	 * @return
	 */
	public String login(){
		//校验表单数据
		Map<String,String> errors = validateLogin(userInfoEntity, this.getSession());
		if(errors.size() > 0) {
			this.getRequest().setAttribute("form", userInfoEntity);
			this.getRequest().setAttribute("error", errors);
			return "failed";
		}
		Userinfo user= userInfoService.login(userInfoEntity);
		/*
		 * 4.开始判断
		 */
		if(user==null){
			this.getRequest().setAttribute("msg", "用户名或密码错误！");
			this.getRequest().setAttribute("user", user);
			return "failed";
		}else{
			if(!(user.getStatus()==1)){
				this.getRequest().setAttribute("msg", "您还没有激活！");
				this.getRequest().setAttribute("user", user);
				return "failed";
			}else{
				//保存用户到session
				this.getSession().setAttribute("sessionUser",user);
				//获取用户名保存到cookie中
				String username = user.getUsername();
				try {
					username = URLEncoder.encode(username,"utf-8");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				Cookie cookie = new Cookie("username",username);
				cookie.setMaxAge(60*60*24*10);//保存10天
				this.getResponse().addCookie(cookie);
				return SUCCESS;
			}
		}
	}
	
	/**
	 * 注册功能
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String regist(){
		/*
		 * 1. 封装表单数据到User对象
		 */
		UserInfoEntity formUser = userInfoEntity;
		System.out.println(formUser.getUsername());
		System.out.println(formUser.getPassword());
		/*
		 * 2. 校验之, 如果校验失败，保存错误信息，返回到regist.jsp显示
		 */
		Map<String,String> errors = validateRegist(formUser, this.getSession());
		if(errors.size() > 0) {
			System.out.println(errors.get("loginname"));
			this.getRequest().setAttribute("form", formUser);
			this.getRequest().setAttribute("errors", errors);
			return "regist";
		}
		/*
		 * 获取用户ip地址，数据写入formUser
		 */
		String ip= this.getIpAddr();
		formUser.setIp(ip);
		
		/*
		 * 3. 使用service完成业务
		 */
		userInfoService.saveUser(formUser);
		System.out.println("完成保存操作");
		/*
		 * 4. 保存成功信息，转发到msg.jsp显示！
		 */
		this.getRequest().setAttribute("code", "success");
		this.getRequest().setAttribute("msg", "注册功能，请马上到邮箱激活！");
		return "success";
	}
	
	/**
	 * 获取用户真实ip地址
	 * @param request
	 * @return
	 */
	private String getIpAddr( ) { 
		String ip = this.getRequest().getHeader("x-forwarded-for"); 
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
			ip = this.getRequest().getHeader("Proxy-Client-IP"); 
		} 
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
			ip = this.getRequest().getHeader("WL-Proxy-Client-IP"); 
		} 
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
			ip = this.getRequest().getRemoteAddr(); 
		} 
		return ip; 
	} 
	/**
	 * 登录校验方法
	 * @param formUser
	 * @param session
	 * @return
	 */
	private Map<String,String> validateLogin(UserInfoEntity formUser, HttpSession session) {
		Map<String,String> errors = new HashMap<String,String>();
		/*
		 * 1. 校验登录名
		 */
		String loginname = formUser.getUsername();
		if(loginname == null || loginname.trim().isEmpty()) {
			errors.put("loginname", "用户名不能为空！");
		} else if(loginname.length() < 3 || loginname.length() > 20) {
			errors.put("loginname", "用户名长度必须在3~20之间！");
		} 
		/*
		 * 2. 校验登录密码
		 */
		String loginpass = formUser.getPassword();
		if(loginpass == null || loginpass.trim().isEmpty()) {
			errors.put("loginpass", "密码不能为空！");
		} else if(loginpass.length() < 3 || loginpass.length() > 20) {
			errors.put("loginpass", "密码长度必须在3~20之间！");
		}
		/*
		 * 3. 验证码校验
		 */
		String verifyCode = formUser.getVerifyCode();
		String vcode = (String) session.getAttribute("vCode");
		if(verifyCode == null || verifyCode.trim().isEmpty()) {
			errors.put("verifyCode", "验证码不能为空！");
		} else if(!verifyCode.equalsIgnoreCase(vcode)) {
			errors.put("verifyCode", "验证码错误！");
		}
		return errors;
	}
	
	/**
	 * 注册校验
	 * 对表单的字段进行逐个校验，如果有错误，使用当前字段名称为key，错误信息为value，保存到map中
	 * 返回map
	 */
	private Map<String,String> validateRegist(UserInfoEntity formUser, HttpSession session) {
		Map<String,String> errors = new HashMap<String,String>();
		/*
		 * 1. 校验登录名
		 */
		String loginname = formUser.getUsername();
		if(loginname == null || loginname.trim().isEmpty()) {
			errors.put("loginname", "用户名不能为空！");
		} else if(loginname.length() < 3 || loginname.length() > 20) {
			errors.put("loginname", "用户名长度必须在3~20之间！");
		} else if(!userInfoService.ajaxValidateLoginname(loginname)) {
			errors.put("loginname", "用户名已被注册！");
		}
		
		/*
		 * 2. 校验登录密码
		 */
		String loginpass = formUser.getPassword();
		if(loginpass == null || loginpass.trim().isEmpty()) {
			errors.put("loginpass", "密码不能为空！");
		} else if(loginpass.length() < 3 || loginpass.length() > 20) {
			errors.put("loginpass", "密码长度必须在3~20之间！");
		}
		
		/*
		 * 3. 确认密码校验
		 */
		String reloginpass = formUser.getReloginpass();
		if(reloginpass == null || reloginpass.trim().isEmpty()) {
			errors.put("reloginpass", "确认密码不能为空！");
		} else if(!reloginpass.equals(loginpass)) {
			errors.put("reloginpass", "两次输入不一致！");
		}
		
		/*
		 * 4. 校验email
		 */
		String email = formUser.getEmail();
		if(email == null || email.trim().isEmpty()) {
			errors.put("email", "Email不能为空！");
		} else if(!email.matches("^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\\.[a-zA-Z0-9_-]{2,3}){1,2})$")) {
			errors.put("email", "Email格式错误！");
		} else if(!userInfoService.ajaxValidateEmail(email)) {
			errors.put("email", "Email已被注册！");
		}
		
		/*
		 * 5. 验证码校验
		 */
		String verifyCode = formUser.getVerifyCode();
		String vcode = (String) session.getAttribute("vCode");
		if(verifyCode == null || verifyCode.trim().isEmpty()) {
			errors.put("verifyCode", "验证码不能为空！");
		} else if(!verifyCode.equalsIgnoreCase(vcode)) {
			errors.put("verifyCode", "验证码错误！");
		}
		
		return errors;
	}
	
	
	/**
	 * 激活功能
	 * @return
	 */
	public String activation() {
		
		/*
		 * 1. 获取参数激活码
		 * 2. 用激活码调用service方法完成激活
		 *   > service方法有可能抛出异常, 把异常信息拿来，保存到request中，转发到msg.jsp显示
		 * 3. 保存成功信息到request，转发到msg.jsp显示。
		 */
		String code = this.getRequest().getParameter("activationCode");
		try {
			userInfoService.updateActivation(code);
			this.getRequest().setAttribute("msg", "恭喜，激活成功，请马上登录！");
		} catch (Exception e) {
			// 说明service抛出了异常
			this.getRequest().setAttribute("msg", e.getMessage());
		}
		return "failed";
	}
}

