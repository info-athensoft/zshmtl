package com.athensoft.member.entity;

import java.util.Date;

public class MemberActionLog {
	private Long globalId;
	private Long memberGlobalId;
	private String memberCode;
	private Long memberId;
	private String memberName1;
	private String memberName2;
	private Integer actionId;
	private String actionName;
	private Date actionDate;
	private Integer operatorId;
	private String operatorName;
	private String actionDesc;

	public Long getGlobalId() {
		return globalId;
	}

	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}

	public Long getMemberGlobalId() {
		return memberGlobalId;
	}

	public void setMemberGlobalId(Long memberGlobalId) {
		this.memberGlobalId = memberGlobalId;
	}

	public String getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberName1() {
		return memberName1;
	}

	public void setMemberName1(String memberName1) {
		this.memberName1 = memberName1;
	}

	public String getMemberName2() {
		return memberName2;
	}

	public void setMemberName2(String memberName2) {
		this.memberName2 = memberName2;
	}

	public Integer getActionId() {
		return actionId;
	}

	public void setActionId(Integer actionId) {
		this.actionId = actionId;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public Date getActionDate() {
		return actionDate;
	}

	public void setActionDate(Date actionDate) {
		this.actionDate = actionDate;
	}

	public Integer getOperatorId() {
		return operatorId;
	}

	public void setOperatorId(Integer operatorId) {
		this.operatorId = operatorId;
	}

	public String getOperatorName() {
		return operatorName;
	}

	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}

	public String getActionDesc() {
		return actionDesc;
	}

	public void setActionDesc(String actionDesc) {
		this.actionDesc = actionDesc;
	}

	@Override
	public String toString() {
		return "MemberActionLog [globalId=" + globalId + ", memberGlobalId=" + memberGlobalId + ", memberCode="
				+ memberCode + ", memberId=" + memberId + ", memberName1=" + memberName1 + ", memberName2="
				+ memberName2 + ", actionId=" + actionId + ", actionName=" + actionName + ", actionDate=" + actionDate
				+ ", operatorId=" + operatorId + ", operatorName=" + operatorName + ", actionDesc=" + actionDesc + "]";
	}
}
