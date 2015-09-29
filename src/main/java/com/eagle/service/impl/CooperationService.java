	 package com.eagle.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.Cooperation;
import com.eagle.service.ICooperationService;
@Service
public class CooperationService extends BaseService<Cooperation>implements ICooperationService {

	@Autowired
	private BaseDao<Cooperation> dao;
	
	@Override
	public List<Cooperation> getTopCooperation(String type) {
		String hql = "FROM Cooperation WHERE type='"+type+"' ORDER BY weight ASC, id DESC";
		return dao.findByPage(hql, 0, 20);
	}

}
