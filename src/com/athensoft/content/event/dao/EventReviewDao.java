package com.athensoft.content.event.dao;

import java.util.List;

import com.athensoft.content.event.entity.EventReview;

/**
 * A DAO interface of {@link EventReview}
 * 
 * @author Athens
 * @version 1.0 
 */
public interface EventReviewDao {
	/**
	 * get all event review objects<p>
	 * WARNING: DO NOT USE THIS METHOD IN PRODUCT, JUST FOR TEST.
	 * @return	list of event review objects
	 */
	public List<EventReview> findAll();
	
	/**
	 * get all objects which comply with query criteria
	 * @param queryString search criteria of event reviews
	 * @return	list of event review objects
	 */
	public List<EventReview> findByFilter(String queryString);
	
	/**
	 * get all event review objects by eventUUID
	 * @param eventUUID the eventUUID of news object
	 * @return	list of event review objects
	 */
	public List<EventReview> findByEventUUID(String eventUUID);
	
	
	/**
	 * get review objects by acctName
	 * @param acctName
	 * @return
	 */
	public List<EventReview> findByAcctName(String acctName);
	
	/**
	 * get event review object by its gloablId
	 * @param globalId the globlaId of news review object
	 * @return a event review object
	 */
	public EventReview findById(long globalId);
	
	/**
	 * get event review object by its reviewUUID
	 * @param reviewUUID the reviewUUID of review object
	 * @return an event review object
	 */
	public EventReview findByReviewUUID(String reviewUUID);	
	
	
	/**
	 * @param eventUUID
	 * @return
	 */
	public long countByEventUUID(String eventUUID);
	
	
	/**
	 * create an event review object and persist it
	 * @param review an event review object
	 */
	public void create(EventReview review);
	
	/**
	 * update an event review object and persist it
	 * @param review an event review object
	 */
	public void update(EventReview review);

	/**
	 * remove an event review object from data source<p>
	 * WARNING: THE METHOD HAS NOT COMPLETED.
	 */
	public void delete();
	
	
}
