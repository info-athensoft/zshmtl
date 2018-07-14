package com.athensoft.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.content.ad.entity.AdPost;
import com.athensoft.content.ad.service.AdPostService;
import com.athensoft.content.event.entity.EventReview;
import com.athensoft.content.event.service.EventReviewService;
import com.athensoft.member.entity.Member;
import com.athensoft.member.service.MemberService;


@Controller
public class MemberController {
	
	private static final Logger logger = Logger.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private EventReviewService eventReviewService;
	
	@Autowired
	private AdPostService adPostService;
	
	
//	public void setMemberService(MemberService memberService){
//		this.memberService = memberService;
//	}
	
	@RequestMapping("/member-signup.html")
	public String gotoMemberSignup(){
		logger.info("entering.. /memeber-signup.html");
		logger.info("exiting.. /memeber-signup.html");
		return "member-signup";
	}
	
//	@RequestMapping("/login")
//	public String doLogin(HttpServletRequest request, @RequestParam String userName, @RequestParam String password){
//		logger.info("entering.. /login");
//		UserAccount userAccount = new UserAccount();
//		userAccount.setAcctName(userName);
//		userAccount.setPassword(password);
//		request.getSession().setAttribute("userAccount",userAccount);
//		logger.info("exiting.. /login");
//		return "member-signup";
//	}
	
	@RequestMapping("/member-index.html")
	public ModelAndView gotoMemberIndex(@RequestParam("u") String acctName){
		logger.info("entering.. /memeber-index.html");
		logger.info("userName="+acctName);
		
		Member memberProfile = memberService.getMemberProfile(acctName);
		List<EventReview> eventReviewList = eventReviewService.getReviewByAcctName(acctName);
		List<AdPost> adPostList = adPostService.getAdPostListByAcctName(acctName);
		
		if(null==adPostList){
			adPostList = new ArrayList<AdPost>();
		}
		logger.info("adPostList.size="+adPostList.size());
		logger.info("memberProfile="+memberProfile.toString());
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("memberProfile", memberProfile);
		model.put("eventReviewList", eventReviewList);
		model.put("adPostList", adPostList);
		
		String viewName = "member-index";
		mav.setViewName(viewName);
		logger.info("exiting.. /memeber-index.html");
		return mav;
	}
}
