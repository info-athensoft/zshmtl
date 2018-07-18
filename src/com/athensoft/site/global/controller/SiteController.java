package com.athensoft.site.global.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.content.ad.entity.AdPost;
import com.athensoft.content.ad.service.AdPostService;
import com.athensoft.site.global.entity.WebPage;

@Controller
public class SiteController {
	private static final Logger logger = Logger.getLogger(SiteController.class);

	@Autowired
	private AdPostService adPostService;

	@RequestMapping("")
	public ModelAndView gotoIndex() {
		logger.info("entering... /");
		logger.info("exiting... /");
		return gotoIndex2();
	}

	@RequestMapping("/index.html")
	public ModelAndView gotoIndex2() {
		logger.info("entering.. /index.html");

		List<AdPost> listAdPostRcmd = adPostService.getAdPostListShownAtPage(WebPage.HOME);

		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("listAdPostRcmd", listAdPostRcmd);

		String viewName = "index";
		mav.setViewName(viewName);
		logger.info("exiting.. /index.html");
		return mav;
	}

	@RequestMapping("/aboutus-overview.html")
	public String gotoAboutus1() {
		logger.info("entering.. /aboutus-overview.html");
		return "aboutus-overview";
	}

	@RequestMapping("/aboutus-senate.html")
	public String gotoAboutus2() {
		logger.info("entering.. /aboutus-senate.html");
		return "aboutus-senate";
	}

	@RequestMapping("/aboutus-primeminister.html")
	public String gotoAboutus3() {
		logger.info("entering.. /aboutus-primeminister.html");
		return "aboutus-primeminister";
	}

	@RequestMapping("/team-consultant.html")
	public String gotoTeam1() {
		logger.info("entering.. /team-consultant.html");
		return "team-consultant";
	}

	@RequestMapping("/team-committee.html")
	public String gotoTeam2() {
		logger.info("entering.. /team-committee.html");
		return "team-committee";
	}

	@RequestMapping("/team-member.html")
	public String gotoTeam3() {
		logger.info("entering.. /team-member.html");
		return "team-member";
	}

	@RequestMapping("/recruit.html")
	public String gotoRecruit() {
		logger.info("entering.. /recruit.html");
		return "recruit";
	}

	@RequestMapping("/contactus.html")
	public String gotoContactus() {
		logger.info("entering.. /contactus.html");
		return "contactus";
	}

	@RequestMapping("/ad-request.html")
	public String gotoAdRequest() {
		logger.info("entering.. /ad-request.html");
		return "ad-request";
	}
}
