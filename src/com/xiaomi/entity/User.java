package com.xiaomi.entity;

public class User {
	private int userid;
	private String username;
	private String password;
	private int role;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int userid, String username, String password, int role) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.role = role;
	}

}
