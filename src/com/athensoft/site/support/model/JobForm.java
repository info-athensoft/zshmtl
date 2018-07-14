package com.athensoft.site.support.model;

public class JobForm {
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String city;
	private String province;
	private int jobId;
	private String jobName;
	private String expectedStartDate;
	private String website;
	private String experience;
	private String application;
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getExpectedStartDate() {
		return expectedStartDate;
	}
	public void setExpectedStartDate(String expectedStartDate) {
		this.expectedStartDate = expectedStartDate;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getApplication() {
		return application;
	}
	public void setApplication(String application) {
		this.application = application;
	}
	@Override
	public String toString() {
		return "JobForm [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", phone=" + phone
				+ ", city=" + city + ", province=" + province + ", jobId=" + jobId + ", jobName=" + jobName
				+ ", expectedStartDate=" + expectedStartDate + ", website=" + website + ", experience=" + experience
				+ ", application=" + application + "]";
	}
	
	
}
