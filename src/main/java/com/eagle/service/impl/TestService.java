package com.eagle.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.About;
import com.eagle.service.ITestService;
@Service
public class TestService implements ITestService {
	@Autowired
	private BaseDao<About> dao;

	@Override
	public About getAbout(int id) {
		return dao.get(About.class, id);
	}
	
	
}
