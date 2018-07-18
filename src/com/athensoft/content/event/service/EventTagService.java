package com.athensoft.content.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.content.event.dao.EventTagDao;
import com.athensoft.content.event.entity.EventTag;

@Service
public class EventTagService {
	@Autowired
	@Qualifier("eventTagDaoJdbcImpl")
	private EventTagDao eventTagDao;

	public List<EventTag> getEventTagByEventUUID(String eventUUID) {
		return eventTagDao.findByEventUUID(eventUUID);
	}
}
