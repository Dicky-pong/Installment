package com.qfq.po;

/**
 * Dataheavy entity. @author MyEclipse Persistence Tools
 */

public class Dataheavy implements java.io.Serializable {

	// Fields

	private Integer id;
	private Userinfo userinfo;
	private Integer times;

	// Constructors

	/** default constructor */
	public Dataheavy() {
	}

	/** full constructor */
	public Dataheavy(Userinfo userinfo, Integer times) {
		this.userinfo = userinfo;
		this.times = times;
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

	public Integer getTimes() {
		return this.times;
	}

	public void setTimes(Integer times) {
		this.times = times;
	}

}