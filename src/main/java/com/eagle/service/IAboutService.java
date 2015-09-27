package com.eagle.service;

import java.util.List;

import com.eagle.entity.About;

public interface IAboutService extends IBase<About> {
	public List<About> qryAll();
}
