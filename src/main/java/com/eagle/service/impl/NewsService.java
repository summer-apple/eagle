package com.eagle.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.action.CooperationAction;
import com.eagle.dao.BaseDao;
import com.eagle.entity.News;
import com.eagle.entity.Newstype;
import com.eagle.entity.Topnews;
import com.eagle.service.INewsService;

@Service
public class NewsService extends BaseService<News>implements INewsService {

	@Autowired
	private BaseDao<News> dao;
	@Autowired
	private NewstypeService nts;
	Logger logger = Logger.getLogger(NewsService.class);
	/**
	 * 用户新闻列表
	 */
	@Override
	public Map<String, Object> qryAll(String tableName, String type, int pageNo, int pageSize) {

		String hql = "FROM News WHERE type= '" + type + "'  ORDER BY weight ASC,id DESC";

		List<News> newslist = dao.findByPage(hql, pageNo, pageSize);

		
		long amount = dao.findCount("SELECT COUNT(*) "+hql);
		Map<String,Object> map = new HashMap<>();
		map.put("list", newslist);
		if (amount==0) {
			map.put("amount", 0);
		}else if (amount <= pageSize) {
			map.put("amount", 1);
		}else if (amount%pageSize==0) {
			map.put("amount", amount/pageSize);
		}else {
			map.put("amount", amount/pageSize+1);
		}
		return map;
	}

	/**
	 * 搜索
	 * 
	 * @param keyword
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	@Override
	public Map<String, Object> search(String keyword, int pageNo, int pageSize) {
		Map<String,Object> map = new HashMap<>();
		map.put("key", keyword);
logger.info("---------keyword before filter:"+keyword);
		keyword = UtilService.StringFilter(keyword);
	
logger.info("---------keyword after filter:"+keyword);
		keyword = "%" + keyword + "%";
		int x = 0;
		String hql = "FROM News WHERE ";

		StringBuilder sb = new StringBuilder(hql);
		List<Object> values = new ArrayList<Object>();

		sb.append(" title like ?" + String.valueOf(x));
		values.add(keyword);
		x++;

		sb.append(" or brief like ?" + String.valueOf(x));
		values.add(keyword);
		x++;

		sb.append(" or content like ?" + String.valueOf(x));
		values.add(keyword);
		x++;

		sb.append(" ORDER BY weight ASC,id DESC");

		List<News> newslist = dao.findByPage(sb.toString(), pageNo, pageSize, values);

		long amount = dao.findCount("SELECT COUNT(*) "+sb.toString(),values);
		
		map.put("list", newslist);
		if (amount==0) {
			map.put("amount", 0);
		}else if (amount <= pageSize) {
			map.put("amount", 1);
		}else if (amount%pageSize==0) {
			map.put("amount", amount/pageSize);
		}else{
			map.put("amount", amount/pageSize+1);
		}
		map.put("resultcount", amount);
		return map;
	}

	/**
	 * 管理员新闻列表
	 * 
	 * @param tableName
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	@Override
	public Map<String, Object> qryAllForAdmin(String tableName, String type, int pageNo, int pageSize) {
		String hql = "FROM News WHERE type='" + type + "' ORDER BY weight ASC , id DESC";
		List<News> newslist = dao.findByPage(hql, pageNo, pageSize);
		
		long amount = dao.findCount("SELECT COUNT(*) "+hql);
		Map<String,Object> map = new HashMap<>();
		map.put("list", newslist);
		if (amount==0) {
			map.put("amount", 0);
		}else if (amount <= pageSize) {
			map.put("amount", 1);
		}else if (amount%pageSize==0) {
			map.put("amount", amount/pageSize);
		}else {
			map.put("amount", amount/pageSize+1);
		}
		return map;
	}

	/**
	 * 获取首页新闻
	 */
	@Override
	public List<Topnews> getTopNews() {

		List<Topnews> topnewslist = new ArrayList<Topnews>();
		List<Newstype> newstypelist = nts.getTopType();

		for (int i = 0; i < newstypelist.size(); i++) {
			Topnews topnews = new Topnews();

			int typeid = newstypelist.get(i).getId();

			String hql = "FROM News WHERE type= " + typeid + "  ORDER BY weight ASC,id DESC";

			topnews.setName(newstypelist.get(i).getName());
			
			List<News> newslist = dao.findByPage(hql, 0, 10);
			
			for (int j = 0; j < newslist.size(); j++) {
				newslist.get(j).setContent(null);
				newslist.get(j).setBrief(null);
			}
			
			topnews.setTypeid(typeid);
			topnews.setNewslist(newslist);
			
			topnewslist.add(topnews);
		}

		return topnewslist;
	}

/**
 * 获取单条新闻
 */
	@Override
	public News qryOne(Class<News> Clazz, int id) {
		News news = super.qryOne(Clazz, id);
		
		//prev
		String hql1 = "FROM News WHERE type = "+news.getType()+" and weight <= "+news.getWeight()+" ORDER BY weight DESC,id ASC";
		List<News> list1 = dao.find(hql1);
		
		News prev=null;
		News next=null;
		
		for(int i=0;i<list1.size();i++){
			if (list1.get(i).getId()==id && i<list1.size()-1) {
				prev = list1.get(i+1);
			}else {
				continue;
			}
		}
		
		if (prev!=null) {
			news.setPreTitle(prev.getTitle());
			news.setPreUrl("index/news.jsp?id="+prev.getId());
		}
		
		
		//next
		String hql2 = "FROM News WHERE type = "+news.getType()+" and weight >= "+news.getWeight()+" ORDER BY weight ASC,id DESC";
		List<News> list2 = dao.find(hql2);
		
		for(int i=0;i<list2.size();i++){
			if (list2.get(i).getId()==id && i<list2.size()-1) {
				next = list2.get(i+1);
			}else {
				continue;
			}
		}
		
		if (next!=null) {
			news.setNextTitle(next.getTitle());
			news.setNextUrl("index/news.jsp?id="+next.getId());
		}
		
		return news;
				
				
	}
	
	

}
