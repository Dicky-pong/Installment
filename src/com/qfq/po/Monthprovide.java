package com.qfq.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Monthprovide entity. @author MyEclipse Persistence Tools
 */

public class Monthprovide implements java.io.Serializable {

	// Fields

	private Integer id;
	private Goods goods;
	private Integer months;
	private Double unitPrice;
	private Set installments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Monthprovide() {
	}

	/** full constructor */
	public Monthprovide(Goods goods, Integer months, Double unitPrice,
			Set installments) {
		this.goods = goods;
		this.months = months;
		this.unitPrice = unitPrice;
		this.installments = installments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Integer getMonths() {
		return this.months;
	}

	public void setMonths(Integer months) {
		this.months = months;
	}

	public Double getUnitPrice() {
		return this.unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Set getInstallments() {
		return this.installments;
	}

	public void setInstallments(Set installments) {
		this.installments = installments;
	}

}