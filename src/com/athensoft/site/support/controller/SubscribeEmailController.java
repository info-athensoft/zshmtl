package com.athensoft.site.support.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.site.support.entity.SubscribeEmail;
import com.athensoft.site.support.service.SubscribeEmailService;

@Controller
@RequestMapping("/support")
public class SubscribeEmailController {
	private static final Logger logger = Logger.getLogger(SubscribeEmailController.class);
	
	private SubscribeEmailService subscribeEmailService;
	
	@Autowired
	public void setSubscribeEmailService(SubscribeEmailService subscribeEmailService) {
		this.subscribeEmailService = subscribeEmailService;
	}
	
	@RequestMapping(value="/subscribe",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String,Object> subscribeViaEmail(@RequestParam String email){
		logger.info("entering... /support/subscribe");
		
		logger.info(email);
		SubscribeEmail se = new SubscribeEmail(email);
		
		subscribeEmailService.addToMailList(se);
		
		ModelAndView mav = new ModelAndView();
				
		Map<String,Object> model = mav.getModel();
		model.put("message", "none");
		logger.info("entering... /support/subscribe");
		return model;
	}
}
