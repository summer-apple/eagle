package com.eagle.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
@Service
public interface IBase<T> {
	public Serializable add(T t);
	public void update(T t);
	public void delete(Class<T> Clazz,int id);
	public List<T> qryAll(String tableName,String type,int pageNo,int pageSize);
	public T qryOne(Class<T> Clazz,int id);
}
