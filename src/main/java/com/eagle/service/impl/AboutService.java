package com.eagle.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.About;
import com.eagle.service.IAboutService;
@Service
public class AboutService extends BaseService<About> implements IAboutService {

	private BaseDao<About> dao;
	
	public List<About> qryAll() {
		return dao.findAll(About.class);
	}
	
	
}
