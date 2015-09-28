package com.eagle.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public Map<String, Object> qryAll(int pageNo, int pageSize) {
		
		String hql = "FROM Slide ORDER BY weight ASC,id DESC";
		
		List<Slide> list = dao.findByPage(hql, pageNo, pageSize);
		
		long amount = dao.findCount("SELECT COUNT(*) "+hql);
		Map<String,Object> map = new HashMap<>();
		map.put("list", list);
		if (amount==0) {
			map.put("amount", 0);
		}else if (amount <= pageSize) {
			map.put("amount", 1);
		}else {
			map.put("amount", amount/pageSize+1);
		}
		return map;
	}
	
	
	

}
