package com.eagle.action;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eagle.entity.Slide;
import com.eagle.entity.Slide;
import com.eagle.service.impl.SlideService;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping("/slide")
public class SlideAction {

	@Autowired
	private SlideService ss;
	
	
	Logger logger = Logger.getLogger(SlideAction.class);
	
	
	@RequestMapping("/add")
	@ResponseBody
	public Serializable add(HttpServletRequest request,Slide slide){
		return ss.add(slide);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public boolean update(HttpServletRequest request,Slide slide){
		return ss.update(slide);
	}
	
	@RequestMapping("/del")
	@ResponseBody
	public boolean update(HttpServletRequest request,int id){
		return ss.delete(Slide.class, id);
	}
	
	@RequestMapping("/get-top")
	@ResponseBody
	public List<Slide> getTop(HttpServletRequest request){
		return ss.getTopSlide();
	}
	
	@RequestMapping("/qry")
	@ResponseBody
	public Map<String, Object> qry(HttpServletRequest request,int pageNo,int pageSize){
		return ss.qryAll(pageNo,pageSize);
	}
}
