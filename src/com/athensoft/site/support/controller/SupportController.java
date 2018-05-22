package com.athensoft.site.support.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.athensoft.site.support.model.AdRequestForm;
import com.athensoft.site.support.model.ContactForm;
import com.athensoft.site.support.model.SignupForm;
import com.athensoft.site.support.service.SupportService;


@Controller
@RequestMapping("/support")
public class SupportController {
	private static final Logger logger = Logger.getLogger(SupportController.class);
	
	private SupportService supportService;
	
	@Autowired
	public void setSupportService(SupportService supportService) {
		this.supportService = supportService;
	}

	
	
	@RequestMapping(value="/mailToUs",method=RequestMethod.POST)
	public String mailtoUs(@ModelAttribute("contactForm") ContactForm contactForm){
		logger.info("entering.. /support/mailToUs");
		
		logger.info(contactForm.toString());
		
		supportService.sendContactMail(contactForm);
		
		logger.info("exiting.. /support/mailToUs");
		return "redirect:/contactus.html";
	}
	
	
	@RequestMapping(value="/mailToUsAdReuqest",method=RequestMethod.POST)
	public String mailtoUsAdRequest(@ModelAttribute("adRequestForm") AdRequestForm adRequestForm){
		logger.info("entering.. /support/mailToUsAdReuqest");
		
		logger.info(adRequestForm.toString());
		
		supportService.sendAdRequestMail(adRequestForm);
		
		logger.info("exiting.. /support/mailToUsAdReuqest");
		return "redirect:/contactus.html";
	}
	
	@RequestMapping(value="/mailToUsSignup",method=RequestMethod.POST)
	public String mailtoUsSignup(@ModelAttribute("signupForm") SignupForm form){
		logger.info("entering.. /support/mailToUsSignup");
		
		logger.info(form.toString());
		//logger.info("lang="+lang);
		
		supportService.sendSignupMail(form);
		
		logger.info("exiting.. /support/mailToUsSignup");
		return "redirect:/contactus.html";
	}
	
	@RequestMapping("/mailToUsLang")
	public String mailtoUsByLang(@ModelAttribute("contactForm") ContactForm contactForm,
						   @RequestParam("lang") String lang){
		logger.info("entering.. /support/mailToUs");
		
		logger.info(contactForm.toString());
		logger.info("lang="+lang);
		
		supportService.sendContactMail(contactForm);
		
		logger.info("exiting.. /support/mailToUs");
		return "redirect:/support/contactus.html?lang="+lang;
	}
	
	
	
	
	
	
}
