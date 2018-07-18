package com.athensoft.uaas.entity;

public class Role {

	public static final Integer VISITOR = 1;
	public static final Integer ADVERTISER = 2;
	public static final Integer DISTRIBUTOR = 3;
	public static final Integer COOPERATOR = 4;

	public static final Integer SYS_OPERATOR = 11;

	public static final Integer ADMIN = 20;
	public static final Integer SYS_ADMIN = 21;
	public static final Integer SYS_SUPERADMIN = 22;

	private Integer roleId;
	private String roleCode;
	private Integer roleLevel;
	private Integer roleType;
	private String roleName;
	private Integer roleStatus;

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	public Integer getRoleLevel() {
		return roleLevel;
	}

	public void setRoleLevel(Integer roleLevel) {
		this.roleLevel = roleLevel;
	}

	public Integer getRoleType() {
		return roleType;
	}

	public void setRoleType(Integer roleType) {
		this.roleType = roleType;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getRoleStatus() {
		return roleStatus;
	}

	public void setRoleStatus(Integer roleStatus) {
		this.roleStatus = roleStatus;
	}

	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleCode=" + roleCode + ", roleLevel=" + roleLevel + ", roleType="
				+ roleType + ", roleName=" + roleName + ", roleStatus=" + roleStatus + "]";
	}

}
