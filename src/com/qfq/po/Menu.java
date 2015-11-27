package com.qfq.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Menu entity. @author MyEclipse Persistence Tools
 */

public class Menu implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Integer pid;
	private String url;
	private Set rolemenus = new HashSet(0);

	// Constructors

	/** default constructor */
	public Menu() {
	}

	/** full constructor */
	public Menu(String name, Integer pid, String url, Set rolemenus) {
		this.name = name;
		this.pid = pid;
		this.url = url;
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

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Set getRolemenus() {
		return this.rolemenus;
	}

	public void setRolemenus(Set rolemenus) {
		this.rolemenus = rolemenus;
	}

}