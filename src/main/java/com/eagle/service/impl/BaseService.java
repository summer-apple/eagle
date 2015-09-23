package com.eagle.service.impl;

import java.io.Serializable;
import java.util.List;

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
	public void update(T t) {
		dao.update(t);
	}

	@Override
	public void delete(Class<T> Clazz, int id) {
		dao.delete(Clazz,id);
	}

	@Override
	public List<T> qryAll(Class<T> Clazz) {
		return dao.findAll(Clazz);
	}

	@Override
	public T qryOne(Class<T> Clazz,int id) {
		return dao.get(Clazz, id);
	}



	

}
