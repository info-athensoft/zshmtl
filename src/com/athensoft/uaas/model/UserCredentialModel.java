package com.athensoft.uaas.model;

/**
 * For the purpose of user resetting password 
 * @author Athens
 *
 */
public class UserCredentialModel {
	private String acctName;
	private String password;
	
	public String getAcctName() {
		return acctName;
	}
	public void setAcctName(String acctName) {
		this.acctName = acctName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserCredentialModel [acctName=" + acctName + ", password=" + password + "]";
	}
	
}
