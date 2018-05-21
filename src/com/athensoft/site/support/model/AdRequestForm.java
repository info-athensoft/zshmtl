package com.athensoft.site.support.model;

public class AdRequestForm {
	private String name;
	private String email;
	private String phone;
	private String subject;
	private String message;
	private String serviceName;
	
	
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "AdRequestForm [name=" + name + ", email=" + email + ", phone=" + phone + ", subject=" + subject
				+ ", message=" + message + ", serviceName=" + serviceName + "]";
	}
	
}
