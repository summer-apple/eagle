package com.eagle.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.Slide;
import com.eagle.service.ISlideService;

@Service
public class SlideService extends BaseService<Slide>implements ISlideService {

	
	@Autowired
	private BaseDao<Slide> dao;
	
	public List<Slide> getTopSlide() {
		String hql = "FROM Slide ORDER BY weight , id DESC";
		return dao.findByPage(hql, 0, 5);
	}

}
