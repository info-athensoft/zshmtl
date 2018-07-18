package com.athensoft.content.event.dao;

import java.util.List;

import com.athensoft.content.event.entity.Event;
import com.athensoft.util.commons.PageBean;

public interface NewsDao {
	public List<Event> findAll();
	public Event findById(long globalId);
	public Event findByEventUUID(String eventUUID);
	
	public List<Event> findByQuery(String queryString);
	public List<Event> findByPage(PageBean pb);
	
	public long count();
	public long countByStatus(int status);
	
	public void create();
	public void update();
	public void delete();
	
}
