package com.qfq.po;

/**
 * RolemenuId entity. @author MyEclipse Persistence Tools
 */

public class RolemenuId implements java.io.Serializable {

	// Fields

	private Menu menu;
	private Roleinfo roleinfo;

	// Constructors

	/** default constructor */
	public RolemenuId() {
	}

	/** full constructor */
	public RolemenuId(Menu menu, Roleinfo roleinfo) {
		this.menu = menu;
		this.roleinfo = roleinfo;
	}

	// Property accessors

	public Menu getMenu() {
		return this.menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public Roleinfo getRoleinfo() {
		return this.roleinfo;
	}

	public void setRoleinfo(Roleinfo roleinfo) {
		this.roleinfo = roleinfo;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof RolemenuId))
			return false;
		RolemenuId castOther = (RolemenuId) other;

		return ((this.getMenu() == castOther.getMenu()) || (this.getMenu() != null
				&& castOther.getMenu() != null && this.getMenu().equals(
				castOther.getMenu())))
				&& ((this.getRoleinfo() == castOther.getRoleinfo()) || (this
						.getRoleinfo() != null
						&& castOther.getRoleinfo() != null && this
						.getRoleinfo().equals(castOther.getRoleinfo())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getMenu() == null ? 0 : this.getMenu().hashCode());
		result = 37 * result
				+ (getRoleinfo() == null ? 0 : this.getRoleinfo().hashCode());
		return result;
	}

}