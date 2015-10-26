package com.eagle.action;

import java.util.List;
import java.util.Map;

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
import com.eagle.entity.Cooperation;
import com.eagle.entity.Job;
import com.eagle.entity.News;
import com.eagle.entity.Slide;
import com.eagle.entity.Topnews;
import com.eagle.service.IJobService;
import com.eagle.service.ITestService;
import com.eagle.service.impl.CooperationService;
import com.eagle.service.impl.JobService;
import com.eagle.service.impl.NewsService;
import com.eagle.service.impl.SlideService;


@Controller 
@RequestMapping("/test")
public class TestAction {
	@Resource
	private ITestService ts;
	@Autowired
	private JobService js;
	@Autowired
	private NewsService ns;
	@Autowired
	private SlideService ss;
	@Autowired
	private CooperationService cs;
	
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
	public Map<String, Object> getJob(HttpServletRequest request,Model model){
		
		
		Map<String, Object> map = js.qryAll("Job","全职",0,20);
		
		return map;
	}
	
	
	@RequestMapping("/get")
	@ResponseBody
	public Map<String, Object> get(HttpServletRequest request,Model model){
	
		Map<String, Object> map = js.qryAll("Job","全职", 1, 10);
		return map;
	}
	
	@RequestMapping("/get-newslist")
	@ResponseBody
	public List<Topnews> getNewsList(HttpServletRequest request,Model model){
		
		List<Topnews> newslist = ns.getTopNews();
		return newslist;
	}
	
	@RequestMapping("/get-slide")
	@ResponseBody
	public List<Slide> getSlide(HttpServletRequest request,Model model){
		
		List<Slide> newslist = ss.getTopSlide();
		return newslist;
	}
	
	@RequestMapping("/get-coo")
	@ResponseBody
	public List<Cooperation> getCoo(HttpServletRequest request,Model model){
		
		List<Cooperation> newslist = cs.getTopCooperation("名誉学员");
		return newslist;
	}
	
	@RequestMapping("/translate")
	@ResponseBody
	public void translate(HttpServletRequest request){	
		ts.translate();
	}
	
}
