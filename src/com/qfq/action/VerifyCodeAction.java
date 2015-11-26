package com.qfq.action;


import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionSupport;
import com.qfq.action.BaseAction;

import cn.itcast.vcode.utils.VerifyCode;

@SuppressWarnings("serial")
public class VerifyCodeAction extends BaseAction {
	public void verify() {
		VerifyCode vc = new VerifyCode();
		BufferedImage image = vc.getImage();//获取一次性验证码图片
		// 该方法必须在getImage()方法之后来调用
//		System.out.println(vc.getText());//获取图片上的文本
		try {
			VerifyCode.output(image, this.getResponse().getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}//把图片写到指定流中
		
		// 把文本保存到session中，为LoginServlet验证做准备
		this.getSession().setAttribute("vCode", vc.getText());
	}
}
