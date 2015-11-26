package com.qfq.po;

/**
 * Installment entity. @author MyEclipse Persistence Tools
 */

public class Installment implements java.io.Serializable {

	// Fields

	private Integer id;
	private Userinfo userinfo;
	private Monthprovide monthprovide;
	private Integer paidMonth;
	private Double unpaidPrice;

	// Constructors

	/** default constructor */
	public Installment() {
	}

	/** full constructor */
	public Installment(Userinfo userinfo, Monthprovide monthprovide,
			Integer paidMonth, Double unpaidPrice) {
		this.userinfo = userinfo;
		this.monthprovide = monthprovide;
		this.paidMonth = paidMonth;
		this.unpaidPrice = unpaidPrice;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Monthprovide getMonthprovide() {
		return this.monthprovide;
	}

	public void setMonthprovide(Monthprovide monthprovide) {
		this.monthprovide = monthprovide;
	}

	public Integer getPaidMonth() {
		return this.paidMonth;
	}

	public void setPaidMonth(Integer paidMonth) {
		this.paidMonth = paidMonth;
	}

	public Double getUnpaidPrice() {
		return this.unpaidPrice;
	}

	public void setUnpaidPrice(Double unpaidPrice) {
		this.unpaidPrice = unpaidPrice;
	}

}