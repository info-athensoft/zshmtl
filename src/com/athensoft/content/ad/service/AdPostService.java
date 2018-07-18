package com.athensoft.content.ad.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.content.ad.dao.AdPostDao;
import com.athensoft.content.ad.entity.AdPost;

@Service
public class AdPostService {
	@Autowired
	@Qualifier("adPostDaoJdbcImpl")
	private AdPostDao adPostDao;

	public List<AdPost> testGetAdPostListByQuery() {
		String queryString = " AND ad_type = 1 ORDER BY global_id limit 12";
		return adPostDao.findByQuery(queryString);
	}

	public List<AdPost> getAdPostList(int count) {
		String queryString = " ORDER BY global_id LIMIT " + count;
		return adPostDao.findByQuery(queryString);
	}

	public List<AdPost> getImageAdPostListByQuery() {
		String queryString = " AND ad_type = 1 AND ad_status = 1 ORDER BY global_id limit 12";
		return adPostDao.findByQuery(queryString);
	}

	public List<AdPost> getTextAdPostListByQuery() {
		String queryString = " AND ad_type = 2 AND ad_status = 1 ORDER BY global_id limit 12";
		return adPostDao.findByQuery(queryString);
	}

	public List<AdPost> getAdPostListShownAtPage(int pageId) {
		String queryString = " AND page_id=" + pageId;
		return adPostDao.findByQueryFromView(queryString);
	}

	public List<AdPost> getAdPostListByAcctName(String acctName) {
		return adPostDao.findByAcctName(acctName);
	}

}
