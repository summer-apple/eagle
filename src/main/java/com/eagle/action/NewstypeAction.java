package com.eagle.action;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eagle.entity.News;
import com.eagle.entity.Newstype;
import com.eagle.service.impl.NewstypeService;

@Controller
@RequestMapping("/newstype")
public class NewstypeAction {

	
	@Autowired
	private NewstypeService nts;
	
	Logger logger = Logger.getLogger(NewstypeAction.class);
	
	@RequestMapping("/add")
	@ResponseBody
	public Serializable add(HttpServletRequest request,Newstype newstype){
		return nts.add(newstype);
	}
	
	
	@RequestMapping("/del")
	@ResponseBody
	public boolean del(HttpServletRequest request,int id){
		return nts.delete(Newstype.class, id);
	}
	
	
	@RequestMapping("/update")
	@ResponseBody
	public boolean update(HttpServletRequest request,Newstype newstype){
		return nts.update(newstype);
	}
	
	@RequestMapping("/get-top-type")
	@ResponseBody
	public List<Newstype> add(HttpServletRequest request){
		return nts.getTopType();
	}
	
	
	
}
