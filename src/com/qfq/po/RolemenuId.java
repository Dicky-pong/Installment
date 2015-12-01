package com.qfq.po;

/**
 * RolemenuId entity. @author MyEclipse Persistence Tools
 */

public class RolemenuId implements java.io.Serializable {

	// Fields

	private Integer MId;
	private Integer RId;

	// Constructors

	/** default constructor */
	public RolemenuId() {
	}

	/** full constructor */
	public RolemenuId(Integer MId, Integer RId) {
		this.MId = MId;
		this.RId = RId;
	}

	// Property accessors

	public Integer getMId() {
		return this.MId;
	}

	public void setMId(Integer MId) {
		this.MId = MId;
	}

	public Integer getRId() {
		return this.RId;
	}

	public void setRId(Integer RId) {
		this.RId = RId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof RolemenuId))
			return false;
		RolemenuId castOther = (RolemenuId) other;

		return ((this.getMId() == castOther.getMId()) || (this.getMId() != null
				&& castOther.getMId() != null && this.getMId().equals(
				castOther.getMId())))
				&& ((this.getRId() == castOther.getRId()) || (this.getRId() != null
						&& castOther.getRId() != null && this.getRId().equals(
						castOther.getRId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getMId() == null ? 0 : this.getMId().hashCode());
		result = 37 * result
				+ (getRId() == null ? 0 : this.getRId().hashCode());
		return result;
	}

}