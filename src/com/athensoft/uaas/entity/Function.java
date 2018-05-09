package com.athensoft.uaas.entity;

public class Function {
	
	public static final int INACTIVE = 0;
	public static final int ACTIVE = 1;
	public static final int PENDING = 2;
	public static final int  DISABLED= 3;
	
	private Integer functionId;
	private Integer parentId;
	private String functionPackage;
	private String functionName;
	private String functionCode;
	private String functionUrl;
	private Integer seqNo;
	private Integer functionStatus;
	
	public Integer getFunctionId() {
		return functionId;
	}
	public void setFunctionId(Integer functionId) {
		this.functionId = functionId;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public String getFunctionPackage() {
		return functionPackage;
	}
	public void setFunctionPackage(String functionPackage) {
		this.functionPackage = functionPackage;
	}
	public String getFunctionName() {
		return functionName;
	}
	public void setFunctionName(String functionName) {
		this.functionName = functionName;
	}
	public String getFunctionCode() {
		return functionCode;
	}
	public void setFunctionCode(String functionCode) {
		this.functionCode = functionCode;
	}
	public String getFunctionUrl() {
		return functionUrl;
	}
	public void setFunctionUrl(String functionUrl) {
		this.functionUrl = functionUrl;
	}
	public Integer getSeqNo() {
		return seqNo;
	}
	public void setSeqNo(Integer seqNo) {
		this.seqNo = seqNo;
	}
	public Integer getFunctionStatus() {
		return functionStatus;
	}
	public void setFunctionStatus(Integer functionStatus) {
		this.functionStatus = functionStatus;
	}
	
	
	@Override
	public String toString() {
		return "Function [functionId=" + functionId + ", parentId=" + parentId + ", functionPackage=" + functionPackage
				+ ", functionName=" + functionName + ", functionCode=" + functionCode + ", functionUrl=" + functionUrl
				+ ", seqNo=" + seqNo + ", functionStatus=" + functionStatus + "]";
	}
	
	
}
