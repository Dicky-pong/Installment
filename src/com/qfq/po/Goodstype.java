package com.qfq.po;

/**
 * Goodstype entity. @author MyEclipse Persistence Tools
 */

public class Goodstype implements java.io.Serializable {

	// Fields

	private Integer id;
	private Goods goods;
	private String typename;
	private Double price;

	// Constructors

	/** default constructor */
	public Goodstype() {
	}

	/** full constructor */
	public Goodstype(Goods goods, String typename, Double price) {
		this.goods = goods;
		this.typename = typename;
		this.price = price;
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

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

}