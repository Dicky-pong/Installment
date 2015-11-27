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
	private String name;
	private String brand;
	private String descript;
	private Integer colorId;
	private Integer TId;
	private Date date;
	private Set colors = new HashSet(0);
	private Set monthprovides = new HashSet(0);
	private Set goodstypes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** full constructor */
	public Goods(Category category, String name, String brand, Double price,
			String descript, Integer colorId, Integer TId, Date date,
			Set colors, Set monthprovides, Set goodstypes) {
		this.category = category;
		this.name = name;
		this.brand = brand;
		this.descript = descript;
		this.colorId = colorId;
		this.TId = TId;
		this.date = date;
		this.colors = colors;
		this.monthprovides = monthprovides;
		this.goodstypes = goodstypes;
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

	public Integer getColorId() {
		return this.colorId;
	}

	public void setColorId(Integer colorId) {
		this.colorId = colorId;
	}

	public Integer getTId() {
		return this.TId;
	}

	public void setTId(Integer TId) {
		this.TId = TId;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
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

}