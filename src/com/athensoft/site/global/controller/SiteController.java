package com.athensoft.site.global.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiteController {
	private static final Logger logger = Logger.getLogger(SiteController.class);
	
	@RequestMapping("")
	public String gotoIndex(){
		logger.info("entering	.. /");
		String viewName = "index";
		logger.info("exiting.. /");
		return viewName;
	}
	
	@RequestMapping("/index.html")
	public String gotoIndex2(){
		logger.info("entering.. /index.html");
		logger.info("exiting.. /index.html");
		return "index";
	}
	
	@RequestMapping("/aboutus-overview.html")
	public String gotoAboutus1(){
		logger.info("entering.. /aboutus-overview.html");
		logger.info("exiting.. /aboutus-overview.html");
		return "aboutus-overview";
	}
	
	@RequestMapping("/aboutus-senate.html")
	public String gotoAboutus2(){
		logger.info("entering.. /aboutus-senate.html");
		logger.info("exiting.. /aboutus-senate.html");
		return "aboutus-senate";
	}
	
	@RequestMapping("/aboutus-primeminister.html")
	public String gotoAboutus3(){
		logger.info("entering.. /aboutus-primeminister.html");
		logger.info("exiting.. /aboutus-primeminister.html");
		return "aboutus-primeminister";
	}
	
	@RequestMapping("/team-consultant.html")
	public String gotoTeam1(){
		logger.info("entering.. /team-consultant.html");
		logger.info("exiting.. /team-consultant.html");
		return "team-consultant";
	}
	
	@RequestMapping("/team-committee.html")
	public String gotoTeam2(){
		logger.info("entering.. /team-committee.html");
		logger.info("exiting.. /team-committee.html");
		return "team-committee";
	}
	
	@RequestMapping("/team-member.html")
	public String gotoTeam3(){
		logger.info("entering.. /team-member.html");
		logger.info("exiting.. /team-member.html");
		return "team-member";
	}
	
	
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
	
	@RequestMapping("/recruit.html")
	public String gotoRecruit(){
		logger.info("entering.. /recruit.html");
		logger.info("exiting.. /recruit.html");
		return "recruit";
	}
	
	@RequestMapping("/contactus.html")
	public String gotoContactus(){
		logger.info("entering.. /contactus.html");
		logger.info("exiting.. /contactus.html");
		return "contactus";
	}
	
	@RequestMapping("/member-signup.html")
	public String gotoMemberSignup(){
		logger.info("entering.. /memeber-signup.html");
		logger.info("exiting.. /memeber-signup.html");
		return "member-signup";
	}
	
	@RequestMapping("/ad-list.html")
	public String gotoAdList(){
		logger.info("entering.. /ad-list.html");
		logger.info("exiting.. /ad-list.html");
		return "ad-list";
	}
	
	@RequestMapping("/ad-request.html")
	public String gotoAdRequest(){
		logger.info("entering.. /ad-request.html");
		logger.info("exiting.. /ad-request.html");
		return "ad-request";
	}
}
