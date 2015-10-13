package com.eagle.service.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.service.IBase;

@Service
public class BaseService<T> implements IBase<T> {

	@Autowired
	private BaseDao<T> dao;

	@Override
	public Serializable add(T t) {
		return dao.save(t);
	}

	@Override
	public boolean update(T t) {

		try {
			dao.update(t);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public boolean delete(Class<T> Clazz, int id) {
		if (dao.exist(Clazz, id)) {
			dao.delete(Clazz, id);
			return true;
		} else {
			return false;
		}

	}

	@Override
	public Map<String, Object> qryAll(String tableName, String type, int pageNo, int pageSize) {
		String hql = "FROM " + tableName + " WHERE type = '" + type + "' ORDER BY id DESC";
		List<T> list = dao.findByPage(hql, pageNo, pageSize);
		long amount = dao.findCount("SELECT COUNT(*) " + hql);
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		if (amount == 0) {
			map.put("amount", 0);
		} else if (amount <= pageSize) {
			map.put("amount", 1);
		}else if (amount%pageSize==0) {
			map.put("amount", amount/pageSize);
		} else {
			map.put("amount", amount / pageSize + 1);
		}
		return map;
	}

	@Override
	public T qryOne(Class<T> Clazz, int id) {
		return dao.get(Clazz, id);
	}

}
