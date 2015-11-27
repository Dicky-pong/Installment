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
	private Set admins = new HashSet(0);
	private Set rolemenus = new HashSet(0);

	// Constructors

	/** default constructor */
	public Roleinfo() {
	}

	/** minimal constructor */
	public Roleinfo(String name) {
		this.name = name;
	}

	/** full constructor */
	public Roleinfo(String name, Set admins, Set rolemenus) {
		this.name = name;
		this.admins = admins;
		this.rolemenus = rolemenus;
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

	public Set getAdmins() {
		return this.admins;
	}

	public void setAdmins(Set admins) {
		this.admins = admins;
	}

	public Set getRolemenus() {
		return this.rolemenus;
	}

	public void setRolemenus(Set rolemenus) {
		this.rolemenus = rolemenus;
	}

}