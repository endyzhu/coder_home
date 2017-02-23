package com.coderhome.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.coderhome.model.SysUser;
import com.coderhome.service.UserService;

@Controller
public class DemoController {
	private static Logger logger = Logger.getLogger(DemoController.class);
	@Resource
	private UserService userService = null;

	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		SysUser user = userService.getUserById(1);
		logger.info(JSON.toJSONString(user));
		System.out.println(JSON.toJSONString(user));
		mv.setViewName("main");
		mv.addObject("loginname", user.getLoginname());
		return mv;
	}
}
