package org.nhnnext.web;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	@Id
	@Column(length=50, nullable=false)
	private String userid;
	
	@Column(length = 1000, nullable=false)
	private String password;
	
	
	@Column(length = 100, nullable = false)
	private String name;
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean matchPs(String ps) {
		return this.password.equals(ps);
	}
}
