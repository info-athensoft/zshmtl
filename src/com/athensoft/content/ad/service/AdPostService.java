package com.athensoft.content.ad.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.content.ad.dao.AdPostDao;
import com.athensoft.content.ad.entity.AdPost;

@Service
public class AdPostService {
	private AdPostDao adPostDao;
	
	@Autowired
	@Qualifier("adPostDaoJdbcImpl")
	public void setAdPostDao(AdPostDao adPostDao){
		this.adPostDao=adPostDao;
	}
	
	public List<AdPost> testGetAdPostListByQuery(){
		String queryString = " and ad_type = 1 order by global_id limit 12";
		return adPostDao.findByQuery(queryString);
	}
	
	public List<AdPost> getAdPostList(int count){
		String queryString = " ORDER BY global_id LIMIT "+count;
		return adPostDao.findByQuery(queryString);
	}
	
	public List<AdPost> getImageAdPostListByQuery(){
		String queryString = " and ad_type = 1 order by global_id limit 12";
		return adPostDao.findByQuery(queryString);
	}
	
	public List<AdPost> getTextAdPostListByQuery(){
		String queryString = " and ad_type = 2 order by global_id limit 12";
		return adPostDao.findByQuery(queryString);
	}
}
