package com.eagle.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eagle.entity.Admin;
import com.eagle.service.impl.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminAction {

	@Autowired
	private AdminService as;
	
	Logger logger = Logger.getLogger(AdminAction.class);
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request,ModelAndView mv,String username,String password){
		
		
		Admin admin = as.login(username, password);
		
		if (admin!=null) {
			boolean flag = false;
			mv.addObject(flag);
			
			mv.addObject(admin);
			request.getSession().setAttribute("admin", admin);
			mv.setViewName("dashboard/slide");
		}else {
			boolean flag = true;
			mv.addObject(flag);
			mv.setViewName("dashboard/login");
		}
		
		
		return mv;
	}
	
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request,ModelAndView mv){
		request.getSession().removeAttribute("admin");
		mv.setViewName("dashboard/login");
		return mv;
	}
	
	
	
}
