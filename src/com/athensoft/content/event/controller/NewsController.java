package com.athensoft.content.event.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.uaas.controller.UserAccountController;

@Controller
public class NewsController {
	
	private static final Logger logger = Logger.getLogger(UserAccountController.class);
	
	@RequestMapping("/news-list.html")
	public String gotoNews1(){
		logger.info("entering.. /news-list.html");
		logger.info("exiting.. /news-list.html");
		return "news-list";
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
