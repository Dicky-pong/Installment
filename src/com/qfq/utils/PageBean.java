package com.qfq.utils;

import java.util.List;
/**
 * 分页Bean,它会在各层之间传递！
 * @author Dicky
 * @param <T>
 */

public class PageBean<T> {
	private int pageCode;//当前页面
	private int totalRecoder;//总记录数
	private int pageSize;//每页记录数
	private String url;//请求路径和参数，例如：/BookSerlet?method=findXXX&cid=1&bname=2
	private List<T> beanList;
	
	//计算总页数
	public int getTotalpage(){
		int totalpage = totalRecoder/pageSize;
		return totalRecoder%pageSize==0?totalpage:totalpage+1;
	}
	
	public int getPageCode() {
		return pageCode;
	}
	public void setPageCode(int pageCode) {
		this.pageCode = pageCode;
	}
	public int getTotalRecoder() {
		return totalRecoder;
	}
	public void setTotalRecoder(int totalRecoder) {
		this.totalRecoder = totalRecoder;
	}
	public int getPagesize() {
		return pageSize;
	}
	public void setPagesize(int pagesize) {
		this.pageSize = pagesize;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public List<T> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}
	
	
}
