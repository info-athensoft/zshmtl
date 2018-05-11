package com.athensoft.content.event.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.content.event.entity.Event;
import com.athensoft.content.event.entity.EventMedia;
import com.athensoft.content.event.entity.EventTag;
import com.athensoft.content.event.service.EventMediaService;
import com.athensoft.content.event.service.EventTagService;
import com.athensoft.content.event.service.NewsService;
import com.athensoft.uaas.controller.UserAccountController;

@Controller
public class NewsController {
	
	private static final Logger logger = Logger.getLogger(UserAccountController.class);
	
	
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
	
	
	
	@RequestMapping("/event/news")
	public ModelAndView getNewsHome(){		
		logger.info("entering /event/news");
		
		ModelAndView mav = new ModelAndView();
		
		String viewName = "news-list";
		mav.setViewName(viewName);
		
		
		//data
		List<Event> listNews = newsService.getAllNews();
		
		for(Event news : listNews){
			String eventUUID = news.getEventUUID();
			List<EventMedia> listEventMedia = eventMediaService.getEventMediaByEventUUID(eventUUID);
			news.setListEventMedia(listEventMedia);
			news.setPrimaryEventMedia();
			
			List<EventTag> listEventTag = eventTagService.getEventTagByEventUUID(eventUUID);
			news.setListEventTag(listEventTag);
		}
		
		Map<String, Object> data = mav.getModel();
		data.put("listNews", listNews);
		
		logger.info("existing /event/news");
		return mav;
	}
	
	
	@RequestMapping("/event/news/{eventUUID}")
	public ModelAndView getNewsById(@PathVariable String eventUUID){		
		logger.info("entering /event/news/"+eventUUID);
		
		//data
		Event news = newsService.getNewsByEventUUID(eventUUID);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> data = mav.getModel();
		data.put("news", news);
		
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
		return "redirect:/event/news";
//		return "news-list";
	}
	
	@RequestMapping("/news-single.html")
	public String gotoNews2(){
		logger.info("entering.. /news-single.html");
		logger.info("exiting.. /news-single.html");
		return "news-single";
	}
	
	@RequestMapping(value="/newsComment",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String,Object> gotoNews3(@RequestParam String itemJSONString){
		logger.info("entering.. /newsComment");
		logger.info("itemJSON=>>>>>>>>>>>>>>>>>>"+itemJSONString);
		logger.info("exiting.. /newsComment");
//		return "news-single";
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("sss", itemJSONString);
		return model;
	}
	
	
	
}
