package com.eagle.service.impl;


import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.News;
import com.eagle.entity.Newstype;
import com.eagle.service.INewstypeService;
@Service
public class NewstypeService extends BaseService<Newstype>implements INewstypeService {

	@Autowired
	private BaseDao<Newstype> dao;
	@Autowired
	private BaseDao<News> ndao;
	
	
	/**
	 * 获取展示在首页的新闻类型
	 */
	@Override
	public List<Newstype> getTopType() {
		String hql = "FROM Newstype ORDER BY weight,id";
		List<Newstype> newstypelist = dao.findByPage(hql, 0, 5);
		return newstypelist;
	}

	@Override
	public Serializable add(Newstype t) {
	
		boolean flag = dao.exist(Newstype.class, "name", t.getName());
		
		if (!flag) {
			return super.add(t);
		}else {
			return 0;
		}
		
	}

	@Override
	public boolean delete(Class<Newstype> Clazz, int id) {
		boolean flag = ndao.exist(News.class, "type", id);
		
		if (flag) {
			return false;
		}else {
			return super.delete(Clazz, id);
		}
		
	}

	@Override
	public List<Newstype> qryAll() {
		String hql = "FROM Newstype ORDER BY weight,id";
		List<Newstype> newstypelist = dao.findByPage(hql, 0, 100);
		return newstypelist;
	}
	
	
	
	
	

}
