package com.coderhome.controller.manager;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.coderhome.controller.BaseController;
import com.coderhome.model.SysUser;
import com.coderhome.service.UserService;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController extends BaseController {
	@Resource
	private UserService userService = null;

	@RequestMapping(value = "/dashboard", method = { RequestMethod.GET })
	public ModelAndView dashboard() {
		ModelAndView mv = this.getModelAndView();
		HttpSession session = this.getSession();
		SysUser user = (SysUser) session.getAttribute("manager_user");
		mv.addObject("nickname", user.getNickname());
		mv.setViewName("system/dashboard");
		return mv;
	}

	@RequestMapping(value = "/resetPasswd", method = { RequestMethod.POST })
	@ResponseBody
	public Map resetPasswd(HttpSession session ,String oldPasswd ,String newPasswd ,String confirmPasswd) {
		Map<String, String> map = new HashMap<String, String>();
		String msg = "";
		if (StringUtils.isEmpty(oldPasswd) || StringUtils.isEmpty(newPasswd) ||StringUtils.isEmpty(confirmPasswd)) {
			msg = "error";
		} else if(!newPasswd.equals(confirmPasswd)) {
			msg = "error";
		} else{
			SysUser user = (SysUser)session.getAttribute("manager_user");
			user = userService.getUserById(user.getId());
			if(!oldPasswd.equals(user.getPasswd())){
				msg = "wrong";
			}else{
				user.setPasswd(newPasswd);
				int result = userService.updateUserPasswd(user);
				if(result == 1){
					msg = "success";
				}else{
					msg = "fail";
				}
			}
		}
		map.put("msg", msg);
		return map;
	}

}
