package com.eagle.action;

import java.io.Serializable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eagle.entity.Job;
import com.eagle.service.impl.JobService;

@Controller
@RequestMapping("/job")
public class JobAction {
	@Autowired
	private JobService js;
	
	Logger logger = Logger.getLogger(Job.class);
	
	@RequestMapping("/add")
	@ResponseBody
	public Serializable add(HttpServletRequest request,Job job){
		return js.add(job);
	}
	
	
	
	
	@RequestMapping("/update")
	@ResponseBody
	public boolean update(HttpServletRequest request,Job job){
		return js.update(job);
	}
	
	@RequestMapping("/qry")
	@ResponseBody
	public Map<String, Object> qry(HttpServletRequest request,String type,int pageNo,int pageSize){
		return js.qryAll("Job", type, pageNo, pageSize);
	}
	
	
	@RequestMapping("/del")
	@ResponseBody
	public boolean update(HttpServletRequest request,int id){
		return js.delete(Job.class, id);
	}
	
	@RequestMapping("/get-one")
	@ResponseBody
	public Job getOne(HttpServletRequest request,int id){
		return js.qryOne(Job.class, id);
	}
	
}
