package com.qfq.po;

import java.util.HashSet;
import java.util.Set;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Roleinfo roleinfo;
	private String username;
	private String password;
	private String email;
	private Short status;
	private String activationCode;
	private String area;
	private String ip;
	private Set installments = new HashSet(0);
	private Set dataheavies = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** full constructor */
	public Userinfo(Roleinfo roleinfo, String username, String password,
			String email, Short status, String activationCode, String area,
			String ip, Set installments, Set dataheavies) {
		this.roleinfo = roleinfo;
		this.username = username;
		this.password = password;
		this.email = email;
		this.status = status;
		this.activationCode = activationCode;
		this.area = area;
		this.ip = ip;
		this.installments = installments;
		this.dataheavies = dataheavies;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Roleinfo getRoleinfo() {
		return this.roleinfo;
	}

	public void setRoleinfo(Roleinfo roleinfo) {
		this.roleinfo = roleinfo;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Short getStatus() {
		return this.status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	public String getActivationCode() {
		return this.activationCode;
	}

	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Set getInstallments() {
		return this.installments;
	}

	public void setInstallments(Set installments) {
		this.installments = installments;
	}

	public Set getDataheavies() {
		return this.dataheavies;
	}

	public void setDataheavies(Set dataheavies) {
		this.dataheavies = dataheavies;
	}

}