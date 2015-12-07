package com.qfq.po;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer id;
	private Category category;
	private String goodsID;
	private String name;
	private String brand;
	private String descript;
	private Date date;
	private String picture;
	private Set colors = new HashSet(0);
	private Set monthprovides = new HashSet(0);
	private Set goodstypes = new HashSet(0);
	private Set installments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** full constructor */
	public Goods(Category category, String goodsID, String name, String brand,
			String descript, Date date, String picture, Set colors,
			Set monthprovides, Set goodstypes, Set installments) {
		this.category = category;
		this.goodsID = goodsID;
		this.name = name;
		this.brand = brand;
		this.descript = descript;
		this.date = date;
		this.picture = picture;
		this.colors = colors;
		this.monthprovides = monthprovides;
		this.goodstypes = goodstypes;
		this.installments = installments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getGoodsID() {
		return this.goodsID;
	}

	public void setGoodsID(String goodsID) {
		this.goodsID = goodsID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return this.brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDescript() {
		return this.descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Set getColors() {
		return this.colors;
	}

	public void setColors(Set colors) {
		this.colors = colors;
	}

	public Set getMonthprovides() {
		return this.monthprovides;
	}

	public void setMonthprovides(Set monthprovides) {
		this.monthprovides = monthprovides;
	}

	public Set getGoodstypes() {
		return this.goodstypes;
	}

	public void setGoodstypes(Set goodstypes) {
		this.goodstypes = goodstypes;
	}

	public Set getInstallments() {
		return this.installments;
	}

	public void setInstallments(Set installments) {
		this.installments = installments;
	}

}