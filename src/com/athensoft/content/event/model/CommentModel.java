package com.athensoft.content.event.model;

public class CommentModel {
	private String 	targetId;
	private String	postContent;
	private String 	acctName;
	
	
	
	public String getAcctName() {
		return acctName;
	}
	public void setAcctName(String acctName) {
		this.acctName = acctName;
	}
	public String getTargetId() {
		return targetId;
	}
	public void setTargetId(String targetId) {
		this.targetId = targetId;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	@Override
	public String toString() {
		return "CommentModel [targetId=" + targetId + ", postContent=" + postContent + ", acctName=" + acctName + "]";
	}
	
	
}
