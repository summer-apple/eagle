package com.eagle.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.Newstype;
import com.eagle.service.INewstypeService;
@Service
public class NewstypeService extends BaseService<Newstype>implements INewstypeService {

	@Autowired
	private BaseDao<Newstype> dao;
	
	/**
	 * 获取展示在首页的新闻类型
	 */
	@Override
	public List<Newstype> getTopType() {
		String hql = "FROM Newstype ORDER BY weight,id";
		List<Newstype> newstypelist = dao.findByPage(hql, 0, 5);
		return newstypelist;
	}

}
