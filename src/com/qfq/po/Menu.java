package com.qfq.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Menu entity. @author MyEclipse Persistence Tools
 */

public class Menu implements java.io.Serializable {

	// Fields

	private Integer id;
	private Menu menu;
	private String name;
	private String url;
	private Set menus = new HashSet(0);
	private Set rolemenus = new HashSet(0);

	// Constructors

	/** default constructor */
	public Menu() {
	}

	/** full constructor */
	public Menu(Menu menu, String name, String url, Set menus, Set rolemenus) {
		this.menu = menu;
		this.name = name;
		this.url = url;
		this.menus = menus;
		this.rolemenus = rolemenus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Menu getMenu() {
		return this.menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Set getMenus() {
		return this.menus;
	}

	public void setMenus(Set menus) {
		this.menus = menus;
	}

	public Set getRolemenus() {
		return this.rolemenus;
	}

	public void setRolemenus(Set rolemenus) {
		this.rolemenus = rolemenus;
	}

}