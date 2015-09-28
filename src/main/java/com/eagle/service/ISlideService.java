package com.eagle.service;

import java.util.List;
import java.util.Map;

import com.eagle.entity.Slide;

public interface ISlideService extends IBase<Slide> {
	public List<Slide> getTopSlide();
	public Map<String, Object> qryAll(int pageNo, int pageSize);
}
