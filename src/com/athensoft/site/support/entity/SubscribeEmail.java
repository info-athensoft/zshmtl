package com.athensoft.site.support.entity;

import java.util.Date;

public class SubscribeEmail {
	
	public static final int ACTIVE = 1;
	public static final int INACTIVE = 0;
	
	
	private Long globalId;
	private String email;
	private Date createDate;
	private Integer emailStatus;
	
	public SubscribeEmail(){
	}
	
	public SubscribeEmail(String email){
		this.email = email;
		this.createDate = new Date();
		this.emailStatus = ACTIVE;
	}
	
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getEmailStatus() {
		return emailStatus;
	}
	public void setEmailStatus(Integer emailStatus) {
		this.emailStatus = emailStatus;
	}
	@Override
	public String toString() {
		return "SubscribeEmail [globalId=" + globalId + ", email=" + email + ", createDate=" + createDate
				+ ", emailStatus=" + emailStatus + "]";
	}
	
	
}
