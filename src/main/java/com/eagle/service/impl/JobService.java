package com.eagle.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.Job;
import com.eagle.service.IJobService;
@Service
public class JobService extends BaseService<Job> implements IJobService {
	@Autowired
	private  BaseDao<Job> dao;
	public Job get(int id) {
		return dao.get(Job.class, id);
	}
	
}
