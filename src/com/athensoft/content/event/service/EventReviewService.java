package com.athensoft.content.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.content.event.dao.EventReviewDao;
import com.athensoft.content.event.entity.EventReview;

@Service
public class EventReviewService {
	private EventReviewDao eventReviewDao;
	
	@Autowired
	@Qualifier("eventReviewDaoJDBCImpl")
	public void setEventReviewDao(EventReviewDao eventReviewDao){
		this.eventReviewDao = eventReviewDao;
	}
	
	public void submitReview(EventReview eventReview){
		eventReviewDao.create(eventReview);
		
	}
	
	public long getReviewCountByEventUUID(String eventUUID){
		return eventReviewDao.countByEventUUID(eventUUID);
	}
	
	public List<EventReview> getReviewByTargetId(String eventUUID){
		return eventReviewDao.findByEventUUID(eventUUID);
	}
}
