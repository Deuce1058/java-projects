package com.yardi.ejb;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the PERMISSIONS_MASTER database table.
 * 
 */
@Entity
@Table(name="PERMISSIONS_MASTER", schema="DB2ADMIN")
@NamedQuery(name="Permissions_Master.findAll", query="SELECT p FROM Permissions_Master p")
public class Permissions_Master implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="PM_TYPE")
	private int pmType;

	@Column(name="PM_DESCRIPTION")
	private String pmDescription;

	@GeneratedValue
	@Column(name="PM_RRN")
	private long pmRrn;

	public Permissions_Master() {
	}

	public int getPmType() {
		return this.pmType;
	}

	public void setPmType(int pmType) {
		this.pmType = pmType;
	}

	public String getPmDescription() {
		return this.pmDescription;
	}

	public void setPmDescription(String pmDescription) {
		this.pmDescription = pmDescription;
	}

	public long getPmRrn() {
		return this.pmRrn;
	}

	public void setPmRrn(long pmRrn) {
		this.pmRrn = pmRrn;
	}
}