package com.eagle.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eagle.entity.About;
import com.eagle.entity.Job;
import com.eagle.entity.News;
import com.eagle.entity.Topnews;
import com.eagle.service.IJobService;
import com.eagle.service.ITestService;
import com.eagle.service.impl.JobService;
import com.eagle.service.impl.NewsService;


@Controller 
@RequestMapping("/test")
public class TestAction {
	@Resource
	private ITestService ts;
	@Autowired
	private JobService js;
	@Autowired
	private NewsService ns;
	
	Logger logger = Logger.getLogger(TestAction.class);
	
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
		mv.setViewName("dashboard/get-about");
		return mv;
	}
	
	@RequestMapping("/get-job")
	@ResponseBody
	public List<Job> getJob(HttpServletRequest request,Model model){
		
		
		List<Job> joblist = js.qryAll("Job","全职",0,20);
		return joblist;
	}
	
	
	@RequestMapping("/get")
	@ResponseBody
	public List<Job> get(HttpServletRequest request,Model model){
	
		List<Job> joblist = js.qryAll("Job","全职", 1, 10);
		return joblist;
	}
	
	@RequestMapping("/get-newslist")
	@ResponseBody
	public List<Topnews> getNewsList(HttpServletRequest request,Model model){
		
		List<Topnews> newslist = ns.getTopNews();
		return newslist;
	}
	
}
