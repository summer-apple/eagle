package com.eagle.service;

import java.util.List;

import com.eagle.entity.Newstype;

public interface INewstypeService extends IBase<Newstype> {

	public List<Newstype> getTopType();
	
	public List<Newstype> qryAll();
}
