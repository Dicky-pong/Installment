package com.qfq.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Color entity. @author MyEclipse Persistence Tools
 */

public class Color implements java.io.Serializable {

	// Fields

	private Integer id;
	private Goods goods;
	private String colorname;
	private String picture;
	private Set installments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Color() {
	}

	/** full constructor */
	public Color(Goods goods, String colorname, String picture, Set installments) {
		this.goods = goods;
		this.colorname = colorname;
		this.picture = picture;
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

	public String getColorname() {
		return this.colorname;
	}

	public void setColorname(String colorname) {
		this.colorname = colorname;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Set getInstallments() {
		return this.installments;
	}

	public void setInstallments(Set installments) {
		this.installments = installments;
	}

}