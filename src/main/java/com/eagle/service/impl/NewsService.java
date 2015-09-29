package com.eagle.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	/**
	 * 用户新闻列表
	 */
	@Override
	public Map<String, Object> qryAll(String tableName, String type, int pageNo, int pageSize) {

		String hql = "FROM News WHERE type= '" + type + "' and status>0 ORDER BY status DESC , id DESC";

		List<News> newslist = dao.findByPage(hql, pageNo, pageSize);

		for (int i = 0; i < newslist.size(); i++) {

			News n = newslist.get(i);

			if (newslist.size() == 1) {

				n.setPreTitle("已经是第一篇");
				n.setPreUrl("news/get-news?id=" + n.getId());
				n.setNextTitle("已经是最后一篇");
				n.setNextUrl("news/get-news?id=" + n.getId());

			} else if (i == 0) {// 第一条

				News next = newslist.get(i + 1);
				n.setNextTitle("【" + next.getTypeValue() + "】" + next.getTitle());
				n.setNextUrl("news/get-news?id=" + next.getId());

				n.setPreTitle("已经是第一篇");
				n.setPreUrl("news/get-news?id=" + n.getId());

			} else if (i == newslist.size() - 1) {// 最后一条

				News pre = newslist.get(i - 1);
				n.setPreTitle("【" + pre.getTypeValue() + "】" + pre.getTitle());
				n.setPreUrl("news/get-news?id=" + pre.getId());

				n.setNextTitle("已经是最后一篇");
				n.setNextUrl("news/get-news?id=" + n.getId());

			} else {// 中间

				News pre = newslist.get(i - 1);
				News next = newslist.get(i + 1);
				n.setNextTitle("【" + next.getTypeValue() + "】" + next.getTitle());
				n.setNextUrl("news/get-news?id=" + next.getId());
				n.setPreTitle("【" + pre.getTypeValue() + "】" + pre.getTitle());
				n.setPreUrl("news/get-news?id=" + pre.getId());

			}
		}

		
		long amount = dao.findCount("SELECT COUNT(*) "+hql);
		Map<String,Object> map = new HashMap<>();
		map.put("list", newslist);
		if (amount==0) {
			map.put("amount", 0);
		}else if (amount <= pageSize) {
			map.put("amount", 1);
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

		keyword = "%" + keyword + "%";
		int x = 0;
		String hql = "FROM News WHERE 1=1 ";

		StringBuilder sb = new StringBuilder(hql);
		List<Object> values = new ArrayList<Object>();

		sb.append(" and title like ?" + String.valueOf(x));
		values.add(keyword);
		x++;

		sb.append(" or title like ?" + String.valueOf(x));
		values.add(keyword);
		x++;

		sb.append(" or title like ?" + String.valueOf(x));
		values.add(keyword);
		x++;

		sb.append(" and status>0 ORDER BY status DESC , id DESC");

		List<News> newslist = dao.findByPage(sb.toString(), pageNo, pageSize, values);

		for (int i = 0; i < newslist.size(); i++) {

			News n = newslist.get(i);

			if (i == 0) {// 第一条

				News next = newslist.get(i + 1);
				n.setNextTitle("【" + next.getTypeValue() + "】" + next.getTitle());
				n.setNextUrl("news/get-news?id=" + next.getId());

				n.setPreTitle("已经是第一篇");
				n.setPreUrl("news/get-news?id=" + n.getId());

			} else if (i == newslist.size() - 1) {// 最后一条

				News pre = newslist.get(i - 1);
				n.setPreTitle("【" + pre.getTypeValue() + "】" + pre.getTitle());
				n.setPreUrl("news/get-news?id=" + pre.getId());

				n.setNextTitle("已经是最后一篇");
				n.setNextUrl("news/get-news?id=" + n.getId());

			} else {// 中间

				News pre = newslist.get(i - 1);
				News next = newslist.get(i + 1);
				n.setNextTitle("【" + next.getTypeValue() + "】" + next.getTitle());
				n.setNextUrl("news/get-news?id=" + next.getId());
				n.setPreTitle("【" + pre.getTypeValue() + "】" + pre.getTitle());
				n.setPreUrl("news/get-news?id=" + pre.getId());

			}
		}

		long amount = dao.findCount("SELECT COUNT(*) "+hql);
		Map<String,Object> map = new HashMap<>();
		map.put("list", newslist);
		if (amount==0) {
			map.put("amount", 0);
		}else if (amount <= pageSize) {
			map.put("amount", 1);
		}else {
			map.put("amount", amount/pageSize+1);
		}
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

			String hql = "FROM News WHERE type= " + typeid + " and status>0 ORDER BY status DESC , id DESC";

			topnews.setTypeid(typeid);
			topnews.setName(newstypelist.get(i).getName());
			topnews.setNewslist(dao.findByPage(hql, 0, 10));
			
			topnewslist.add(topnews);
		}

		return topnewslist;
	}

}
