package com.athensoft.content.event.entity;

import java.util.Date;

public class Comment {
	private Long 	globalId;
	private String 	targetId;
	private String 	commenter;
	private Long 	commenterId;
	private String 	avatarUrl;
	private Date 	postDate;
	private Integer commentStatus;
	private String 	postContent;
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public String getTargetId() {
		return targetId;
	}
	public void setTargetId(String targetId) {
		this.targetId = targetId;
	}
	public String getCommenter() {
		return commenter;
	}
	public void setCommenter(String commenter) {
		this.commenter = commenter;
	}
	public Long getCommenterId() {
		return commenterId;
	}
	public void setCommenterId(Long commenterId) {
		this.commenterId = commenterId;
	}
	public String getAvatarUrl() {
		return avatarUrl;
	}
	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public Integer getCommentStatus() {
		return commentStatus;
	}
	public void setCommentStatus(Integer commentStatus) {
		this.commentStatus = commentStatus;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	@Override
	public String toString() {
		return "Comment [globalId=" + globalId + ", targetId=" + targetId + ", commenter=" + commenter
				+ ", commenterId=" + commenterId + ", avatarUrl=" + avatarUrl + ", postDate=" + postDate
				+ ", commentStatus=" + commentStatus + ", postContent=" + postContent + "]";
	}
	
}
