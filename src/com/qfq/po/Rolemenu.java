package com.qfq.po;

/**
 * Rolemenu entity. @author MyEclipse Persistence Tools
 */

public class Rolemenu implements java.io.Serializable {

	// Fields

	private RolemenuId id;
	private Roleinfo roleinfo;
	private Menu menu;

	// Constructors

	/** default constructor */
	public Rolemenu() {
	}

	/** minimal constructor */
	public Rolemenu(RolemenuId id) {
		this.id = id;
	}

	/** full constructor */
	public Rolemenu(RolemenuId id, Roleinfo roleinfo, Menu menu) {
		this.id = id;
		this.roleinfo = roleinfo;
		this.menu = menu;
	}

	// Property accessors

	public RolemenuId getId() {
		return this.id;
	}

	public void setId(RolemenuId id) {
		this.id = id;
	}

	public Roleinfo getRoleinfo() {
		return this.roleinfo;
	}

	public void setRoleinfo(Roleinfo roleinfo) {
		this.roleinfo = roleinfo;
	}

	public Menu getMenu() {
		return this.menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

}