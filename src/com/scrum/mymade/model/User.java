package com.scrum.mymade.model;

public class User {
	private String name;
	private String myMadeId;
	private String email;
	private String contactNo;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMyMadeId() {
		return myMadeId;
	}
	public void setMyMadeId(String myMadeId) {
		this.myMadeId = myMadeId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	public User(String name, String myMadeId, String email, String contactNo) {
		super();
		this.name = name;
		this.myMadeId = myMadeId;
		this.email = email;
		this.contactNo = contactNo;
	}
	public User(String name, String myMadeId, String email) {
		super();
		this.name = name;
		this.myMadeId = myMadeId;
		this.email = email;
	}
	
	
	
}
