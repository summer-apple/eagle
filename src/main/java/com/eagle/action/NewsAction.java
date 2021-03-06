package com.eagle.action;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eagle.entity.News;
import com.eagle.entity.Topnews;
import com.eagle.service.impl.NewsService;

@Controller
@RequestMapping("/news")
public class NewsAction {
	@Autowired
	private NewsService ns;

	Logger logger = Logger.getLogger(NewsAction.class);

	@RequestMapping("/add")
	@ResponseBody
	public Serializable add(HttpServletRequest request, News news) {
		news.setTime(new Date());
		if (news.getWeight()==null) {
			news.setWeight(11);
		}
		return ns.add(news);
	}

	@RequestMapping("/update")
	@ResponseBody
	public boolean update(HttpServletRequest request, News news) {
		if (news.getWeight()==null) {
			news.setWeight(11);
		}
		return ns.update(news);
	}

	@RequestMapping("/qry")
	@ResponseBody
	public Map<String, Object> qry(HttpServletRequest request, String type, int pageNo, int pageSize) {
		return ns.qryAll("News", type, pageNo, pageSize);
	}
	
	@RequestMapping("/qry-for-admin")
	@ResponseBody
	public Map<String, Object> qryForAdmin(HttpServletRequest request, String type, int pageNo, int pageSize) {
		return ns.qryAllForAdmin("News", type, pageNo, pageSize);
	}

	@RequestMapping("/del")
	@ResponseBody
	public boolean update(HttpServletRequest request, int id) {
		return ns.delete(News.class, id);
	}

	@RequestMapping("/get-one")
	@ResponseBody
	public News getOne(HttpServletRequest request, int id) {
		return ns.qryOne(News.class, id);
	}
	
	@RequestMapping("/get-top")
	@ResponseBody
	public List<Topnews> getTop(HttpServletRequest request) {
		return ns.getTopNews();
	}

	@RequestMapping("/search")
	@ResponseBody
	public Map<String,Object> search(HttpServletRequest request,String key,int pageNo, int pageSize) {
		return ns.search(key, pageNo, pageSize);
	}
	
	@RequestMapping("/search-mask")
	public ModelAndView searchMask(ModelAndView mv ,HttpServletRequest request,String key) {
		mv.addObject("key",key);
		mv.setViewName("index/search");
		return mv;
	}
}
