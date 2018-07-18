package com.athensoft.uaas.model;

public class ValidationModel {
	private String acctName;
	private String validationCode;

	public String getAcctName() {
		return acctName;
	}

	public void setAcctName(String acctName) {
		this.acctName = acctName;
	}

	public String getValidationCode() {
		return validationCode;
	}

	public void setValidationCode(String validationCode) {
		this.validationCode = validationCode;
	}

	@Override
	public String toString() {
		return "ValidationModel [acctName=" + acctName + ", validationCode=" + validationCode + "]";
	}
}
