package com.eagle.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eagle.entity.About;
import com.eagle.service.impl.AboutService;

@Controller
@RequestMapping("/about")
public class AboutAction {
	@Autowired
	private AboutService as;
	
	Logger logger = Logger.getLogger(AboutAction.class);
	
	
	@RequestMapping("/update")
	@ResponseBody
	public boolean update(HttpServletRequest request,About about){
		return as.update(about);
	}
	
	
	@RequestMapping("/qry")
	@ResponseBody
	public List<About> qry(HttpServletRequest request){
		return as.qryAll();
	}
	
	
	@RequestMapping("/get-one")
	@ResponseBody
	public About qry(HttpServletRequest request,int id){
		return as.qryOne(About.class, id);
	}

}
