package com.athensoft.uaas.entity;

import java.util.Date;

public class ValidationCode {

	public static final int VALID = 1;
	public static final int INVALID = 0;

	private long gid;
	private String acctName;
	private String validCode;
	private int codeStatus;
	private Date generateDate;

	public long getGid() {
		return gid;
	}

	public void setGid(long gid) {
		this.gid = gid;
	}

	public String getAcctName() {
		return acctName;
	}

	public void setAcctName(String acctName) {
		this.acctName = acctName;
	}

	public String getValidCode() {
		return validCode;
	}

	public void setValidCode(String validCode) {
		this.validCode = validCode;
	}

	public int getCodeStatus() {
		return codeStatus;
	}

	public void setCodeStatus(int codeStatus) {
		this.codeStatus = codeStatus;
	}

	public Date getGenerateDate() {
		return generateDate;
	}

	public void setGenerateDate(Date generateDate) {
		this.generateDate = generateDate;
	}

	@Override
	public String toString() {
		return "ValidationCode [gid=" + gid + ", acctName=" + acctName + ", validCode=" + validCode + ", codeStatus="
				+ codeStatus + ", generateDate=" + generateDate + "]";
	}
}
