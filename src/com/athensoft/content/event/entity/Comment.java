package com.athensoft.content.event.entity;

public class Comment {
	private Long 	globalId;
	private Long 	targetId;
	private String 	commenter;
	private Long 	commenterId;
	private Long 	avatarUrl;
	private Long 	postDate;
	private Long 	commentStatus;
	private Long 	postContent;
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public Long getTargetId() {
		return targetId;
	}
	public void setTargetId(Long targetId) {
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
	public Long getAvatarUrl() {
		return avatarUrl;
	}
	public void setAvatarUrl(Long avatarUrl) {
		this.avatarUrl = avatarUrl;
	}
	public Long getPostDate() {
		return postDate;
	}
	public void setPostDate(Long postDate) {
		this.postDate = postDate;
	}
	public Long getCommentStatus() {
		return commentStatus;
	}
	public void setCommentStatus(Long commentStatus) {
		this.commentStatus = commentStatus;
	}
	public Long getPostContent() {
		return postContent;
	}
	public void setPostContent(Long postContent) {
		this.postContent = postContent;
	}
	@Override
	public String toString() {
		return "Comment [globalId=" + globalId + ", targetId=" + targetId + ", commenter=" + commenter
				+ ", commenterId=" + commenterId + ", avatarUrl=" + avatarUrl + ", postDate=" + postDate
				+ ", commentStatus=" + commentStatus + ", postContent=" + postContent + "]";
	}
	
}
