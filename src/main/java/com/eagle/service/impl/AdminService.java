package com.eagle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.Admin;
import com.eagle.service.IAdminService;
@Service
public class AdminService implements IAdminService {

	@Autowired
	private BaseDao<Admin> dao;
	@Autowired
	private UtilService us;
	
	@Override
	public Admin login(String username, String password) {
		Admin admin = dao.get(Admin.class, "username", username);
		
		if (admin!=null) {
			password = us.getMD5(password);
			if (admin.getPassword().equals(password)) {
				return admin;
			}else {
				return null;
			}
		}else {
			return null;
		}
		
	}

}
