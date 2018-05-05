package com.athensoft.content.ad.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.content.ad.entity.AdPost;
import com.athensoft.content.ad.service.AdPostService;
import com.athensoft.site.global.controller.SiteController;

@Controller
public class AdPostController {
private AdPostService adPostService;
	
	private static final Logger logger = Logger.getLogger(SiteController.class);

	@Autowired
	public void setAdPostService(AdPostService adPostService) {
		this.adPostService = adPostService;
	}
	
	@RequestMapping("/ad-list.html")
	public ModelAndView gotoAdList(){
		logger.info("entering.. /ad-list.html");
		
		List<AdPost> adPostList = adPostService.testGetAdPostListByQuery();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> model = mav.getModel();
		model.put("adPostList", adPostList);
		
		String viewName = "ad-list";
		mav.setViewName(viewName);
		
		logger.info("exiting.. /ad-list.html");
		return mav;
	}
}
