package com.qfq.po;

/**
 * Installment entity. @author MyEclipse Persistence Tools
 */

public class Installment implements java.io.Serializable {

	// Fields

	private Integer id;
	private Goods goods;
	private Userinfo userinfo;
	private Color color;
	private String orderId;
	private Integer payMonth;
	private Integer paidMonth;
	private Double payPrice;
	private String goodsType;
	private String date;
	private Integer status;
	private String address;
	private Integer tel;

	// Constructors

	/** default constructor */
	public Installment() {
	}

	/** full constructor */
	public Installment(Goods goods, Userinfo userinfo, Color color,
			String orderId, Integer payMonth, Integer paidMonth,
			Double payPrice, String goodsType, String date, Integer status,
			String address, Integer tel) {
		this.goods = goods;
		this.userinfo = userinfo;
		this.color = color;
		this.orderId = orderId;
		this.payMonth = payMonth;
		this.paidMonth = paidMonth;
		this.payPrice = payPrice;
		this.goodsType = goodsType;
		this.date = date;
		this.status = status;
		this.address = address;
		this.tel = tel;
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

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Color getColor() {
		return this.color;
	}

	public void setColor(Color color) {
		this.color = color;
	}

	public String getOrderId() {
		return this.orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Integer getPayMonth() {
		return this.payMonth;
	}

	public void setPayMonth(Integer payMonth) {
		this.payMonth = payMonth;
	}

	public Integer getPaidMonth() {
		return this.paidMonth;
	}

	public void setPaidMonth(Integer paidMonth) {
		this.paidMonth = paidMonth;
	}

	public Double getPayPrice() {
		return this.payPrice;
	}

	public void setPayPrice(Double payPrice) {
		this.payPrice = payPrice;
	}

	public String getGoodsType() {
		return this.goodsType;
	}

	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getTel() {
		return this.tel;
	}

	public void setTel(Integer tel) {
		this.tel = tel;
	}

}