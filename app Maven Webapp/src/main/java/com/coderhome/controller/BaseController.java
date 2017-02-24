package com.coderhome.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

public class BaseController {

	protected Logger logger = Logger.getLogger(this.getClass());
	
	/**
	 * 获得ModelAndView对象
	 * @return
	 */
	public ModelAndView getModelAndView(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("SYSTEM_NAME", "管理后台");
		return mv;
	}
	
	/**
	 * 得到request对象
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}
	/**
	 * 获得session对象
	 * @return
	 */
	public HttpSession getSession(){
		return this.getRequest().getSession();
	}

}
