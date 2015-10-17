package com.eagle.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		String hql = "FROM Cooperation WHERE type='" + type + "' ORDER BY weight ASC ,id DESC";
		return dao.findByPage(hql, 0, 20);
	}

	@Override
	public Map<String, Object> qryAll(String tableName, String type, int pageNo, int pageSize) {
		String hql = "FROM Cooperation WHERE type='" + type + "' ORDER BY weight ASC ,id DESC";

		List<Cooperation> list =  dao.findByPage(hql, pageNo, pageSize);
		long amount = dao.findCount("SELECT COUNT(*) "+hql);
		Map<String,Object> map = new HashMap<>();
		map.put("list", list);
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

}
