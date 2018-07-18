package com.athensoft.uaas.entity;

public class UserRole {

	private int gId;
	private long acctId;
	private int roleId;

	public int getgId() {
		return gId;
	}

	public void setgId(int gId) {
		this.gId = gId;
	}

	public long getAcctId() {
		return acctId;
	}

	public void setAcctId(long acctId) {
		this.acctId = acctId;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	@Override
	public String toString() {
		return "UserRole [gId=" + gId + ", acctId=" + acctId + ", roleId=" + roleId + "]";
	}

}
