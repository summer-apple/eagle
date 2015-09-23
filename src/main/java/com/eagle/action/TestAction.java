package com.eagle.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eagle.entity.About;
import com.eagle.entity.Job;
import com.eagle.service.IJobService;
import com.eagle.service.ITestService;
import com.eagle.service.impl.JobService;


@Controller 
@RequestMapping("/test")
public class TestAction {
	@Resource
	private ITestService ts;
	@Autowired
	private JobService js;
	
	
	@RequestMapping("/get-abouta")
	@ResponseBody
	public About toIndex(HttpServletRequest request,Model model,int id){
		
		About about = ts.getAbout(id);
		return about;
	}
	
	
	@RequestMapping("/get-about")
	public ModelAndView fuck(HttpServletRequest request,int id){
		ModelAndView mv = new ModelAndView();
		About about = ts.getAbout(id);
		mv.addObject(about);
		mv.setViewName("get-about");
		return mv;
	}
	
	@RequestMapping("/get-job")
	@ResponseBody
	public List<Job> getJob(HttpServletRequest request,Model model){
		
		List<Job> joblist = js.qryAll(Job.class);
		return joblist;
	}
	
	
	@RequestMapping("/get")
	@ResponseBody
	public Job get(HttpServletRequest request,Model model){
		
		Job job = js.get(1);
		return job;
	}
	
}
