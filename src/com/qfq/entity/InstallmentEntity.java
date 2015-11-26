package com.qfq.entity;

import com.qfq.po.Goods;
import com.qfq.po.Userinfo;

public class InstallmentEntity {
	private Integer id;
	private Integer paidMonth;
	private Double unpaidPrice;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPaidMonth() {
		return paidMonth;
	}
	public void setPaidMonth(Integer paidMonth) {
		this.paidMonth = paidMonth;
	}
	public Double getUnpaidPrice() {
		return unpaidPrice;
	}
	public void setUnpaidPrice(Double unpaidPrice) {
		this.unpaidPrice = unpaidPrice;
	}
	
}
