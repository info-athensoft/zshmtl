package com.athensoft.content.event.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.content.ad.entity.AdPost;
import com.athensoft.content.ad.service.AdPostService;
import com.athensoft.content.event.entity.Comment;
import com.athensoft.content.event.entity.CommentStatus;
import com.athensoft.content.event.entity.Event;
import com.athensoft.content.event.entity.EventMedia;
import com.athensoft.content.event.entity.EventTag;
import com.athensoft.content.event.model.CommentModel;
import com.athensoft.content.event.service.CommentService;
import com.athensoft.content.event.service.EventMediaService;
import com.athensoft.content.event.service.EventTagService;
import com.athensoft.content.event.service.NewsService;
import com.athensoft.util.commons.PageBean;

@Controller
public class NewsController {
	
	private static final Logger logger = Logger.getLogger(NewsController.class);
	
	
	@Autowired
	private NewsService newsService;

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	
	@Autowired
	private EventMediaService eventMediaService;

	public void setEventMediaService(EventMediaService eventMediaService) {
		this.eventMediaService = eventMediaService;
	}
	
	@Autowired
	private EventTagService eventTagService;

	public void setEventTagService(EventTagService eventTagService) {
		this.eventTagService = eventTagService;
	}
	
	@Autowired
	private CommentService commentService;

	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	
	private AdPostService adPostService;
	
	@Autowired
	public void setAdPostService(AdPostService adPostService) {
		this.adPostService = adPostService;
	}
	
	/*
	@RequestMapping("/event/news")
	public ModelAndView getNewsHome(){		
		logger.info("entering /event/news");
		
		//data
		List<Event> listNews = newsService.getRecentNews(6);
		
		for(Event news : listNews){
			String eventUUID = news.getEventUUID();
			List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(eventUUID);
			news.setListEventMedia(listEventMedia);
			news.setPrimaryEventMedia();
			
			List<EventTag> listEventTag = eventTagService.getEventTagByEventUUID(eventUUID);
			news.setListEventTag(listEventTag);
		}
		
		List<AdPost> adPostList = adPostService.getAdPostList(4);
		
		ModelAndView mav = new ModelAndView();
		
		String viewName = "news-list";
		mav.setViewName(viewName);
		
		Map<String, Object> data = mav.getModel();
		data.put("listNews", listNews);
		data.put("adPostList", adPostList);
		
		logger.info("existing /event/news");
		return mav;
	}*/
	
	@RequestMapping("/event/news")
	public ModelAndView getNewsByPage(@RequestParam int pageNo){		
		logger.info("entering /event/news");
		
		//data
		PageBean pb = new PageBean();
		pb.setPage(pageNo);
		pb.setPageSize(3);
		pb.setTotalCount((int)newsService.getNewsCount());
		
		
		List<Event> listNews = newsService.getNewsByPage(pb);
		
		for(Event news : listNews){
			String eventUUID = news.getEventUUID();
			List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(eventUUID);
			news.setListEventMedia(listEventMedia);
			news.setPrimaryEventMedia();
			
			List<EventTag> listEventTag = eventTagService.getEventTagByEventUUID(eventUUID);
			news.setListEventTag(listEventTag);
		}
		
		List<AdPost> adPostList = adPostService.getAdPostList(4);
		
		ModelAndView mav = new ModelAndView();
		
		String viewName = "news-list";
		mav.setViewName(viewName);
		
		Map<String, Object> data = mav.getModel();
		data.put("listNews", listNews);
		data.put("adPostList", adPostList);
		data.put("page", pb);
		
		logger.info("existing /event/news");
		return mav;
	}
	
	
	@RequestMapping("/event/news/{eventUUID}")
	public ModelAndView getNewsById(@PathVariable String eventUUID){		
		logger.info("entering /event/news/"+eventUUID);
		
		//data
		Event news = newsService.getNewsByEventUUID(eventUUID);
		List<Event> recentNewsList = newsService.getRecentNews();
		
		List<Comment> commentList = commentService.getCommentByTargetId(eventUUID);
		
		long countComment = commentService.getCommentCountByTargetId(eventUUID);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> data = mav.getModel();
		data.put("news", news);
		data.put("recentNewsList", recentNewsList);
		data.put("countComment", countComment);
		data.put("commentList", commentList);
		
		//view
		String viewName = "news-single";
		mav.setViewName(viewName);
		
		logger.info("existing /event/news/"+eventUUID);
		return mav;
	}
	
	
//	@RequestMapping("/event/activity")
//	public ModelAndView getActivityHome(){
//		ModelAndView mav = new ModelAndView();
//		
//		String viewName = "events/activity";
//		mav.setViewName(viewName);
//		
//		//data
//		List<Event> listNews = newsService.getAllNews();
//		
//		for(Event news : listNews){
//			List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(news.getEventUUID());
//			news.setListEventMedia(listEventMedia);
//			news.setPrimaryEventMedia();
//		}
//		
//		Map<String, Object> data = mav.getModel();
//		data.put("listNews", listNews);
//		
//		return mav;
//	}
	
	
	@RequestMapping("/news-list.html")
	public String gotoNews1(){
		logger.info("entering.. /news-list.html");
		logger.info("exiting.. /news-list.html");
		return "redirect:/event/news?pageNo=1";
//		return "news-list";
	}
	
	@RequestMapping("/news-single.html")
	public String gotoNews2(){
		logger.info("entering.. /news-single.html");
		logger.info("exiting.. /news-single.html");
		return "news-single";
	}
	
	@RequestMapping(value="/event/comment",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String,Object> gotoNews3(@RequestBody CommentModel commentModel){
		logger.info("entering.. /newsComment");
		
		logger.info("comment post="+commentModel.getPostContent());
		
		//data
		Comment comment = new Comment();
		comment.setTargetId(commentModel.getTargetId());
		comment.setPostContent(commentModel.getPostContent());
		comment.setPostDate(new Date());
		comment.setAvatarUrl("");
		comment.setCommentStatus(CommentStatus.ACTIVE);
		comment.setCommenterId(8888L);
		comment.setCommenter("member name");
		
		commentService.submitComment(comment);
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("comment", comment);
		
		logger.info("exiting.. /newsComment");
		return model;
	}
	
	
	
}
