package com.athensoft.content.event.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Event {
	private long globalId;
	private String eventUUID;
	private String title;
	private String author;
	private Date postDatetime;
	private int viewNum;
	private String descShort;
	private String descLong;
	private String eventClass;
	private int eventStatus;
	
	private EventMedia primaryEventMedia;
	
	//
	private List<EventTag> listEventTag = new ArrayList<EventTag>();
	private List<EventMedia> listEventMedia = new ArrayList<EventMedia>();
	
	public long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(long globalId) {
		this.globalId = globalId;
	}
	public String getEventUUID() {
		return eventUUID;
	}
	public void setEventUUID(String eventUUID) {
		this.eventUUID = eventUUID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getPostDatetime() {
		return postDatetime;
	}
	public void setPostDatetime(Date postDatetime) {
		this.postDatetime = postDatetime;
	}
	public int getViewNum() {
		return viewNum;
	}
	public void setViewNum(int viewNum) {
		this.viewNum = viewNum;
	}
	public String getDescShort() {
		return descShort;
	}
	public void setDescShort(String descShort) {
		this.descShort = descShort;
	}
	public String getDescLong() {
		return descLong;
	}
	public void setDescLong(String descLong) {
		this.descLong = descLong;
	}
	public String getEventClass() {
		return eventClass;
	}
	public void setEventClass(String eventClass) {
		this.eventClass = eventClass;
	}
	public int getEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(int eventStatus) {
		this.eventStatus = eventStatus;
	}
	
	
	public List<EventTag> getListEventTag() {
		return listEventTag;
	}
	public void setListEventTag(List<EventTag> listEventTag) {
		this.listEventTag = listEventTag;
	}
	public List<EventMedia> getListEventMedia() {
		return listEventMedia;
	}
	public void setListEventMedia(List<EventMedia> listEventMedia) {
		this.listEventMedia = listEventMedia;
	}


	public EventMedia getPrimaryEventMedia() {
		return this.primaryEventMedia;
	}


	public void setPrimaryEventMedia(List<EventMedia> listEventMedia) {
		EventMedia em = null;
		int size = listEventMedia.size();
		if(size>0){
			for(int i=0; i<size; i++){
				EventMedia tmpEm = listEventMedia.get(i);
				if(tmpEm.isPrimaryMedia()){
					em = tmpEm;
					break;
				}
			}
		}else{
			System.out.println("WARNING: "+this.getClass().getName()+" - no eventmedia object in the list");
			em = new EventMedia();
			em.setMediaName("event-default.jpg");
			em.setMediaURL("/img-event/");
		}
		
		this.primaryEventMedia = em;
	}
	@Override
	public String toString() {
		return "Event [globalId=" + globalId + ", eventUUID=" + eventUUID + ", title=" + title + ", author=" + author
				+ ", postDatetime=" + postDatetime + ", viewNum=" + viewNum + ", descShort=" + descShort + ", descLong="
				+ descLong + ", eventClass=" + eventClass + ", eventStatus=" + eventStatus + ", primaryEventMedia="
				+ primaryEventMedia + "]";
	}
	
	
	
}
