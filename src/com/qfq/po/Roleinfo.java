package com.qfq.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Roleinfo entity. @author MyEclipse Persistence Tools
 */

public class Roleinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Set userinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Roleinfo() {
	}

	/** minimal constructor */
	public Roleinfo(String name) {
		this.name = name;
	}

	/** full constructor */
	public Roleinfo(String name, Set userinfos) {
		this.name = name;
		this.userinfos = userinfos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}