package com.coderhome.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.coderhome.model.SysUser;
import com.coderhome.service.UserService;

@Controller
public class LoginController extends BaseController {
	@Resource
	private UserService userService = null;

	@RequestMapping(value = "/toLogin", method = { RequestMethod.GET })
	public ModelAndView toLogin() {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/signin");
		return mv;
	}

	@RequestMapping(value = "/login", method = { RequestMethod.POST })
	@ResponseBody
	public Map login(HttpSession session, String logindata) {
		String loginname, password;
		Map<String,String> map = new HashMap<String,String>();
		String[] arr = logindata.split("_\\|\\|_");
		loginname = arr[0];
		password = arr[1];
		SysUser user = userService.getUserByLoginname(loginname);
		if (user != null && password.equalsIgnoreCase(user.getPasswd())) {
			session.setAttribute("manager_user", user);
			map.put("msg", "success");
		} else {
			map.put("msg", "fail");
		}
		return map;
	}

	@RequestMapping(value = "/logout", method = { RequestMethod.GET })
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:/toLogin");
	}

}
