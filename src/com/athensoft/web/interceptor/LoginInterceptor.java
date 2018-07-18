package com.athensoft.web.interceptor;

import java.io.IOException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	private static final Logger logger = Logger.getLogger(LoginInterceptor.class);
	
//	private static final String[] FILTERS = {"login", "assets"};
//	private static final String LOGIN = "login";
//	private static final int ADVERTISER = 2;
    private static final String ACP_LOGIN = "/member-signup.html";
    
 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    	String url = request.getRequestURL().toString();
    	
    	logger.info("entering... LoginInterceptor preHandle.  RequestURL=" + url);
    	
    	boolean flag = true;
    	
    	/*
    	boolean flag = false;
        for (String s : FILTERS) {
            if (url.contains(s)) {
                flag = true;
                break;
            }
        }*/
        
    	//if (!flag) {  //!url.contains(LOGIN)
    		HttpSession session = request.getSession(false);
    		
    		//一系列处理后发现session已经失效
            if (request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){ //如果是ajax请求响应头会有x-requested-with  
//                PrintWriter out = response.getWriter();  
            	ServletOutputStream out = response.getOutputStream();
                out.print("loseSession");//session失效
                out.flush();
                //return false;
            }else{
                //非ajax请求时，session失效的处理
            	if ( session == null) { //if ( s.equals( "null" )) { 
        			logger.info("WARNING: httpSession is null. ");
            		sendRedirect(request, response, ACP_LOGIN, "Please login first!");
            		return false;
        		}
        		
        		if ( session.getAttribute("userAccount") == null) { //if ( s.equals( "null" )) { 
        			logger.info("<<<<<< UserAccount is null. " + ">>>>>>" );
            		sendRedirect(request, response, ACP_LOGIN, "Please login first!");
            		return false;
        		}
            }
    		
        	//UserAccount userAccount = (UserAccount) session.getAttribute("userAccount");
        	//if (userAccount == null) {
        	//	logger.info("<<<<<< UserAccount is NULL. " + ">>>>>>" );
        	//	sendRedirect(request, response, ACP_LOGIN, "Please login first!");
        	//	flag = false;
        	//}
    	//}
    	
        return flag;
    }

	private void sendRedirect(HttpServletRequest request, HttpServletResponse response, String acpLogin, String msg) throws IOException {
		logger.info("sendRedirect to ACP LOGIN PAGE :" + acpLogin);
		request.getSession().setAttribute("loginReqMsg", msg);
		response.sendRedirect(acpLogin);
	}
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
        String url = request.getRequestURL().toString();
        logger.debug("===========LoginInterceptor postHandle. RequestURL : " + url);
    }
    
    @Override  
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    	String url = request.getRequestURL().toString();
    	logger.debug("===========LoginInterceptor afterCompletion. RequestURL : " + url);
    }
}
