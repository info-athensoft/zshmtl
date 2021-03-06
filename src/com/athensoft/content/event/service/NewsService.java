package com.athensoft.content.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.content.event.dao.NewsDao;
import com.athensoft.content.event.entity.Event;
import com.athensoft.content.event.entity.News;
import com.athensoft.util.commons.PageBean;

@Service
public class NewsService {
	@Autowired
	@Qualifier("newsDaoJdbcImpl")
	private NewsDao newsDao;

	public List<Event> getAllNews() {
		return newsDao.findAll();
	}

	public News getNewsById(long globalId) {
		return (News) newsDao.findById(globalId);
	}

	public News getNewsByEventUUID(String eventUUID) {
		return (News) newsDao.findByEventUUID(eventUUID);
	}

	public List<Event> getRecentNews() {
		String queryString = " ORDER BY post_date DESC LIMIT 4";
		return newsDao.findByQuery(queryString);
	}

	public List<Event> getRecentNews(int count) {
		String queryString = " ORDER BY post_date DESC LIMIT " + count;
		return newsDao.findByQuery(queryString);
	}

	public List<Event> getNewsByPage(PageBean pb) {
		return newsDao.findByPage(pb);
	}

	public long getNewsCount() {
		return newsDao.count();
	}

	public long getNewsCountByStatus(int status) {
		return newsDao.countByStatus(status);
	}

}
